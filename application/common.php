<?php

    /** 此文件放置一些公用的方法 **/
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;
    use think\facade\Config;

    # 1.发送邮件
    function sendEmail($to, $title, $content)
    {
        # Instantiation and passing `true` enables exceptions
        $mail = new PHPMailer(true);

        try {
            # 邮件服务端配置
            $mail->SMTPDebug = 0;                                           # 调试信息, 2=详细 | 1=简单 | 0=不显示错误信息
            $mail->CharSet = 'utf-8';
            $mail->isSMTP();                                                # 使用smtp协议发送邮件
            $mail->Host = Config::get('emailGeneral.Host');           # 邮箱服务器 smtp类型
            $mail->SMTPAuth = true;                                         # Enable SMTP authentication
            $mail->Username = Config::get('emailGeneral.Username');   # SMTP username
            $mail->Password = Config::get('emailGeneral.Password');   # SMTP password
            $mail->SMTPSecure = 'ssl';                                      # 邮箱发送协议 ssl和tls两种
            $mail->Port = 465;                                              # TCP port to connect to
            # 收件人的相关配置
            $mail->setFrom(Config::get('emailGeneral.Username'), '超级管理员组');
            $mail->addAddress($to);
            # 邮件内容的相关设置
            $mail->isHTML(true);                                        # 以HTML格式进行发送
            $mail->Subject = $title;
            $mail->Body    = $content;
            # 发送成功会返回发送结果
            return $mail->send();

        } catch (Exception $e) {
            # 如邮件发送有误则报出错误详情
            exception($mail->ErrorInfo);
        }
    }


