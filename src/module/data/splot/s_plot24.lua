local Plot = {}

-- 战斗准备设置
Plot.battlePrepare = {
    battleName   = "柳城平定战",
    maxRounds    = 25,
    mapId        = "24.tmx",
    weatherStart = {"晴", "晴", "雨", "阴", "雪"},
    weatherType  = {"雨"},
    levelAdd     = -2,
    playerGeneralList = {
        {uid = "曹操"},
        {uid = "夏侯惇"},
    },
    enemyGeneralList = {
        {uid = "袁尚", aiType = "坚守原地", isKeyGeneral = true, levelAdd = 2},
        {uid = "袁熙", aiType = "被动出击", levelAdd = 2},
        {uid = "炮兵1", aiType = "被动出击"},
        {uid = "步兵1", aiType = "被动出击"},
        {uid = "步兵2", aiType = "被动出击"},
        {uid = "步兵3", aiType = "被动出击"},
        {uid = "步兵4", aiType = "被动出击"},
        {uid = "步兵5", aiType = "被动出击"},
        {uid = "弓兵1", aiType = "被动出击"},
        {uid = "弓兵2", aiType = "被动出击"},
        {uid = "武术家1", aiType = "主动出击", isHide = true},
        {uid = "武术家2", aiType = "主动出击", isHide = true},
        {uid = "驯虎师1", aiType = "主动出击", isHide = true},
        {uid = "驯虎师2", aiType = "主动出击", isHide = true},
        {uid = "驯虎师3", aiType = "主动出击", isHide = true},
        {uid = "驯虎师4", aiType = "主动出击", isHide = true},
        {uid = "贼兵1", aiType = "主动出击", isHide = true},
        {uid = "贼兵2", aiType = "主动出击", isHide = true},
        {uid = "贼兵3", aiType = "主动出击", isHide = true},
        {uid = "贼兵4", aiType = "主动出击", isHide = true},
        {uid = "贼兵5", aiType = "主动出击", isHide = true},
        {uid = "贼兵6", aiType = "主动出击", isHide = true},
        {uid = "贼兵7", aiType = "主动出击", isHide = true},
        {uid = "贼兵8", aiType = "主动出击", isHide = true},
        {uid = "贼兵9", aiType = "主动出击", isHide = true},
        {uid = "贼兵10", aiType = "主动出击", isHide = true},
        {uid = "贼兵11", aiType = "主动出击", isHide = true},
        {uid = "贼兵12", aiType = "主动出击", isHide = true},
        {uid = "武术家3", aiType = "主动出击", isHide = true},
        {uid = "武术家4", aiType = "主动出击", isHide = true},
        {uid = "武术家5", aiType = "主动出击", isHide = true},
        {uid = "武术家6", aiType = "主动出击", isHide = true},
        {uid = "弓兵3", aiType = "被动出击", isHide = true},
        {uid = "弓兵4", aiType = "被动出击", isHide = true},
    },
}

Plot.battleStartPlot = {
    {cmd = "PlayMusic", args = {"Track4"}},
    {
        {cmd = "Dialog", args = {"袁尚", "想不到追到这里来了……"}},
        {cmd = "Dialog", args = {"袁尚", "敌人还是不肯死心……"}},
        {cmd = "Dialog", args = {"袁熙", "这是打败曹操的好机会，投入我们的秘密部队吧。"}},
        {cmd = "Dialog", args = {"袁尚", "全看袁熙兄长了。"}},
        {cmd = "Dialog", args = {"曹操", "是边境地带，行军真是辛苦。"}},
        {cmd = "FaceToFace", args = {"郭嘉", "曹操"}},
        {cmd = "Dialog", args = {"郭嘉", "主公，袁尚就在眼前，一鼓作气消灭他们吧。"}},
        {cmd = "GeneralAction", args = {"郭嘉", "deepBreath"}},
        {cmd = "Dialog", args = {"郭嘉", "咳、咳、咳……"}},
        {cmd = "GeneralStatusChange", args = {"郭嘉", "无", "无", "无", 50, 0}},
        {cmd = "RoleMove", args = {"张辽", "up", 6, 17}},
        {cmd = "Dialog", args = {"张辽", "郭嘉先生，你怎么了！"}},
        {cmd = "Dialog", args = {"郭嘉", "啊…不用担心，出发吧……。"}},
        {cmd = "Dialog", args = {"张辽", "那怎么行！"}},
        {cmd = "Dialog", args = {"张辽", "这样下去会送命的！"}},
        {cmd = "FaceToFace", args = {"张辽", "曹操"}},
        {cmd = "Dialog", args = {"张辽", "主公，停止远征返回许都吧！"}},
        {cmd = "Dialog", args = {"张辽", "士兵们日夜兼程赶路也累了，而且这样下去郭嘉先生……！"}},
        {cmd = "Dialog", args = {"郭嘉", "这是次千载难逢的好机会…"}},
        {cmd = "Dialog", args = {"郭嘉", "绝不能错过！"}},
        {cmd = "Dialog", args = {"郭嘉", "为了主公，我死不足惜，咳、咳……"}},
        {cmd = "Dialog", args = {"曹操", "（这次远征的确是个好机会…"}},
        {cmd = "Dialog", args = {"曹操", "可是这样下去，郭嘉……）"}},
    },
    {cmd = "ChoiceDialog", args = {"曹操", {"继续行军", "停止远征"}}},
    {
        {cmd = "Dialog", args = {"曹操", "对不起，郭嘉……"}},
        {cmd = "Dialog", args = {"曹操", "你的性命就交给曹某吧！"}},
        {cmd = "GeneralAction", args = {"张辽", "dizzy"}},
        {cmd = "FaceToFace", args = {"张辽", "曹操"}},
        {cmd = "Dialog", args = {"张辽", "什、什么！"}},
        {cmd = "Dialog", args = {"张辽", "主公果真决意如此！"}},
        {cmd = "Dialog", args = {"郭嘉", "文远将军。不必费心！"}},
        {cmd = "Dialog", args = {"郭嘉", "如果奉孝累及大家，将是毕生的耻辱。唔、唔……"}},
        {cmd = "Dialog", args = {"曹操", "嗯……，马上远征消灭袁尚，事毕之后，郭嘉也能好生休养了。"}},
        {cmd = "GeneralAction", args = {"曹操", "prepareAttack"}},
        {cmd = "Dialog", args = {"曹操", "全军突击！"}},
        {cmd = "Dialog", args = {"曹操", "一鼓作气打垮敌军！"}},
        {cmd = "GeneralAction", args = {"曹操", "stand"}},
        {cmd = "BattleWinCondition", args = {"胜利条件\n一、击退袁尚。\n\n失败条件\n一、曹操死亡。\n二、回合数超过25。"}},
        {cmd = "ShowBattleWinCondition", args = {"击退袁尚！"}},
        {cmd = "HighlightGeneral", args = {"袁尚"}},
    },
    {
        {cmd = "Dialog", args = {"曹操", "…………。"}},
        {cmd = "Dialog", args = {"曹操", "中止这次远征吧！"}},
        {cmd = "Dialog", args = {"曹操", "撤退！"}},
        {cmd = "Dialog", args = {"郭嘉", "主、主公，不要管我…"}},
        {cmd = "Dialog", args = {"郭嘉", "咳、咳、咳……"}},
        {cmd = "Dialog", args = {"曹操", "以后还会有机会讨伐袁尚……"}},
        {cmd = "Dialog", args = {"曹操", "不过如果你有个三长两短，这损失就无法弥补了……"}},
        {cmd = "Dialog", args = {"张辽", "主公明鉴……！"}},
        {cmd = "FaceToFace", args = {"张辽", "郭嘉"}},
        {cmd = "Dialog", args = {"张辽", "郭嘉先生，这也是主公一番好意！"}},
        {cmd = "Dialog", args = {"郭嘉", "谢、谢主公……"}},
        {cmd = "Dialog", args = {"郭嘉", "唔、唔、唔……"}},
        {cmd = "Dialog", args = {"曹操", "既然如此，我们就撤兵吧！"}},
        {cmd = "Dialog", args = {"曹操", "敌人一定会派兵追击的，要设法摆脱他们才行……"}},
        {cmd = "GeneralChangeDirection", args = {"曹操", "right"}},
        {cmd = "GeneralChangeDirection", args = {"郭嘉", "right"}},
        {cmd = "GeneralChangeDirection", args = {"张辽", "right"}},
        {cmd = "RoleMove", args = {"曹操", "right", 8, 18}},
        {cmd = "RoleMove", args = {"郭嘉", "right", 7, 17}},
        {cmd = "RoleMove", args = {"张辽", "right", 9, 19}},
        {cmd = "PlayerGeneralMove", args = {5, 10, 18, "right"}},
        {cmd = "PlayerGeneralMove", args = {3, 9, 17, "right"}},
        {cmd = "PlayerGeneralMove", args = {6, 7, 19, "right"}},
        {cmd = "PlayerGeneralMove", args = {4, 8, 16, "right"}},
        {cmd = "BattleWinCondition", args = {"胜利条件\n一、郭嘉到达东南端。\n\n失败条件\n一、曹操死亡。\n二、回合数超过25。"}},
        {cmd = "ShowBattleWinCondition", args = {"郭嘉逃走！"}},
        {cmd = "HighlightGeneral", args = {"郭嘉"}},
        {cmd = "HighlightRange", args = {23, 21, 24, 24, false}},
        {cmd = "Dialog", args = {"袁熙", "敌人的行动有点奇怪，好像正在展开撤军。"}},
        {cmd = "Dialog", args = {"袁尚", "都已经到这了，为什么要撤军？"}},
        {cmd = "Dialog", args = {"袁尚", "曹军到底发生什么事了？"}},
        {cmd = "Dialog", args = {"袁熙", "不管怎么说，这是个好机会。"}},
        {cmd = "Dialog", args = {"袁尚", "对、这么一来………"}},
        {cmd = "Dialog", args = {"袁尚", "绕到他们背后的伏兵，就可以展开行动了！"}},
        {cmd = "Dialog", args = {"袁尚", "传令伏兵，切断敌人退路！"}},
        {cmd = "GeneralAction", args = {"袁熙", "attack"}},
        {cmd = "Dialog", args = {"袁熙", "伏兵出击！"}},
        {cmd = "Dialog", args = {"袁熙", "切断曹操的退路！"}},
        {cmd = "GeneralAction", args = {"袁熙", "stand"}},
        {cmd = "GeneralShow", args = {"贼兵5"}},
        {cmd = "GeneralShow", args = {"贼兵6"}},
        {cmd = "GeneralShow", args = {"贼兵7"}},
        {cmd = "GeneralShow", args = {"贼兵8"}},
        {cmd = "GeneralShow", args = {"贼兵9"}},
        {cmd = "GeneralShow", args = {"贼兵10"}},
        {cmd = "GeneralShow", args = {"贼兵11"}},
        {cmd = "GeneralShow", args = {"贼兵12"}},
        {cmd = "GeneralShow", args = {"武术家3"}},
        {cmd = "GeneralShow", args = {"武术家4"}},
        {cmd = "GeneralShow", args = {"武术家5"}},
        {cmd = "GeneralShow", args = {"武术家6"}},
        {cmd = "VarSet", args = {"Var2", true}},
    },
    {cmd = "VarSet", args = {"Var524", true}},
    {cmd = "ShowMenu", args = {true}},
}

Plot.battleMiddlePlot = {
    {
        {cmd = "RoundsTest", args = {3, ">="}},
        {cmd = "VarTest", args = {{trueConditions = {"Var2"}, falseConditions = {"Var11", "Var12", "Var50", "Var51"}}}},
        {
            {cmd = "FaceToFace", args = {"袁尚", "曹操"}},
            {cmd = "Dialog", args = {"袁尚", "太好了……，就差一步。"}},
            {cmd = "Dialog", args = {"袁尚", "这次可不能放过曹军，投入猛虎队吧。"}},
            {cmd = "FaceToFace", args = {"袁熙", "曹操"}},
            {cmd = "GeneralAction", args = {"袁熙", "attack"}},
            {cmd = "Dialog", args = {"袁熙", "冲啊！"}},
            {cmd = "Dialog", args = {"袁熙", "休要放走了曹操！"}},
            {cmd = "GeneralAction", args = {"袁熙", "stand"}},
            {cmd = "GeneralShow", args = {"贼兵1"}},
            {cmd = "GeneralShow", args = {"贼兵2"}},
            {cmd = "GeneralShow", args = {"贼兵3"}},
            {cmd = "GeneralShow", args = {"贼兵4"}},
            {cmd = "GeneralShow", args = {"武术家1"}},
            {cmd = "GeneralShow", args = {"武术家2"}},
            {cmd = "GeneralShow", args = {"驯虎师1"}},
            {cmd = "GeneralShow", args = {"驯虎师2"}},
            {cmd = "GeneralShow", args = {"驯虎师3"}},
            {cmd = "GeneralShow", args = {"驯虎师4"}},
            {cmd = "FaceToFace", args = {"曹操", "驯虎师1"}},
            {cmd = "GeneralAction", args = {"曹操", "dizzy"}},
            {cmd = "Dialog", args = {"曹操", "那、那是什么！"}},
            {cmd = "Dialog", args = {"曹操", "是老虎？"}},
            {cmd = "Dialog", args = {"曹操", "敌人能驱使老虎吗！？"}},
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var52"}}}},
                {cmd = "FaceToFace", args = {"郭嘉", "曹操"}},
                {cmd = "Dialog", args = {"郭嘉", "主公无须担忧，只要冷静以对……"}},
                {cmd = "Dialog", args = {"郭嘉", "决不是我军的对手……咳、咳……"}},
            },
            {cmd = "VarSet", args = {"Var11", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {3, ">="}},
        {cmd = "VarTest", args = {{trueConditions = {"Var30"}, falseConditions = {"Var2", "Var11", "Var12", "Var50", "Var51"}}}},
        {
            {cmd = "FaceToFace", args = {"袁尚", "曹操"}},
            {cmd = "Dialog", args = {"袁尚", "哈哈哈…！"}},
            {cmd = "Dialog", args = {"袁尚", "投入猛虎部队！"}},
            {cmd = "FaceToFace", args = {"袁熙", "曹操"}},
            {cmd = "GeneralAction", args = {"袁熙", "attack"}},
            {cmd = "Dialog", args = {"袁熙", "冲啊！"}},
            {cmd = "Dialog", args = {"袁熙", "休要放走了曹操！"}},
            {cmd = "GeneralAction", args = {"袁熙", "stand"}},
            {cmd = "GeneralShow", args = {"贼兵1"}},
            {cmd = "GeneralShow", args = {"贼兵2"}},
            {cmd = "GeneralShow", args = {"贼兵3"}},
            {cmd = "GeneralShow", args = {"贼兵4"}},
            {cmd = "GeneralShow", args = {"武术家1"}},
            {cmd = "GeneralShow", args = {"武术家2"}},
            {cmd = "GeneralShow", args = {"驯虎师1"}},
            {cmd = "GeneralShow", args = {"驯虎师2"}},
            {cmd = "GeneralShow", args = {"驯虎师3"}},
            {cmd = "GeneralShow", args = {"驯虎师4"}},
            {cmd = "FaceToFace", args = {"曹操", "驯虎师1"}},
            {cmd = "GeneralAction", args = {"曹操", "dizzy"}},
            {cmd = "Dialog", args = {"曹操", "那、那是什么！"}},
            {cmd = "Dialog", args = {"曹操", "是老虎？"}},
            {cmd = "Dialog", args = {"曹操", "敌人能驱使老虎吗！？"}},
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var52"}}}},
                {cmd = "FaceToFace", args = {"郭嘉", "曹操"}},
                {cmd = "Dialog", args = {"郭嘉", "主公无须担忧，只要冷静以对……"}},
                {cmd = "Dialog", args = {"郭嘉", "决不是我军的对手……咳、咳……"}},
            },
            {cmd = "VarSet", args = {"Var12", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {5, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var13", "Var52"}}}},
        {
            {cmd = "GeneralAction", args = {"郭嘉", "hurt"}},
            {cmd = "Dialog", args = {"郭嘉", "咳、咳……"}},
            {cmd = "Dialog", args = {"郭嘉", "唔唔唔………"}},
            {cmd = "GeneralStatusChange", args = {"郭嘉", "无", "无", "无", 50, 0}},
            {cmd = "VarSet", args = {"Var13", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {10, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var14", "Var52"}}}},
        {
            {cmd = "GeneralAction", args = {"郭嘉", "hurt"}},
            {cmd = "Dialog", args = {"郭嘉", "咳、咳……"}},
            {cmd = "Dialog", args = {"郭嘉", "唔唔唔………"}},
            {cmd = "GeneralStatusChange", args = {"郭嘉", "无", "无", "无", 50, 0}},
            {cmd = "VarSet", args = {"Var14", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {15, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var15", "Var52"}}}},
        {
            {cmd = "GeneralAction", args = {"郭嘉", "hurt"}},
            {cmd = "Dialog", args = {"郭嘉", "咳、咳、咳………"}},
            {cmd = "Dialog", args = {"郭嘉", "唔唔唔………"}},
            {cmd = "GeneralStatusChange", args = {"郭嘉", "无", "无", "无", 50, 0}},
            {cmd = "VarSet", args = {"Var15", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {20, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var16", "Var52"}}}},
        {
            {cmd = "GeneralAction", args = {"郭嘉", "hurt"}},
            {cmd = "Dialog", args = {"郭嘉", "咳、咳……"}},
            {cmd = "Dialog", args = {"郭嘉", "唔唔唔………"}},
            {cmd = "GeneralStatusChange", args = {"郭嘉", "无", "无", "无", 50, 0}},
            {cmd = "VarSet", args = {"Var16", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {25, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var17", "Var52"}}}},
        {
            {cmd = "GeneralAction", args = {"郭嘉", "hurt"}},
            {cmd = "Dialog", args = {"郭嘉", "咳、咳……"}},
            {cmd = "Dialog", args = {"郭嘉", "唔唔唔………"}},
            {cmd = "GeneralStatusChange", args = {"郭嘉", "无", "无", "无", 50, 0}},
            {cmd = "VarSet", args = {"Var17", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {30, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var18", "Var52"}}}},
        {
            {cmd = "GeneralAction", args = {"郭嘉", "hurt"}},
            {cmd = "Dialog", args = {"郭嘉", "咳、咳、咳………"}},
            {cmd = "Dialog", args = {"郭嘉", "唔唔唔………"}},
            {cmd = "GeneralStatusChange", args = {"郭嘉", "无", "无", "无", 50, 0}},
            {cmd = "VarSet", args = {"Var18", true}},
        },
    },
    {
        {cmd = "RoundsTest", args = {35, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var19", "Var52"}}}},
        {
            {cmd = "GeneralAction", args = {"郭嘉", "hurt"}},
            {cmd = "Dialog", args = {"郭嘉", "咳、咳……"}},
            {cmd = "Dialog", args = {"郭嘉", "唔唔唔………"}},
            {cmd = "GeneralStatusChange", args = {"郭嘉", "无", "无", "无", 50, 0}},
            {cmd = "VarSet", args = {"Var19", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 23, 2}},
        {cmd = "VarTest", args = {{falseConditions = {"Var20"}}}},
        {
            {cmd = "AddItem", args = {"恢复用桃", 0}},
            {cmd = "VarSet", args = {"Var20", true}},
        },
    },
    {
        {cmd = "EnterTileTest", args = {{"player", "friend"}, 11, 9}},
        {cmd = "VarTest", args = {{falseConditions = {"Var21"}}}},
        {
            {cmd = "AddItem", args = {"恢复用米", 0}},
            {cmd = "VarSet", args = {"Var21", true}},
        },
    },
    {
        {cmd = "GeneralCountsTest", args = {{"enemy"}, 7, "<", "指定区域", 6, 1, 24, 14}},
        {cmd = "VarTest", args = {{falseConditions = {"Var2", "Var6", "Var50", "Var51"}}}},
        {
            {cmd = "FaceToFace", args = {"袁尚", "袁熙"}},
            {cmd = "FaceToFace", args = {"袁熙", "袁尚"}},
            {cmd = "Dialog", args = {"袁尚", "啊？我军怎么会被消灭？"}},
            {cmd = "Dialog", args = {"袁尚", "这样下去恐怕有性命之忧……"}},
            {cmd = "Dialog", args = {"袁尚", "对了！"}},
            {cmd = "Dialog", args = {"袁尚", "把切断敌人退路的伏兵，全部叫回来吧！"}},
            {cmd = "Dialog", args = {"袁熙", "…………"}},
            {cmd = "Dialog", args = {"袁尚", "二哥，怎么了？"}},
            {cmd = "Dialog", args = {"袁熙", "那些部队看到我军情势不妙，全都争先恐后逃走了……"}},
            {cmd = "Dialog", args = {"袁熙", "仓促而建的部队果然不行啊！"}},
            {cmd = "GeneralAction", args = {"袁尚", "dizzy"}},
            {cmd = "Dialog", args = {"袁尚", "什、什么！？"}},
            {cmd = "Dialog", args = {"袁尚", "别开玩笑了！"}},
            {cmd = "Dialog", args = {"袁尚", "那、那我们该怎么办！？"}},
            {cmd = "VarSet", args = {"Var6", true}},
        },
    },
    {
        {cmd = "EnterRangeTest", args = {{"player", "friend"}, 6, 1, 24, 14}},
        {cmd = "VarTest", args = {{falseConditions = {"Var30"}}}},
        {
            {cmd = "VarSet", args = {"Var30", true}},
        },
    },
    {
        {cmd = "EnterRangeTest", args = {"郭嘉", 23, 21, 24, 24}},
        {cmd = "VarTest", args = {{trueConditions = {"Var2"}, falseConditions = {"Var31"}}}},
        {
            {cmd = "AllGeneralsRecover"},
            {cmd = "Dialog", args = {"郭嘉", "呼呼……"}},
            {cmd = "Dialog", args = {"郭嘉", "终于脱险了……"}},
            {cmd = "RoleDisappear", args = {"郭嘉"}},
            {cmd = "VarSet", args = {"Var31", true}},
            {cmd = "Dialog", args = {"夏侯惇", "主公，郭嘉先生平安逃脱了！"}},
            {cmd = "Dialog", args = {"曹操", "嗯、我们也撤退吧！"}},
            {cmd = "Dialog", args = {"曹操", "全军撤退！"}},
            {cmd = "BattleExtraItems", args = {0, "印绶", 0, "", 0, "", 0, false}},
            {cmd = "VarSet", args = {"Var100", true}},
            {cmd = "BattleOver"},
            {cmd = "VarSet", args = {"Var0", true}},
            {cmd = "VarSet", args = {"Var624", true}},
            {cmd = "VarSet", args = {"Var724", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"曹操", "袁尚", false}},
        {cmd = "VarTest", args = {{falseConditions = {"Var40"}}}},
        {
            {cmd = "FaceToFace", args = {"曹操", "袁尚"}},
            {cmd = "FaceToFace", args = {"袁尚", "曹操"}},
            {cmd = "Dialog", args = {"曹操", "袁尚！现在杀了你们，袁家就绝后了。"}},
            {cmd = "Dialog", args = {"曹操", "做为袁家仅存的香火，你可有什么感想？"}},
            {cmd = "Dialog", args = {"袁尚", "说什么鬼话！"}},
            {cmd = "Dialog", args = {"袁尚", "我不会失败的。"}},
            {cmd = "VarSet", args = {"Var40", true}},
        },
    },
    {
        {cmd = "GeneralMeetTest", args = {"曹操", "袁熙", false}},
        {cmd = "VarTest", args = {{falseConditions = {"Var41"}}}},
        {
            {cmd = "FaceToFace", args = {"曹操", "袁熙"}},
            {cmd = "FaceToFace", args = {"袁熙", "曹操"}},
            {cmd = "Dialog", args = {"曹操", "你夹在袁谭、袁尚的争执之间，一定感到相当为难吧。"}},
            {cmd = "Dialog", args = {"曹操", "这样的敌人实在让人同情啊！"}},
            {cmd = "Dialog", args = {"袁熙", "说什么废话！我们兄弟若不是因为你，也不会沦落到今天的地步……"}},
            {cmd = "Dialog", args = {"袁熙", "我绝不会放过你的。"}},
            {cmd = "VarSet", args = {"Var41", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"袁尚", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var50"}}}},
        {
            {cmd = "AllGeneralsRecover"},
            {cmd = "Dialog", args = {"袁尚", "可、可恶……"}},
            {cmd = "Dialog", args = {"袁尚", "只有暂时撤退了，撤退！快撤退！"}},
            {cmd = "GeneralRetreat", args = {"袁尚", false}},
            {
                {cmd = "VarTest", args = {{falseConditions = {"Var51"}}}},
                {cmd = "Dialog", args = {"袁熙", "（我们已经没有能力对抗曹操了，夺取天下的梦想也成了泡影……）"}},
                {cmd = "VarSet", args = {"Var51", true}},
            },
            {cmd = "GeneralsDisappear", args = {{"enemy"}, 1, 1, 24, 24}},
            {cmd = "VarSet", args = {"Var50", true}},
            {cmd = "Dialog", args = {"曹操", "很好，总算击退了敌人！"}},
            {cmd = "Dialog", args = {"曹操", "我军胜利了！"}},
            {cmd = "Dialog", args = {"郭嘉", "胜利了是吗…主公？"}},
            {cmd = "Dialog", args = {"郭嘉", "咳……咳、咳、咳咳！"}},
            {cmd = "Dialog", args = {"郭嘉", "咳、咳……唔唔唔……"}},
            {cmd = "Dialog", args = {"曹操", "郭嘉，这都多亏了你……"}},
            {cmd = "Dialog", args = {"曹操", "你干得很出色……"}},
            {cmd = "BattleExtraItems", args = {0, "", 0, "", 0, "", 0, false}},
            {cmd = "BattleOver"},
            {cmd = "VarSet", args = {"Var101", true}},
            {cmd = "VarSet", args = {"Var0", true}},
            {cmd = "VarSet", args = {"Var624", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"袁熙", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var51"}}}},
        {
            {cmd = "Dialog", args = {"袁熙", "可、可恶……又不行了！"}},
            {cmd = "Dialog", args = {"袁熙", "撤退！"}},
            {cmd = "FaceToFace", args = {"袁尚", "袁熙"}},
            {cmd = "GeneralRetreat", args = {"袁熙", false}},
            {cmd = "Dialog", args = {"袁尚", "二、二哥。"}},
            {cmd = "Dialog", args = {"袁尚", "嗯嗯嗯嗯……"}},
            {cmd = "Dialog", args = {"袁尚", "我还是快逃吧。"}},
            {cmd = "VarSet", args = {"Var51", true}},
        },
    },
    {
        {cmd = "GeneralPropTest", args = {"郭嘉", "HPCur", 0, "="}},
        {cmd = "VarTest", args = {{falseConditions = {"Var52"}}}},
        {
            {
                {cmd = "VarTest", args = {{trueConditions = {"Var2"}}}},
                {cmd = "FaceToFace", args = {"郭嘉", "曹操"}},
                {cmd = "Dialog", args = {"郭嘉", "咳咳…咳……"}},
                {cmd = "Dialog", args = {"郭嘉", "主公…我先撤退了……"}},
                {cmd = "Dialog", args = {"郭嘉", "咳、唔唔……"}},
                {cmd = "FaceToFace", args = {"曹操", "郭嘉"}},
                {cmd = "Dialog", args = {"曹操", "嗯……"}},
                {cmd = "Dialog", args = {"曹操", "你就先呆在后方休息吧，我马上就把这里的敌人收拾干净。"}},
                {cmd = "ShowPlayerRetreatWords", args = {"郭嘉", false}},
                {cmd = "GeneralRetreat", args = {"郭嘉", false}},
                {cmd = "BattleWinCondition", args = {"胜利条件\n一、击退袁尚。\n\n失败条件\n一、曹操死亡。\n二、回合数超过25。"}},
                {cmd = "ShowBattleWinCondition", args = {"击退袁尚！"}},
                {cmd = "HighlightGeneral", args = {"袁尚"}},
            },
            {
                {cmd = "Else"},
                {cmd = "FaceToFace", args = {"郭嘉", "曹操"}},
                {cmd = "Dialog", args = {"郭嘉", "咳咳…咳……"}},
                {cmd = "Dialog", args = {"郭嘉", "主公…我先撤退了……"}},
                {cmd = "Dialog", args = {"郭嘉", "咳、唔唔……"}},
                {cmd = "FaceToFace", args = {"曹操", "郭嘉"}},
                {cmd = "Dialog", args = {"曹操", "郭、郭嘉！郭嘉！"}},
                {cmd = "Dialog", args = {"曹操", "可、可恶……"}},
                {cmd = "Dialog", args = {"曹操", "太大意了…"}},
                {cmd = "Dialog", args = {"郭嘉", "不要紧的……"}},
                {cmd = "Dialog", args = {"郭嘉", "我在后方休息一下就行了……"}},
                {cmd = "Dialog", args = {"郭嘉", "咳、咳……"}},
                {cmd = "ShowPlayerRetreatWords", args = {"郭嘉", false}},
                {cmd = "GeneralRetreat", args = {"郭嘉", false}},
                {cmd = "FaceToFace", args = {"曹操", "袁尚"}},
                {cmd = "Dialog", args = {"曹操", "（郭嘉恐怕不久于人世了……"}},
                {cmd = "Dialog", args = {"曹操", "都怪袁尚这个混蛋！）"}},
                {cmd = "Dialog", args = {"曹操", "全军突击！砍了袁尚的脑袋！"}},
                {cmd = "Dialog", args = {"曹操", "为了不顾自己生命的郭嘉，我们再也不后退了！"}},
            },
            {cmd = "VarSet", args = {"Var52", true}},
        },
    },
    {
        {cmd = "BattleWinTest"},
        {cmd = "VarTest", args = {{trueConditions = {"Var100", "Var101"}, falseConditions = {"Var0"}}}},
        {
            {cmd = "AllGeneralsRecover"},
            {cmd = "Dialog", args = {"曹操", "很好，总算打败了敌人。"}},
            {cmd = "Dialog", args = {"曹操", "我军胜利了！"}},
            {cmd = "Dialog", args = {"郭嘉", "胜、胜利了是吗…主公？"}},
            {cmd = "Dialog", args = {"郭嘉", "咳……咳、咳、咳咳！"}},
            {cmd = "Dialog", args = {"郭嘉", "咳、咳……唔唔唔……"}},
            {cmd = "Dialog", args = {"曹操", "郭嘉，这都多亏了你……"}},
            {cmd = "Dialog", args = {"曹操", "你干得很出色……"}},
            {cmd = "BattleExtraItems", args = {0, "", 0, "", 0, "", 0, false}},
            {cmd = "BattleOver"},
            {cmd = "VarSet", args = {"Var0", true}},
            {cmd = "VarSet", args = {"Var624", true}},
        },
    },
    {
        {cmd = "BattleLoseTest"},
        {cmd = "VarTest", args = {{falseConditions = {"Var1"}}}},
        {
            {cmd = "Tip", args = {"曹操败给了袁尚。"}},
            {cmd = "BattleOver"},
            {cmd = "BattleLose"},
            {cmd = "VarSet", args = {"Var1", true}},
        },
    },
}

return Plot