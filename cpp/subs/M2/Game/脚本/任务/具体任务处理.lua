
定义函数 做_初始任务()
    等待可移动(60 * 3)

    局部变量 武器 = 查找最近的掉落物品()
    如果 武器 ~= 空 那么
        打开目标(武器)
    结束

    局部变量 怪物 = 查找最近的目标("垂死的流放者")
    如果 怪物 ~= 空 那么
        打开目标("垂死的流放者")
        关闭所有面板()
    结束
    延迟(3)
    如果 杀到杀死目标("西拉克") ~= 真 那么
        LogE("初始任务杀到杀死西拉克错误")
        返回 假
    结束
    返回 真
结束  

----------------------炙热盐沼-----------------------
定义函数 做_探索炙热盐沼(任务)
    如果 杀到指定地图(任务.地图名) ~= 真 那么
        LogE("做_探索炙热盐沼之杀到任务地图失败")
        返回 假
    结束
    如果 获得物品数量("雕纹: 菊纹") > 0 且 获得物品数量("雕纹: 孔螺") > 0 且 获得物品数量("雕纹: 长春花") > 0 那么
        杀到打开目标("刻着雕纹的奇怪墙壁")
    否则    
        杀到打开目标("恐喙鸟巢")
        拾取最近任务物品()
    结束
结束

------------------海妖之歌------------------
定义函数 做_击败海妖()
    如果 杀到指定地图("怨忿之窟深处") ~= 真 那么
        LogE("做_击败海妖之杀到目标地图失败")
        返回 假
    结束 
    如果 杀到房间("莫薇儿的巢穴") ~= 真 那么
        LogE("做_击败海妖之杀到房间失败：" .. "莫薇儿的巢穴")
    结束
    杀到目标("南部森林")
    延迟(2)
    局部变量 怪物 = 查找最近怪物("海妖莫薇儿")
    如果 怪物 ~= 空 那么
        如果 杀到杀死目标("海妖莫薇儿") ~= 真 那么
             LogE("做_击败海妖之杀死目标失败" .. "海妖莫薇儿")
        结束
        延迟(3)
    结束
    怪物  = 查找最近怪物("魔语之灵莫薇儿")
    如果 怪物 ~= 空 那么
        如果 杀到杀死目标("魔语之灵莫薇儿") ~= 真 那么
             LogE("做_击败海妖之杀死目标失败" .. "魔语之灵莫薇儿")
        结束
    结束
    返回 真
结束

------------------------迷失的爱情-----------------
定义函数 做_击败守卫并挽救女孩(任务)
    如果 杀到指定地图(任务.地图名) ~= 真  那么
        LogE("做_击败守卫并挽救女孩之 通用任务_杀到打开任务地图 失败")
        返回 假
    结束
    如果 杀到目标("卡尔莉萨") ~= 真  那么
        LogE("做_击败守卫并挽救女孩之 通用任务_杀到目标(卡尔莉萨) 失败")
        返回 假
    结束
    局部变量 NPC = 查找最近的目标("卡尔莉萨")
    如果 NPC == 空 那么 
        LogE("做_击败守卫并挽救女孩之没有找到npc 卡尔莉萨")
        返回 假
    结束  
    如果 NPC:可访问() ~= 真 那么
        如果 杀到杀死目标("军队队长") ~= 真 那么
             LogE("做_击败守卫并挽救女孩之杀死军队队长失败")
             返回 假
        结束
    结束
    如果 杀到打开目标("卡尔莉萨") ~= 真 那么
        LogE("通用任务_与卡尔莉萨交谈之对话NPC 失败")
        返回 假
    结束          
    如果 对话NPC("继续") ~= 真 那么
        LogE("通用任务_与卡尔莉萨交谈之对话NPC 失败")
        返回 假
    结束
    返回 真
结束

---------------------永恒梦魇-------------
定义函数 做_找到进入黑灵核心的路(任务)
    如果 杀到指定地图(任务.地图名) ~= 真  那么
        LogE("做_找到进入黑灵核心的路之 通用任务_杀到打开任务地图 失败")
        返回 假
    结束
    局部变量 目标名字 = 空
    如果 获得物品数量("玛拉凯的心") <= 0  那么 
        目标名字 = "玛拉凯的心"
    否则如果 获得物品数量("玛拉凯的肺") <=  0 那么
        目标名字 = "玛拉凯的肺"
    否则如果 获得物品数量("玛拉凯的脏器") <=  0 那么
        目标名字 = "玛拉凯的心脏"
    结束
    如果 目标名字 ~= 空 那么 
        如果 杀到打开目标(目标名字) ~= 真 那么
            LogE("做_找到进入黑灵核心的路之打开目标失败：" .. 目标名字)
            返回 假
        结束
    结束
    如果 杀到打开目标("派蒂") ~= 真  那么
        LogE("做_找到进入黑灵核心的路之 通用任务_杀到目标(派蒂) 失败")
        返回 假
    结束
    如果 对话NPC("派蒂","再会") ~= 真 那么
        LogE("做_找到进入黑灵核心的路之对话NPC 失败")
        返回 假
    结束
    返回 真
结束

定义函数 做_击败玛拉凯(任务)
    如果 杀到指定地图(任务.地图名) ~= 真  那么
        LogE("做_击败玛拉凯之 通用任务_杀到打开任务地图 失败")
        返回 假
    结束
    如果 杀到房间("黑灵之核") ~= 真 那么
        LogE("做_击败玛拉凯之杀到房间失败:黑灵之核")
        返回 假
    结束
    如果 杀到房间("黑灵之核") ~= 真 那么
        LogE("做_击败玛拉凯之杀到房间失败:黑灵之核")
        返回 假
    结束
    局部变量 目标 = 查找最近的目标("黑灵之心")
    如果 目标 == 空 那么
        如果 杀到杀死目标("梦魇玛拉凯") ~= 真 那么
            LogE("做_击败玛拉凯之杀到杀死梦魇玛拉凯错误")
            返回 假
        结束
    否则
        如果 杀到打开目标("黑灵之心") ~= 真 那么
            LogE("做_击败玛拉凯之对打开目标失败:黑灵之心")
            返回 假
        结束 
    结束 
    如果 杀到杀死目标("梦魇玛拉凯") ~= 真 那么
        LogE("做_击败玛拉凯之杀到杀死梦魇玛拉凯错误")
        返回 假
    结束
结束


------------------------------------------------------------