<?php

namespace app\admin\controller;


class Admin extends Base
{
    # 管理员列表
    public function list()
    {
        $adminList = model('Admin')->order('id', 'DESC')->paginate(10);
        $viewData = [
            'adminList' => $adminList
        ];
        $this->assign($viewData);
        return view();
    }

    # 添加管理员
    public function add() {
        return view();
    }

    # 编辑管理员信息
    public function edit()
    {
        return view();
    }

}
