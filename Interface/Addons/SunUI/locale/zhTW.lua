﻿local S, C, L, DB = unpack(select(2, ...))

if GetLocale() ~= "zhTW" then  return end
-- 控制台
--标语
L["恢复默认标语"] = "|cffDDA0DDSun|r|cff44CCFFUI|r\n|cffFFD700確認恢復初始設置|r\n"
L["欢迎标语"] = "欢迎使用|cffDDA0DDSun|r|cff44CCFFUI|r\n\n點擊確認載入初始設置\n"
L["警告"] = "|cffDDA0DDSun|r|cff44CCFFUI|r\n|cffFFD700開啟此功能會導致戰鬥中內存暴漲,請量力開啟.|r"
--总
L["恢复默认设置"] = "恢復默認設置"
L["解锁框体"] = "解鎖框體"
L["锁定框体"] = "鎖定框體"
L["应用(重载界面)"] = "應用(重載界面)"
-- 动作条
L["动作条"] = "動作條"
L["请选择主动作条布局"] = "請選擇主動作條布局"
L["bar1布局"] = "bar1布局"
L["bar2布局"] = "bar2布局"
L["bar3布局"] = "bar3布局"
L["bar4布局"] = "bar4布局"
L["bar5布局"] = "bar5布局"
L["12x1布局"] = "12x1布局"
L["6x2布局"] = "6x2布局"
L["4方块布局"] = "4方塊布局"
L["不要4方块布局"] = "不要4方塊布局"
L["动作条皮肤风格"] = "動作條皮膚風格"
L["请选择动作条皮肤风格"] = "請選擇動作條皮膚風格"
L["阴影风格"] = "陰影風格"
L["框框风格"] = "框框風格"
L["隐藏快捷键显示"] = "隱藏快捷鍵顯示"
L["隐藏宏名称显示"] = "隱藏宏名稱顯示"
L["冷却闪光"] = "冷卻閃光"
L["动作条按钮大小"] = "動作條按鈕大小"
L["动作条间距大小"] = "動作條間距大小"
L["动作条字体大小"] = "動作條字體大小"
L["宏名字字体大小"] = "宏名字字體大小"
L["主动作条缩放大小"] = "主動作條縮放大小"
L["特殊按钮缩放大小"] = "特殊按鈕縮放大小"
L["宠物条缩放大小"] = "寵物條縮放大小"
L["姿态栏缩放大小"] = "姿態欄縮放大小"
L["图腾栏缩放大小"] = "圖騰欄縮放大小"
L["冷却闪光图标大小"] = "冷卻閃光圖標大小"
--姓名板
L["姓名板"] = "姓名板"
L["姓名板字体大小"] = "姓名板字體大小"
L["姓名板血条高度"] = "姓名板血條高度"
L["姓名板血条宽度"] = "姓名板血條寬度"
L["姓名板施法条图标大小"] = "姓名板施法條圖標大小"
L["姓名板施法条高度"] = "姓名板施法條高度"
L["姓名板施法条宽度"] = "姓名板施法條寬度"
L["启用姓名板"] = "啟用姓名板"
L["启用战斗显示"] = "啟用戰鬥顯示"
L["启用debuff显示"] = "啟用debuff顯示"

--鼠标提示
L["鼠标提示"] = "鼠標提示"
L["提示框体跟随鼠标"] = "提示框體跟隨鼠標"
L["进入战斗自动隐藏"] = "進入戰鬥自動隱藏"
L["字体大小"] = "字體大小"
L["隐藏头衔"] = "隱藏頭銜"
L["主天赋"] = "主天賦:|cffffffff "
L["副天赋"] = "副天賦:|cffffffff "
L["成就点数"] = "|cFFF1C502成就點數:  |cFFFFFFFF"
L["正在查询成就"] = "正在查詢成就.."
L["释放者"] = "釋放者:"
L["法术ID"] = "法術編號"
--增益效果
L["增益效果"] = "增益效果"
L["图标大小"] = "圖標大小："
L["BUFF增长方向"] = "BUFF增長方向："
L["从右向左"] = "從右向左"
L["从左向右"] = "從左向右"
L["DEBUFF增长方向"] = "DEBUFF增長方向："
L["每行图标数"] = "每行圖標數"
--仇恨监视
L["仇恨监视"] = "仇恨監視"
L["仇恨条宽度"] = "仇恨條寬度："
L["仇恨条姓名长度"] = "仇恨條姓名長度："
L["显示仇恨人数"] = "顯示仇恨人數(不包括Tank)："
--reminder
L["缺失提醒"] = "缺失提醒"
L["显示团队增益缺失提醒"] = "顯示團隊增益缺失提醒"
L["只在队伍中显示"] = "只在隊伍中顯示"
L["团队增益图标大小"] = "團隊增益圖標大小："
L["团队增益图标排列方式"] = "團隊增益圖標排列方式："
L["横排"] = "橫排"
L["竖排"] = "豎排"
L["显示职业增益缺失提醒"] = "顯示職業增益缺失提醒"
L["开启声音警报"] = "開啟聲音警報"
L["职业增益图标大小"] = "職業增益圖標大小："
L["职业增益图标间距"] = "職業增益圖標間距："
--界面皮肤
L["界面皮肤"] = "界面皮膚"
L["启用DBM皮肤"] = "啟用DBM皮膚"
--头像
L["头像框体"] = "頭像框體"
L["开启boss框体"] = "開啟boss框體"
L["血条职业颜色"] = "血條職業顏色"
L["蓝条颜色"] = "藍條顏色"
L["蓝条职业颜色"] = "藍條職業顏色"
L["是否开启头像"] = "是否開啟頭像"
L["是否只显示你释放的debuff"] = "是否只顯示妳釋放的debuff"
L["头像字体大小"] = "頭像字體大小："
L["法力条高度"] = "法力條高度："
L["头像缩放大小"] = "頭像縮放大小："
L["玩家施法条宽度"] = "玩家施法條寬度："
L["玩家施法条高度"] = "玩家施法條高度："
L["目标施法条宽度"] = "目標施法條寬度："
L["目标施法条高度"] = "目標施法條高度："
L["焦点施法条宽度"] = "焦點施法條寬度："
L["焦点施法条高度"] = "焦點施法條高度："
L["宠物施法条宽度"] = "寵物施法條寬度："
L["宠物施法条高度"] = "寵物施法條高度："
L["施法条图标大小"] = "施法條圖標大小："
--mini
L["小东西设置"] = "小東西設置"
L["启用出售垃圾"] = "啟用出售垃圾"
L["启用自动修理"] = "啟用自動修理"
L["启用聊天信息过滤"] = "啟用聊天信息過濾"
L["启用系统红字屏蔽"] = "啟用系統紅字屏蔽"
L["启用打断通报"] = "啟用打斷通報"
L["PVP冷却计时"] = "PVP冷卻計時"
L["启用团队工具"] = "啟用團隊工具"
L["需要团长或者助理权限"] = "需要團長或者助理權限"
L["启用自动邀请"] = "啟用自動邀請"
L["自动邀请关键字"] = "自動邀請關鍵字："
L["启用自动离开有进度的随机副本或团队"] = "啟用自動離開有進度的隨機副本或團隊"
L["UI缩放"] = "UI縮放"
L["UI缩放大小"] = "UI縮放大小："
L["应用"] = "應用"
L["启用插件UI缩放设定"] = "啟用插件UI縮放設定"
L["自动设定UI缩放"] = "自動設定UI縮放"
L["需要开启插件UI缩放设定"] = "需要開啟插件UI縮放設定"
L["锁定UI缩放"] = "鎖定UI縮放"
L["内置CD"] = "內置CD"
L["启动内置CD"] = "啟動內置CD"
L["内置CD字体大小"] = "內置CD字體大小："
L["框体宽度"] = "框體寬度："
L["框体高度"] = "框體高度："
L["计时条增长方向"] = "計時條增長方向："
L["向下"] = "向下"
L["向上"] = "向上"
L["启用施法通告"] = "啟用施法通告"
--other
L["内存占用"] = "|cffFFD700內存占用：|r"
L["处理器占用"] = "|cffFFD700處理器占用：|r"
L["插件管理"] = "|cffDDA0DD插件管理|r"
L["SunUI插件管理"] = "|cffDDA0DDSun|r|cff44CCFFUI|r插件管理"
L["第"] = "第 "
L["页/共"] = " 頁 / 共 "
L["页"] = " 頁"
--打斷
L["我已打断: =>"] = "我已斷法: =>"
L["<=的 "] = "<=的 "
--背包
L["背包"] = "背包"
L["搜索"] = "搜索"
L["整理背包"] = "整理背包"
--move
L["玩家施法条"] = "玩家施法條"
L["目标施法条"] = "目標施法條"
L["焦点施法条"] = "焦點施法條"
L["宠物施法条"] = "寵物施法條"
L["内置CD监视"] = "內置CD監視"
L["仇恨监视"] = "仇恨監視"
L["缺少药剂buff提示"] = "缺少藥劑buff提示"
L["连击点"] = "連擊點"
L["暗影魔计时条"] = "暗影魔計時條"
L["小地图"] = "小地圖"
L["鼠标左键拖动我!"] = "鼠標左鍵拖動我!"
L["药水"] = "精煉"
L["冷却闪光"] = "冷卻閃光"
--minimap
L["角色信息"] = "角色信息"
L["法术书"] = "法術書"
L["天赋"] = "天賦"
L["成就"] = "成就"
L["任务日志"] = "任務日誌"
L["社交"] = "社交"
L["公会"] = "公會"
L["地城查找器"] = "地城查找器"
L["团队查找器"] = "團隊查找器"
L["帮助"] = "幫助"
L["行事历"] = "行事歷"
L["地城手册"] = "地城手冊"
L["就位确认"] = "就位確認"
L["角色检查"] = "角色檢查"
L["转化为团队"] = "轉化為團隊"
L["转化为小队"] = "轉化為小隊"
--声望条
L["经验值"] = "經驗值:"
L["剩余"] = '剩餘: %s'
L["休息"] = '|cffb3e1ff休息: %s (%d%%)'
L["阵营"] = '陣營: %s'
L["状态"] = '狀態: |c'
L["声望"] = '聲望: %s/%s (%d%%)'
L["仇恨"] = "仇恨"
L["敌对"] = "敵對"
L["不友好"] = "不友好"
L["中立"] = "中立"
L["友好"] = "友好"
L["尊敬"] = "尊敬"
L["崇敬"] = "崇敬"
L["崇拜"] = "崇拜"
--信息条
L["没有工会"] = "沒有工會"
L["免伤分析"] = "免傷分析"
L["免伤"] = "免傷"
L["等级缓和"] = "等級緩和"
L["头部"] = "頭部"
L["肩部"] = "肩部"
L["胸部"] = "胸部"
L["腰部"] = "腰部"
L["手腕"] = "手腕"
L["手"] = "手"
L["腿部"] = "腿部"
L["脚"] = "腳"
L["主手"] = "主手"
L["副手"] = "副手"
L["远程"] = "遠程"
L["共释放内存"] = "共釋放內存"
L["总共内存使用"] = "總共內存使用"
L["延迟"] = "延遲"
L["本地延迟"] = "本地延遲"
L["世界延迟"] = "世界延遲"
L["耐久度"] = "耐久度"
L["信息面板"] = "信息面板"
L["启用顶部信息条"] = "啟用頂部信息條"
L["启用底部信息条"] = "啟用底部信息條"
L["底部信息条宽度"] = "底部信息條寬度"
L["底部信息条高度"] = "底部信息條高度"
L["带宽"] = "帶寬"
L["下载"] = "下載"
L["背包"] = "背包"
L["背包剩余"] = "背包剩余"
L["背包总计"] = "背包總計"
L["邮件"] = "郵件"
L["新邮件"] = "新郵件"
L["无邮件"] = "無郵件"
L["地区"] = "地區"
L["Hidden"] = "隱藏"
L["Alt"] = "Alt展開"
L["Default UI Memory Usage:"] = "暴雪插件資源耗用:"
L["Total Memory Usage:"] = "總資源耗用:"
--聊天
L["综合"] = "[綜合]" --General
L["交易"] = "[交易]" --Trade
L["世界防务"] = "[世界防務]" --WorldDefense
L["本地防御"] = "[本地防務]" --LocalDefense
L["寻求组队"] = "[尋求組隊]"
L["工会招募"] = "[工會招募]"
L["战场"] = "[戰場]"
L["战场领袖"] = "[戰場領袖]"
L["工会"] = "[工會]"
L["小队"] = "[小隊]"
L["小队队长"] = "[小隊隊長]"
L["地城领袖"] = "[地城領袖]"
L["官员"] = "[官員]"
L["团队"] = "[團隊]"
L["团队领袖"] = "[團隊領袖]"
L["团队警告"] = "[團隊警告]"
--staddonmanage
L["Search"] = "搜索"
L["ReloadUI"] = "重載介面"
L["Profiles"] = "配置文件"
L["New_Profile"] = "新配置文件"
L["Enable_All"] = "全部開啟"
L["Disable_All"] = "全部關閉"
L["Profile_Name"] = "配置文件名字"
L["Set_To"] = "設置"
L["Add_To"] = "應用"
L["Remove_From"] = "撤銷"
L["Delete_Profile"] = "刪除"
L["Confirm_Delete"] = "您確定要刪除這個配置麼? 確定請按住shift點擊刪除按鈕"
L["Dependencies"] = "依賴於:"
L["Optional Dependencies"] = "可選依賴於:"
L["全局字体大小"] = "全局字體大小系數"
--channel
L["大脚世界频道"] = "大腳世界頻道"
L["离开大脚频道"] = "|cffFFD700離開大腳頻道|r"
L["加入大脚世界频道"] = "|cffFFD700加入大腳世界頻道|r"
L["关闭"] = "|cffFF0000關閉|r"
L["开启"] = "|cff228B22開啟|r"
L["大脚世界频道开关"] = "大腳世界頻道開關"
L["点击进入或者离开"] = "點擊|cff228B22進入|r或者|cffFF0000離開|r"
L["您现在大脚世界频道处于"] = "您現在大腳世界頻道處於"
L["状态"] = "狀態"
--3.6
L["一次显示插件数目"] = "一次顯示插件數目"
L["动作条渐隐"] = "動作條漸隱"
L["隐藏团队警告"] = "隱藏團隊警告"
L["玩家与目标框体宽度"] = "玩家與目標框體寬度"
L["玩家与目标框体高度"] = "玩家與目標框體高度"
L["宠物ToT焦点框体宽度"] = "寵物ToT焦點框體寬度"
L["宠物ToT焦点框体高度"] = "寵物ToT焦點框體高度"
L["宠物ToT焦点缩放大小"] = "寵物ToT焦點縮放大小"
L["Boss小队竞技场框体宽度"] = "Boss小隊競技場框體寬度"
L["Boss小队竞技场框体高度"] = "Boss小隊競技場框體高度"
L["Boss小队竞技场缩放大小"] = "Boss小隊競技場縮放大小"
L["开启目标的目标"] = "開啟目標的目標"
L["开启宠物框体"] = "開啟寵物框體"
L["开启焦点框体"] = "開啟焦點框體"
L["开启小队框体"] = "開啟小隊框體"
L["开启boss框体"] = "開啟boss框體"
L["开启竞技场框体"] = "開啟競技場框體"
L["开启物理攻击计时条"] = "開啟物理攻擊計時條"
L["开启头像渐隐"] = "開啟頭像漸隱"
L["开启头像职业血条颜色"] = "開啟頭像職業血條顏色"
L["锁定玩家施法条到玩家头像"] = "鎖定玩家施法條到玩家頭像"
L["锁定目标施法条到目标框体"] = "鎖定目標施法條到目標框體"
L["锁定焦点施法条到焦点框体"] = "鎖定焦點施法條到焦點框體"
L["头像透明度"] = "頭像透明度"
--320
L["目标增减益"] = "目標增減益"
L["显示"] = "顯示"
L["不显示"] = "不顯示"
--422
L["团队框架"] = "團隊框體"
L["技能监视"] = "技能監視"
--503
L["打开任务物品按钮"] = "任務物品按鈕"
L["打开自动补购"] = "打開自動補購"
L["打开坦克护盾监视"] = "坦克護盾監視"
L["打开团队技能CD监视"] = "團隊技能CD監視"
--519
L["传送符文"] = "傳送符文"
L["传送门符文"] = "傳送門符文"
L["魔粉"] = "魔粉"
L["速效药膏"] = "速效毒藥"
L["致命药膏"] = "致命毒藥"
L["减速药膏"] = "致殘毒藥"
L["麻痹药膏"] = "麻痺毒藥"
L["致伤药膏"]= "致傷毒藥"

--new
-- Talent spec
L_PLANNER_DEATHKNIGHT_1 = "血魄"
L_PLANNER_DEATHKNIGHT_2 = "冰霜"
L_PLANNER_DEATHKNIGHT_3 = "穢邪"
L_PLANNER_DRUID_1 = "平衡"
L_PLANNER_DRUID_2 = "野性戰鬥"
L_PLANNER_DRUID_3 = "Guardian"	--need review
L_PLANNER_DRUID_4 = "恢復"
L_PLANNER_HUNTER_1 = "野獸控制"
L_PLANNER_HUNTER_2 = "射擊"
L_PLANNER_HUNTER_3 = "生存"
L_PLANNER_MAGE_1 = "秘法"
L_PLANNER_MAGE_2 = "火焰"
L_PLANNER_MAGE_3 = "冰霜"
L_PLANNER_MONK_1 = "Brewmaster"	--need review
L_PLANNER_MONK_2 = "Mistweaver"	--need review
L_PLANNER_MONK_3 = "Windwalker"	--need review
L_PLANNER_PALADIN_1 = "神聖"
L_PLANNER_PALADIN_2 = "防護"
L_PLANNER_PALADIN_3 = "懲戒"
L_PLANNER_PRIEST_1 = "戒律"
L_PLANNER_PRIEST_2 = "神聖"
L_PLANNER_PRIEST_3 = "暗影"
L_PLANNER_ROGUE_1 = "刺殺"
L_PLANNER_ROGUE_2 = "戰鬥"
L_PLANNER_ROGUE_3 = "敏銳"
L_PLANNER_SHAMAN_1 = "元素"
L_PLANNER_SHAMAN_2 = "增強"
L_PLANNER_SHAMAN_3 = "恢復"
L_PLANNER_WARLOCK_1 = "痛苦"
L_PLANNER_WARLOCK_2 = "惡魔"
L_PLANNER_WARLOCK_3 = "毀滅"
L_PLANNER_WARRIOR_1 = "武器"
L_PLANNER_WARRIOR_2 = "狂怒"
L_PLANNER_WARRIOR_3 = "防護"

-- LitePanels AFK module
L_PANELS_AFK = "你處于暫離狀態!"
L_PANELS_AFK_RCLICK = "右鍵點擊隱藏."
L_PANELS_AFK_LCLICK = "左鍵點擊脫離暫離狀態." 
-- Tooltip
L_TOOLTIP_NO_TALENT = "沒有天賦"
L_TOOLTIP_LOADING = "讀取中..."
L_TOOLTIP_ACH_STATUS = "你的狀態:"
L_TOOLTIP_ACH_COMPLETE = "你的狀態: 完成 "
L_TOOLTIP_ACH_INCOMPLETE = "你的狀態: 未完成"
L_TOOLTIP_SPELL_ID = "法術ID:"
L_TOOLTIP_ITEM_ID = "物品ID:"
L_TOOLTIP_WHO_TARGET = "以其為目標的"
L_TOOLTIP_ITEM_COUNT = "物品數量:"
L_TOOLTIP_INSPECT_OPEN = "Inspect Frame is open" -- Needs review
--Loot
L_LOOT_CANNOT = "不能拾取"
--map
L_EXTRA_EXPLORED = "探索: " -- Needs review
L_ZONE_WINTERGRASP = "冬握湖"
L_ZONE_TOLBARAD = "托巴拉德"
L_ZONE_TOLBARADPEN = "托巴拉德半島"
L_ZONE_ARATHIBASIN = "阿拉希盆地"
L_ZONE_GILNEAS = "吉爾尼斯之戰"
L_EXTRA_ZONEACHID = {
	-- http://www.wowhead.com/achievement=*
	-- e(X)plore achievement id, (Q)uest achievement id
	["東部王國"]							= {X =   42, A =    0, H =    0},
	["卡林多"]							= {X =   43, A =    0, H =    0},
	["外域"]							= {X =   44, A =    0, H =    0},
	["北裂境"]							= {X =   45, A =    0, H =    0},
	["Pandaria"]						= {X = 6974, A =    0, H =    0}, -- Needs review
	["世界地圖"]							= {X =  nil, A =    0, H =    0},
	-- Eastern Kingdoms
	["阿拉希高地"]						= {X =  761, A = 4896, H = 4896},
	["荒蕪之地"]							= {X =  765, A = 4900, H = 4900},
	["詛咒之地"]							= {X =  766, A = 4909, H = 4909},
	["燃燒平原"]							= {X =  775, A = 4901, H = 4901},
	["逆風小徑"]							= {X =  777, A =    0, H =    0},
	["丹莫洛"]							= {X =  627, A =    0, H =    0},
	["暮色森林"]							= {X =  778, A = 4903, H =    0},
	["東瘟疫之地"]						= {X =  771, A = 4892, H = 4892},
	["艾爾文森林"]						= {X =  776, A =    0, H =    0},
	["永歌森林"]							= {X =  859, A =    0, H =    0},
	["鬼魂之地"]							= {X =  858, A =    0, H = 4908},
	["希爾斯布萊德丘陵"]					= {X =  772, A =    0, H = 4895},
	["洛克莫丹"]							= {X =  779, A = 4899, H =    0},
	["北荊棘谷"]							= {X =  781, A = 4906, H = 4906},
	["赤脊山"]							= {X =  780, A = 4902, H =    0},
	["灼熱峽谷"]							= {X =  774, A = 4910, H = 4910},
	["銀松森林"]							= {X =  769, A =    0, H = 4894},
	["悲傷沼澤"]							= {X =  782, A = 4904, H = 4904},
	["荊棘谷海角"]						= {X = 4995, A = 4905, H = 4905},
	["辛特蘭"]							= {X =  773, A = 4897, H = 4897},
	["提里斯法林地"]						= {X =  768, A =    0, H =    0},
	["西瘟疫之地"]						= {X =  770, A = 4893, H = 4893},
	["西部荒野"]							= {X =  802, A = 4903, H =    0},
	["濕地"]							= {X =  841, A = 4899, H =    0},
	-- Kalimdor
	["梣谷"]							= {X =  845, A = 4925, H = 4976},
	["艾薩拉"]							= {X =  852, A =    0, H = 4927},
	["藍謎島"]							= {X =  860, A =    0, H =    0},
	["血謎島"]							= {X =  861, A = 4926, H = 4926},
	["黑海岸"]							= {X =  844, A = 4928, H = 4928},
	["淒涼之地"]							= {X =  848, A = 4930, H = 4930},
	["杜洛塔"]							= {X =  728, A =    0, H =    0},
	["塵泥沼澤"]							= {X =  850, A = 4929, H = 4978},
	["費伍德森林"]						= {X =  853, A = 4931, H = 4931},
	["菲拉斯"]							= {X =  849, A = 4932, H = 4979},
	["月光林地"]							= {X =  855, A =    0, H =    0},
	["莫高雷"]							= {X =  736, A =    0, H =    0},
	["北貧瘠之地"]						= {X =  750, A =    0, H = 4933},
	["希利蘇斯"]							= {X =  856, A = 4934, H = 4934},
	["南貧瘠之地"]						= {X = 4996, A = 4937, H = 4981},
	["石爪山脈"]							= {X =  847, A = 4936, H = 4980},
	["塔納利斯"]							= {X =  851, A = 4935, H = 4935},
	["泰達希爾"]							= {X =  842, A =    0, H =    0},
	["千針石林"]							= {X =  846, A = 4938, H = 4938},
	["安戈洛環形山"]						= {X =  854, A = 4939, H = 4939},
	["冬泉谷"]							= {X =  857, A = 4940, H = 4940},
	-- Outland
	["劍刃山脈"]							= {X =  865, A = 1193, H = 1193},
	["地獄火半島"]						= {X =  862, A = 1189, H = 1271},
	["納葛蘭"]							= {X =  866, A = 1192, H = 1273},
	["虛空風暴"]							= {X =  843, A = 1194, H = 1194},
	["影月谷"]							= {X =  864, A = 1195, H = 1195},
	["泰洛卡森林"]						= {X =  867, A = 1191, H = 1272},
	["贊格沼澤"]							= {X =  863, A = 1190, H = 1190},
	-- Northrend
	["北風凍原"]							= {X = 1264, A =   33, H = 1358},
	["水晶之歌森林"]						= {X = 1457, A =    0, H =    0},
	["龍骨荒野"]							= {X = 1265, A =   35, H = 1356},
	["灰白之丘"]							= {X = 1266, A =   37, H = 1357},
	["凜風峽灣"]							= {X = 1263, A =   34, H = 1356},
	["寒冰皇冠"]							= {X = 1270, A =   40, H =   40},
	["休拉薩盆地"]						= {X = 1268, A =   39, H =   39},
	["風暴群山"]							= {X = 1269, A =   38, H =   38},
	["祖爾德拉克"]						= {X = 1267, A =   36, H =   36},
	-- Cataclysm
	["地深之源"]							= {X = 4864, A = 4871, H = 4871},
	["海加爾山"]							= {X = 4863, A = 4870, H = 4870},
	["暮光高地"]							= {X = 4866, A = 4873, H = 5501},
	["奧丹姆"]							= {X = 4865, A = 4872, H = 4872},
	["瓦許伊爾"]							= {X = 4825, A = 4869, H = 4982},
	["托巴拉德"]							= {X =    0, A = 4874, H = 4874},
	["托巴拉德半島"]						= {X =    0, A = 4874, H = 4874},
	-- Pandaria
	["The Jade Forest"]					= {X = 6351, A = 6300, H = 6534}, -- Needs review
	["Valley of the Four Winds"]		= {X = 6969, A = 6301, H = 6301}, -- Needs review
	--["Krasarang Wilds"]					= {X = 6975, A = 6535, H = 6536}, -- Needs review
	["Kun-Lai Summit"]					= {X = 6976, A = 6537, H = 6538}, -- Needs review
	["Townlong Steppes"]				= {X = 6977, A = 6539, H = 6539}, -- Needs review
	["Dread Wastes"]					= {X = 6978, A = 6540, H = 6540}, -- Needs review
	["Vale of Eternal Blossoms"]		= {X = 6979, A =    0, H =    0}, -- Needs review
	-- Boolean Explores
	["奎爾達納斯之島"]					= {X =  868, A =    0, H =    0},
	["安其拉: 沒落的王朝"]				= {X =    0, A =    0, H =    0},
	["冬握湖"]							= {X =    0, A =    0, H =    0},
}
L_MISC_UI_OUTDATED = "SunUI 版本已過期，請至 https://github.com/Coolkids/SunUI 下載最新版"