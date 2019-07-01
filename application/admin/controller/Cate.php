<?php

namespace app\admin\controller;

class Cate extends Base
{
    # 分类列表
    public function list() {
        $cateList = model('Cate')->where(['status' => 1])->order('id')->paginate(10);
        $viewData = [
            'cateList' => $cateList
        ];
        $this->assign($viewData);
        return view();
    }

    # 添加分类
    public function add() {
        return view();
    }
}
