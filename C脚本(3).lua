当地的OrionLib=loadstring(游戏：HttpGet("https://raw.githubusercontent.com/sharksharksharkshark/Hub/main/1lolll.txt"))()
当地的LBLG=Instance.new("ScreenGui"，getParent)
当地的LBL=Instance.new("TextLabel"，getParent)
当地的player=game.Players.LocalPlayer

LBLG.Name="LBLG"
LBLG.Parent=game.CoreGuui
LBLG.ZIndexBehavior=枚举.ZIndexBehavior.Sibling
LBLG.Enabled=正确
LBL.Name="LBL"
LBL.Parent=LBLG
LBL.BackgroundColor3=Color3.new(1,1,1)
LBL.BackgroundTransparency=1
LBL.BorderColor3=Color3.new(0,0,0)
LBL.Position=UDim2.new(0.75,0,0.010,0)
LBL.Size=UDim2.new(0,133,0,30)
LBL.Font=枚举.Font.GothamSemibold
LBL.Text="TextLabel"
LBL.TextColor3=Color3.new(1,1,1)
LBL.TextScaled=正确
LBL.TextSize=14
LBL.TextWrapped=正确
LBL.Visible=正确

当地的FpsLabel=LBL
当地的心跳=游戏：GetService("运行服务").心跳
当地的LastIteration，Start
当地的FrameUpdateTable={}

当地的 功能HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "C脚本", HidePremium = false, SaveConfig = true,IntroText = "C脚本", ConfigFolder = "C脚本"})

local about = Window:MakeTab({
    Name = "C制作",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
about:AddParagraph("请勿去圈钱")
about:AddParagraph("作者:-C-")
about:AddParagraph("更新以及反馈QQ群:814705174")
about:AddParagraph("倒卖没亩 ")

OrionLib:MakeNotification({
	Name = "C脚本",
	Content = "欢迎使用C脚本",
	Image = "rbxassetid://13708514549",
	Time = 1
})

wait(1)

OrionLib:MakeNotification({
	Name = "C脚本",
	Content = "3",
	Image = "rbxassetid://13708514549",
	Time = 1
})

wait(1)

OrionLib:MakeNotification({
	Name = "C脚本",
	Content = "2",
	Image = "rbxassetid://13708514549",
	Time = 1
})

wait(1)

OrionLib:MakeNotification({
	Name = "C脚本",
	Content = "1",
	Image = "rbxassetid://13708514549",
	Time = 1
})

wait(1)

OrionLib:MakeNotification({
	Name = "C脚本",
	Content = "欢迎使用C脚本",
	Image = "rbxassetid://13708514549",
	Time = 30
})

local Tab = Window:MakeTab({
	Name = "人物",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "飞行",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/U27yQRxS"))()
  	end    
})

Tab:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	 
})
 
Tab:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	 
})

Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Tab:AddButton({
	Name = "人物无敌",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})

Tab:AddButton({
	Name = "变成蛇",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
	end
})

Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddButton({
	Name = "防止掉线（反挂机）",
	Callback = function()
	print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
  	end
})

Tab:AddButton({
	Name = "甩飞别人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "通用",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
Tab:AddParagraph("您的注入器:"," "..identifyexecutor().."")
Tab:AddParagraph("您当前服务器的ID"," "..game.GameId.."")

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddButton({
	Name = "光影",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  	end
})

Tab:AddButton({
	Name = "飞车",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})

Tab:AddButton({
  Name = "最强透视",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY"))()
  end
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
	Name = "转起来",
	Callback = function()
      	loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  	end
})

Tab:AddButton({
	Name = "隐身弹人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/kenX0BHc"))()
  	end
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end
})

Tab:AddButton({
	Name = "鼠标（手机非常不建议用）",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
	end
})

Tab:AddButton({
	Name = "隐身",
	Callback = function()
      	loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
  	end
})

Tab:AddButton({
	Name = "替身",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
  	end
})

Tab:AddButton({
	Name = "跟踪玩家",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
  	end
})

Tab:AddButton({
	Name = "吸取全部玩家",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/hQSBGsw2'))()
  	end    
})

Tab:AddButton({
	Name = "伪名说话",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})

local Tab = Window:MakeTab({
	Name = "游戏脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "极速",
	Callback = function()
      	loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
  	end
})

Tab:AddButton({
  Name = "力量",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/BoaHacker/ROBLOX/main/cheat', true))()
  end
})

Tab:AddButton({
  Name = "忍者",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/why-png/scriptstuffz/master/ninjaleg2", true))()
  end
})

Tab:AddButton({
	Name = "脚本中心",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/De4aYHDY"))()
  	end
})

Tab:AddButton({
	Name = "自然灾害",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main'))()
  	end
})

Tab:AddButton({
    Name="彩虹朋友1",
    Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends"))()
    end
})

Tab:AddButton({
	Name = "星期五",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
  	end
})

Tab:AddButton({
	Name = "evade",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
  	end
})

Tab:AddButton({
	Name = "监狱人生",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/mHfK0Xk4", true))()
  	end
})

Tab:AddButton({
	Name = "兵工厂",
	Callback = function()
     loadstring(game:HttpGet(('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init'), true))()
  	end
})

Tab:AddButton({
	Name = "USA卡密:USA AER",
	Callback = function()
  getgenv().USA="作者莫羽免费请勿倒卖"loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "doors",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "DOORS低回拉穿墙",
  Callback = function()
    loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
  end
})

Tab:AddButton({
  Name = "exp",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/zoophiliaphobic/POOPDOORS/main/script.lua'))()
  end
})

Tab:AddButton({
  Name = "变身",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
  end
})

Tab:AddButton({
  Name = "磁铁",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
  end
})

Tab:AddButton({
	Name = "神圣炸弹",
	    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
  end
})

Tab:AddButton({
	Name = "激光枪",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
end
})

Tab:AddButton({
  Name = "剪刀",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
  end
})

Tab:AddButton({
  Name = "骷髅钥匙",
  Callback = function ()
    local item = game:GetObjects("rbxassetid://11697889137")[1]item.Parent = game.Players.LocalPlayer.Backpack
  end
})

Tab:AddButton({
	Name = "紫色手电筒",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight"))()
end
})  

Tab:AddButton({
	Name = "手电筒（没电会有bug）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
end
})      

Tab:AddButton({
  Name = "耶稣十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi2"))()
  end
})

Tab:AddButton({
  Name = "紫光十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi3"))()
  end
})

Tab:AddButton({
  Name = "万圣节十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi4"))()
  end
})

Tab:AddButton({
  Name = "Zepsyy十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/Crucifix"))()
  end
})

Tab:AddButton({
  Name = "普通十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizizhen"))()
  end
})

Tab:AddButton({
  Name = "老六十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/W1AzELhb"))()
  end
})

local Tab = Window:MakeTab({
	Name = "鲨口求生(bushi",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "脚本",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
  end
})

Tab:AddButton({
	Name = "自动杀鲨鱼🦈(鲨鱼)",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "游戏脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "操人脚本",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/bzmhRgKL'))()
	end
})

Tab:AddButton({
	Name = "动感星期五",
	Callback = function()	
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ShowerHead-FluxTeam/scripts/main/funky-friday-autoplay'))()
	end
})

Tab:AddButton({
	Name = "餐厅大亨2",
	Callback = function()
	loadstring(game:httpget("https://raw.githubusercontent.com/LabibKazi858/Scripts/main/Restaurant%20Tycoon%202", true))()
	end
})

Tab:AddButton({
	Name = "蜂群模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://rahttps://rahttps://raw.githubusercontent.com/USA868/USA--/main/.github/%E5%B7%A5%E4%BD%9C%E6%B5%81%E7%A8%8B/1%E6%9D%96%E4%BA%BA%E4%BD%BF%E7%94%A8?token=GHSAT0AAAAAACB6LLQWA5JNQNNWTP47AOWSZCLYRTQ"))()
	end
})

Tab:AddButton({
	Name = "服务器模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/1Kj71cJM"))();
		end
})

Tab:AddButton({
	Name = "苦力怕",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githttps://raw.githubusercontent.com/USA868/USA--/main/%E8%8B%A6%E5%8A%9B%E6%80%95%E6%9D%80%E6%89%8B(ZERO%E6%B1%89%E5%8C%96)%20(1).txt?token=GHSAT0AAAAAACB6LLQWG2CFCYA27H5D33DSZCMVNZQ"))()
		end
})

Tab:AddButton({
	Name = "脚本搜索",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"))()
	end
})

Tab:AddButton({
	Name = "幸运战场",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
	end
})

Tab:AddButton({
	Name = "DX",
	Callback = function()
	loadstring(game:HttpGet("https://github.com/DocYogurt/lolololololololololololololollolololololololololololololollolololololololololololololollolololololol/raw/main/lolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololollolololololololololololololol.lua"))()
	end
})

Tab:AddButton({
	Name = "饥饿的艺术家",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperRegex/RobloxScripts/main/DrawingScript.lua"))()
	end
})

Tab:AddButton({
	Name = "监狱人生",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
	end
})

Tab:AddButton({
	Name = "脚本F",
	Callback = function()		loadstring(game:HttpGet('loadstring(game:HttpGet("https://raw.githubusercontent.com/Wangzhehaoh/fly-away/main/how%20didb%20mOD"))()'))()
	end
})

Tab:AddButton({
	Name = "胭脂模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/USA868/USA--/main/%E5%8C%97%E7%BA%A6%E8%84%82%E8%82%AA?token=GHSAT0AAAAAACB6LLQXW62E3GRGCTS3O4RCZCMUN2Q"))()
		end
})

Tab:AddButton({
	Name = "脚本中心1.5",
	Callback = function()		loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()'))()
	end
})

Tab:AddButton({
	Name = "隐身（按E）",
	Callback = function()
		loadstring(game:HttpGet('http://pan.rlyun.asia/api/v3/file/get/15096/%E9%9A%90%E8%BA%AB?sign=e_W9VovlrlZFy_OwwmQSLn6POQ6FwtWXFvrb2lBaJq8%3D%3A0'))()
	end
})

Tab:AddButton({
	Name = "BOL",
	Callback = function()
	loadstring(game:HttpGet("https://github.com/ScriptKiddyQuinn/Blox-Hub-Version-1.3/blob/main/Blox%20Hub%20Version%201.3", true))()
	end
})

Tab:AddButton({
	Name = "音乐",
	Callback = function()		
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/music.lua"))()
    end
})

Tab:AddButton({
	Name = "轰炸（封号风险）",
	Callback = function()		
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/%E8%BD%B0%E7%82%B8.lua"))()
    end
})
Tab:AddButton({
	Name = "回答或死亡",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/jaeelin/S-Ware/main/S-WARE'))()
	end
})
Tab:AddButton({
	Name = "兵工厂",
	Callback = function()
		loadstring(game:HttpGet('http://pan.rlyun.asia/api/v3/file/get/15369/%E4%B9%92%E5%B7%A5%E5%8E%82?sign=pDWgMBQ_m8pjcTS9-o8N1zvCmYmc6LsQVjeDaypp0bw%3D%3A0'))()
	end
})
Tab:AddButton({
	Name = "鲨口求生",
	Callback = function()		
	loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
	end
})
Tab:AddButton({
	Name = "变大变小",
	Callback = function()	
	loadstring(game:HttpGet("http://pan.rlyun.asia/api/v3/file/get/18187/%E5%8F%98%E5%A4%A7%E5%8F%98%E5%B0%8F?sign=nR9TjQacuB58vmwKApyTIaWJykPqbr3KNPusu_MqNbg%3D%3A0"))()
	end
})
Tab:AddButton({
	Name = "bf神龙",
	Callback = function()		
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", true))()
    end
})
Tab:AddButton({
	Name = "技能大战2卡密：lMXJsryGVIajsQrMJmaVde3MIUoHCa",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/VxleLUA/Dynamic-Offical/main/System/GameChecker.lua"))()
	end
})
Tab:AddButton({
	Name = "军事大亨 查找干扰器",
	Callback = function()
	loadstring(game:HttpGet("https://oopshub.vercel.app/scripts/MT_event_Hacker.lua"))()
	end
})
Tab:AddButton({
	Name = "帝国中心（荐）",
	Callback = function()	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/aerocontentdeliverynetwork/3456465f7453x447r76h86856233423645756354b/master/loader.lua"))()
	end
})
Tab:AddButton({
	Name = "evade新版",
	Callback = function()	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Wangzhehaoh/fly-away/main/---EF---fluxus%20debtsesgh%20%E6%AC%A2%E8%BF%8E%E6%9D%A5%E5%88%B0%E8%84%9A%E6%9C%ACEF%20%E6%B5%8B%E8%AF%95%E7%89%88"))()
		end
})
Tab:AddButton({
	Name = "派系防御大亨",
	Callback = function()
	game:GetService("ReplicatedStorage").PlayerMoneyUpdate[game:GetService("Players").LocalPlayer.Name]:FireServer(999999999)
	end
})
Tab:AddButton({
	Name = "军事大亨",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/q94czk7E",true))()
	end
})
Tab:AddButton({
	Name = "通用ESP",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
	end
})
Tab:AddButton({
	Name = "导弹模拟器",
	Callback = function()	
	loadstring(game:HttpGet('https://raw.githubusercontent.com/KodaLINEN/NukeSim/main/Main'))()
	end
})	
Tab:AddButton({
	Name = "矿车",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Holdmyhacks/scripts/main/scripts", true))()
	end
})
Tab:AddButton({
	Name = "通用脚本",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/raw-scriptpastebin/raw/main/B_Genesis'))()
	end
})
Tab:AddButton({
	Name = "宠物模拟器",
	Callback = function()
	-- key from https://discord.gg/u7JNWQcgsU
getgenv().key = "projectWBIsAwesomeG8J7GJ678PY"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Muhammad6196/Project-WD/main/Main.lua"))()
    end
})

Tab:AddButton({
	Name = "伐木大亨2（翻译）",
	Callback = function()
		loadstring(game:HttpGet('http://pan.rlyun.asia/api/v3/file/get/15754/%E4%BC%90%E6%9C%A8?sign=cLaJaGOk-K27o0mPP7U3iELEvkgLCTCbTO90pUdHlBk%3D%3A0'))()
	end
})

Tab:AddButton({
	Name = "我的世界",
	Callback = function()	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0craftblox", true))()
		end
})

Tab:AddButton({
	Name = "破坏服务器",
	Callback = function()
		loadstring(game:HttpGet('http://pan.rlyun.asia/api/v3/file/get/15949/%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%A0%B4%E5%9D%8F?sign=Q_VUfUpVSxuE-F-OmONtmyZIHPTIwekar8I6bkpH9zI%3D%3A0'))()
	end
})

Tab:AddButton({
	Name = "踢人",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua'))()
	end
})

local Tab = Window:MakeTab({
	Name = "一路向西",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "防摔",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040712770")[1].Source)()
	end
})
Tab:AddButton({
	Name = "防套",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040719318")[1].Source)()
	end
})
Tab:AddButton({
	Name = "范围",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040722920")[1].Source)()
	end
})
Tab:AddButton({
	Name = "无后座，无限，超级",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040701935")[1].Source)()
	end
})

local Tab = Window:MakeTab({
	Name = "基础功能增加",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "最大血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
	end	 
})

Tab:AddTextbox({
	Name = "当前血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.Health = Value
	end	 
})

Tab:AddButton({
	Name = "修改玩家碰撞箱",
	Callback = function()
loadstring(game:HttpGet('https://rentry.co/aaaaaaaaaduckduck/raw'))()
end
})

Tab:AddButton({
	Name = "无限跳",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
    end
})

Tab:AddButton({	
Name = "工具包",	
Callback = function()
	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()	  	
     end
})

Tab:AddButton({
	Name = "脚本doors",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/whXp1Ca2"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "FE脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "C00lgui",
	Callback = function()
   loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
  	end    
})

Tab:AddButton({
	Name = "1x1x1x1",
	Callback = function()
     loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
  	end    
})

Tab:AddButton({
	Name = "控制",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
  	end    
})

Tab:AddButton({
	Name = "位置获取",
	Callback = function()
     loadstring(game:HttpGet("https://gist.githubusercontent.com/NortherScripts/8d954211b286d051c416cc5f88b3dc5f/raw/"))()
  	end    
})

Tab:AddButton({
	Name = "按键（任意选择按键",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/KeyBinds/main/KeyBinds-Source.lua"))()
  	end    
})

Tab:AddButton({
	Name = "动画中心",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "游戏脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Voodooware灾难蛋",
	Callback = function()
--[[▒█░░▒█ ▒█▀▀▀█ ▒█▀▀▀█ ▒█▀▀▄ ▒█▀▀▀█ ▒█▀▀▀█ 　 ▒█░░▒█ ░█▀▀█ ▒█▀▀█ ▒█▀▀▀ 　 ░█▀▀█ ▒█░░░ ▒█░░▒█ ░█▀▀█ ▒█░░▒█ ▒█▀▀▀█ 　 ▒█▀▀▀ ▒█▀▀█ ▒█▀▀▀ ▒█▀▀▀ ░▒█▒█░ ▒█░░▒█ ▒█░░▒█ ▒█░▒█ ▒█░░▒█ ▒█░░▒█ 　 ▒█▒█▒█ ▒█▄▄█ ▒█▄▄▀ ▒█▀▀▀ 　 ▒█▄▄█ ▒█░░░ ▒█▒█▒█ ▒█▄▄█ ▒█▄▄▄█ ░▀▀▀▄▄ 　 ▒█▀▀▀ ▒█▄▄▀ ▒█▀▀▀ ▒█▀▀▀ ░░▀▄▀░ ▒█▄▄▄█ ▒█▄▄▄█ ▒█▄▄▀ ▒█▄▄▄█ ▒█▄▄▄█ 　 ▒█▄▀▄█ ▒█░▒█ ▒█░▒█ ▒█▄▄▄ 　 ▒█░▒█ ▒█▄▄█ ▒█▄▀▄█ ▒█░▒█ ░░▒█░░ ▒█▄▄▄█ 　 ▒█░░░ ▒█░▒█ ▒█▄▄▄ ▒█▄▄▄ Gamelist:DoorsEvadeMuscle LegendsNinja LegendsNatural Disaster SurvivalTrollge Incident Fights RebornSlapBattles]]_G.VoodooWareOnTop = "VoodooWare吊打小学生脚本"loadstring(game:HttpGet("https://raw.githubusercontent.com/robloxbad114514/VoodooWare/main/GameIdentify", true))()
end
})

Tab:AddButton({
	Name = "Ohio doors",
	Callback = function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/rxn-xyz/Ohio./main/Ohio.lua",true))()
    end
})

Tab:AddButton({
	Name = "变怪物（可杀玩家）",
	Callback = function()
	loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
	end
})

Tab:AddButton({
	Name = "香蕉枪",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
    end
})

Tab:AddButton({
	Name = "超长j巴",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
	end
})

Tab:AddButton({
	Name = "动作",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/HrXgGiND"))()
end
})

Tab:AddButton({
	Name = "重力枪",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
	end
})

Tab:AddButton({
	Name = "操b脚本",
	Callback = function()
	--Variables
 
 
local SimpleSexGUI = Instance.new("ScreenGui")
 
local FGUI = Instance.new("Frame")
 
local btnNaked = Instance.new("TextButton")
 
local btnSex = Instance.new("TextButton")
 
local tbxVictim = Instance.new("TextBox")
 
local lblFUCKEMALL = Instance.new("TextLabel")
 
local ImageLabel = Instance.new("ImageLabel")
 
local lbltitle = Instance.new("TextLabel")
 
local TextLabel = Instance.new("TextLabel")
 
 
 
 
 
 
 
 
--Properties
 
SimpleSexGUI.Name = "SimpleSexGUI"
SimpleSexGUI.Parent = game.CoreGui
 
 
FGUI.Name = "FGUI"
FGUI.Parent = SimpleSexGUI
FGUI.BackgroundColor3 = Color3.new(255,255,255)
FGUI.BorderSizePixel = 1
FGUI.Position = UDim2.new(0,0, 0.667, 0)
FGUI.Size = UDim2.new(0,317, 0,271)
FGUI.Draggable = true
 
 
 
lbltitle.Name = "Title"
lbltitle.Parent = FGUI
lbltitle.BackgroundColor3 = Color3.new(255,255,255)
lbltitle.BorderSizePixel = 1
lbltitle.Position = UDim2.new (0, 0,-0.122, 0)
lbltitle.Size = UDim2.new (0, 317,0, 33)
lbltitle.Visible = true
lbltitle.Active = true
lbltitle.Draggable = false
lbltitle.Selectable = true
lbltitle.Font = Enum.Font.SourceSansBold
lbltitle.Text = "一个简单的操蛋脚本!!"
lbltitle.TextColor3 = Color3.new(0, 0, 0)
lbltitle.TextSize = 20
 
 
 
 
 
btnSex.Name = "Sex"
btnSex.Parent = FGUI
btnSex.BackgroundColor3 = Color3.new(255,255,255)
btnSex.BorderSizePixel = 1
btnSex.Position = UDim2.new (0.044, 0,0.229, 0)
btnSex.Size = UDim2.new (0, 99,0, 31)
btnSex.Visible = true
btnSex.Active = true
btnSex.Draggable = false
btnSex.Selectable = true
btnSex.Font = Enum.Font.SourceSansBold
btnSex.Text = "让我们操蛋吧!!"
btnSex.TextColor3 = Color3.new(0, 0, 0)
btnSex.TextSize = 20
 
 
 
 
tbxVictim.Name = "VictimTEXT"
tbxVictim.Parent = FGUI
tbxVictim.BackgroundColor3 = Color3.new(255,255,255)
tbxVictim.BorderSizePixel = 1
tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0)
tbxVictim.Size = UDim2.new (0, 133,0, 27)
tbxVictim.Visible = true
tbxVictim.Active = true
tbxVictim.Draggable = false
tbxVictim.Selectable = true
tbxVictim.Font = Enum.Font.SourceSansBold
tbxVictim.Text = "名字"
tbxVictim.TextColor3 = Color3.new(0, 0, 0)
tbxVictim.TextSize = 20
 
lblFUCKEMALL.Name = "FUCKEMALL"
lblFUCKEMALL.Parent = FGUI
lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255)
lblFUCKEMALL.BorderSizePixel = 1
lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0)
lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27)
lblFUCKEMALL.Visible = true
lblFUCKEMALL.Font = Enum.Font.SourceSansBold
lblFUCKEMALL.Text = "操蛋和操蛋"
lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0)
lblFUCKEMALL.TextSize = 20
 
ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = FGUI
ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..."
ImageLabel.BorderSizePixel = 1
ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0)
ImageLabel.Size = UDim2.new (0, 106,0, 121)
 
 
 
 
--Scripts
 
 
btnSex.MouseButton1Click:Connect(function()
 
local player = tbxVictim.Text
local stupid = Instance.new('Animation')
stupid.AnimationId = 'rbxassetid://148840371'
hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
pcall(function()
    hummy.Parent.Pants:Destroy()
end)
pcall(function()
    hummy.Parent.Shirt:Destroy()
end)
local notfunny = hummy:LoadAnimation(stupid)
notfunny:Play()
notfunny:AdjustSpeed(10)
while hummy.Parent.Parent ~= nil do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame
end
end)
end
})

local Tab = Window:MakeTab({
	Name = "监狱人生",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "变车模型",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/bianche"))()
  	end
})

Tab:AddButton({
	Name = "变死神（有惊喜仅自己可见）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/sb"))()    
  	end
})

Tab:AddButton({
	Name = "变钢铁侠（有惊喜别人能看见）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/sb2"))()
  	end
})

Tab:AddButton({
	Name = "手里剑（秒杀）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
  	end
})

Tab:AddButton({
	Name = "杀死全部（新版重复杀）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/shasi"))()
  	end
})

Tab:AddButton({
	Name = "无敌模式（别人可见）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/wudi"))()
  	end
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

local Section = Tab:AddSection({
	Name = "传送位置"
})

Tab:AddButton({
	Name = "警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})

Tab:AddButton({
	Name = "监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})

Tab:AddButton({
	Name = "罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})

Tab:AddButton({
	Name = "监狱室外",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})

local Tab = Window:MakeTab({
	Name = "旗帜大战🏳",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "↓以下是脚本↓"
})

Tab:AddButton({
	Name = "无限弹药",
	Callback = function()
     loadstring(game:HttpGet("https://www.textbin.online/paste.php?raw&id=214", true))()
  	end
})

local Section = Tab:AddSection({
	Name = "↑没有介绍↑"
})

local Tab = Window:MakeTab({
	Name = "兵工厂🗡",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "↓以下是脚本↓"
})

Tab:AddButton({
	Name = "兵工厂",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/SCRIPT_VIP.lua"))()
  	end
})

local Section = Tab:AddSection({
	Name = "↑以上是脚本↑"
})

local Section = Tab:AddSection({
	Name = "↓以下是功能介绍↓"
})

local Section = Tab:AddSection({
	Name = "[＋]锁定躯干"
})

local Section = Tab:AddSection({
	Name = "[＋]锁定头"
})

local Section = Tab:AddSection({
	Name = "[＋]随机瞄准"
})

local Section = Tab:AddSection({
	Name = "[＋]步行速度(好像不可以用"
})

local Section = Tab:AddSection({
	Name = "[＋]射速"
})

local Section = Tab:AddSection({
	Name = "[＋]无限弹药"
})

local Section = Tab:AddSection({
	Name = "[＋]隐形传态"
})

local Section = Tab:AddSection({
	Name = "[＋]隐形"
})

local Section = Tab:AddSection({
	Name = "[＋]EXP"
})

local Section = Tab:AddSection({
	Name = "[＋]瞄准"
})

local Section = Tab:AddSection({
	Name = "[＋]触发机器人"
})

local Section = Tab:AddSection({
	Name = "[＋]无扩散"
})

local Section = Tab:AddSection({
	Name = "[＋]没有后坐力"
})

local Section = Tab:AddSection({
	Name = "↑还有许多其他脚本↑"
})

local Tab = Window:MakeTab({
	Name = "私人聊天📞",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "↓以下是脚本↓"
})

Tab:AddButton({
	Name = "私人聊天",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/rouxhaver/scripts-3/main/hacker%20chat.lua"))()
  	end
})

local Section = Tab:AddSection({
	Name = "↑以上是脚本↑"
})

local Section = Tab:AddSection({
	Name = "↓以下是介绍↓"
})

local Section = Tab:AddSection({
	Name = "在文本框内输入"
})

local Section = Tab:AddSection({
	Name = "注意：两人同时执行此脚本即可在不被人发现的情况下通话"
})

local Tab = Window:MakeTab({
	Name = "旋转🙉",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "↓以下是脚本↓"
})


Tab:AddButton({
	Name = "旋转:)))",
	Callback = function()
     --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local speed = 50

local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
  	end
})

local Section = Tab:AddSection({
	Name = "↑以上是脚本↑"
})

local Section = Tab:AddSection({
	Name = "↓以下是介绍↓"
})


local Section = Tab:AddSection({
	Name = "能把你变成旋风小陀螺"
})

local Tab = Window:MakeTab({
	Name = "凹凸世界：自由丛林🌲",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "↓以下是脚本↓"
})


Tab:AddButton({
	Name = "获取",
	Callback = function()
     --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--https://www.roblox.com/games/7541759836/unnamed
loadstring(game:HttpGet("https://raw.githubusercontent.com/KissxTay/caramelldansen/main/chinese%20event", true))()
  	end
})
local Section = Tab:AddSection({
	Name = "↑以上是脚本↑"
})

local Section = Tab:AddSection({
	Name = "↓以下是介绍↓"
})


local Section = Tab:AddSection({
	Name = "无限获取裁判球"
})

local Section = Tab:AddSection({
	Name = "裁判球可以兑换皮肤"
})

local Section = Tab:AddSection({
	Name = "有格瑞－发型"
})

local Section = Tab:AddSection({
	Name = "有格瑞－头部"
})

local Section = Tab:AddSection({
	Name = "等"
})

local Section = Tab:AddSection({
	Name = "装饰有十字架，月亮，刀"
})

local Tab = Window:MakeTab({
	Name = "防踢(只支持部分",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "lol",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Anti-Kick/main/Anti%20Kick.lua"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "新的roblox界面",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "新的moon让画面变得更流畅",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Empire4946/Mightix/main/loader.lua",true))()
  	end
})

Tab:AddButton({
	Name = "red界面",
	Callback = function()
     loadstring(game:HttpGet("https://eternityhub.xyz/BetterRoblox/Loader"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "灭霸模拟器",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
      Name = "出生/复活的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,153,-20)
      end
})
    
Tab:AddButton({
      Name = "刷碎片/铸造的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,115,-695)
      end
      })
   
Tab:AddButton({
      Name = "商店/升级武器的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28,1061,1590)
      end
})
    
Tab:AddButton({
      Name = "时间宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(444.5,117,443.5)
      end
})
    
Tab:AddButton({
      Name = "空间宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-412,73,-444)
      end
})
    
Tab:AddButton({
      Name = "现实宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-420,13,690)
      end
})
    
Tab:AddButton({
      Name = "能量宝石怪的位置（建议开夜视）",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(433,55,-326)
      end
})
    
Tab:AddButton({
      Name = "灭霸模拟器快速自杀",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999,-4985,99999)
      end
})

local DoorsTab = Window:MakeTab({
	Name = "doors",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
 
local Section = DoorsTab:AddSection({
	Name = "Doors"
})
 
DoorsTab:AddButton({
	Name = "KINGHUB",
	Callback = function()
      		print("button pressed")
      loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
  	end    
})
 
DoorsTab:AddButton({
	Name = "Doors自走A-1000",
	Callback = function()
      		print("button pressed")
      loadstring(game:HttpGet('https://pastebin.com/raw/wjNJccfz'))()
  	end    
})
 
DoorsTab:AddButton({
	Name = "screech抱枕 pss~",
	Callback = function()
      		print("button pressed")
      loadstring(game:HttpGet('https://pastebin.com/raw/W6LhkY6r'))()
  	end    
})
 
DoorsTab:AddButton({
	Name = "冰脚本-Doors",
	Callback = function()
      		print("button pressed")
      loadstring(game:HttpGet('https://pastebin.com/raw/iRvZnnke'))()
  	end    
})
 
local Section = DoorsTab:AddSection({
	Name = "其他/娱乐"
})
 
DoorsTab:AddButton({
	Name = "变身q隐藏r退回变身(手机请用键盘脚本)",
	Callback = function()
      		print("button pressed")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
  	end    
})
 
DoorsTab:AddButton({
	Name = "十字架(不可用)",
	Callback = function()
      		print("button pressed")
      loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()local WaterMark = game:GetService("CoreGui").RobloxGui:FindFirstChildOfClass("ScreenGui")if not WaterMark then else    WaterMark:Destroy()end
  	end    
})

local boatTab = Window:MakeTab({
	Name = "造船寻宝",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
 
local Section = boatTab:AddSection({
	Name = "造船寻宝"
})
 
boatTab:AddButton({
	Name = "刷钱(不可取消)",
	Callback = function()
      		print("button pressed")
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua'),true))()
  	end    
})
 
local gunTab = Window:MakeTab({
	Name = "兵工厂",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
 
local Section = gunTab:AddSection({
	Name = "脚本"
})
 
gunTab:AddButton({
	Name = "脚本(搬)",
	Callback = function()
      		print("button pressed")
      loadstring(game:HttpGet(("https://darkhub.xyz/remote-script.lua"), true))()
  	end    
})
 
local keyboardTab = Window:MakeTab({
	Name = "键盘⌨",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
 
local Section = keyboardTab:AddSection({
	Name = "键盘脚本⌨"
})
 
keyboardTab:AddButton({
	Name = "键盘脚本",
	Callback = function()
      		print("button pressed")
      loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})
 
local woodTab = Window:MakeTab({
	Name = "伐木大亨2",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
 
local Section = woodTab:AddSection({
	Name = "伐木脚本"
})
 
woodTab:AddButton({
	Name = "伐木脚本(搬)需配合键盘脚本",
	Callback = function()
      		print("button pressed")
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/butter-hub/main/Butterhub.txt'))()
  	end    
})
 
local steepTab = Window:MakeTab({
	Name = "STEEP STEPS",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
 
local Section = steepTab:AddSection({
	Name = "传送"
})
 
steepTab:AddParagraph("如何传送成功教程","在FE中输入tptool，拿着物品即可点击传送，从一个地方一直传送很远的地方直到系统自动重生就可以")
 
local Section = steepTab:AddSection({
	Name = "第一维度"
})
 
steepTab:AddButton({
	Name = "100米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-64.00015258789062, 377.9997863769531, -495)
  	end    
})
 
steepTab:AddButton({
	Name = "200米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-449.999755859375, 716.005126953125, -317.0000305175781)
 
  	end    
})
 
steepTab:AddButton({
	Name = "300米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-523, 1071.004638671875, -125)
 
  	end    
})
 
steepTab:AddButton({
	Name = "400米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-485.36199951171875, 1428.4996337890625, -412.2453308105469)
 
  	end    
})
 
steepTab:AddButton({
	Name = "500米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-790.0836181640625, 1806.4996337890625, -721.1473388671875)
 
  	end    
})
 
steepTab:AddButton({
	Name = "600米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-706.7542724609375, 2147, -584.2627563476562)
 
  	end    
})
 
steepTab:AddButton({
	Name = "700米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1506.5, 2498.4716796875, -752)
 
  	end    
})
 
steepTab:AddButton({
	Name = "800米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1404.5, 2859.5693359375, -1326.5)
 
  	end    
})
 
steepTab:AddButton({
	Name = "900米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1111.5, 3215.467041015625, -1655.5)
 
  	end    
})
 
steepTab:AddButton({
	Name = "1000米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1007.5, 3552.466552734375, -999.5)
 
  	end    
})
 
local Section = steepTab:AddSection({
	Name = "第二维度"
})
steepTab:AddButton({
	Name = "100米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(446.9700012207031, 364.9999084472656, -496.38238525390625)
  	end    
})
 
steepTab:AddButton({
	Name = "200米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(429.0002746582031, 716.005126953125, -1182.0001220703125)
  	end    
})
 
steepTab:AddButton({
	Name = "300米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(308.000244140625, 1122.0048828125, -1624)
  	end    
})
 
steepTab:AddButton({
	Name = "400米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(815.0003051757812, 1429.0048828125, -2095)
  	end    
})
 
steepTab:AddButton({
	Name = "500米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(1026.000244140625, 1786.005126953125, -2831)
  	end    
})
 
steepTab:AddButton({
	Name = "600米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(894.2503051757812, 2143.5048828125, -3628)
  	end    
})
 
steepTab:AddButton({
	Name = "700米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-39.999820709228516, 2502.204833984375, -3415)
  	end    
})
 
steepTab:AddButton({
	Name = "800米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-941.499755859375, 2863.5048828125, -3219.50048828125)
  	end    
})
 
steepTab:AddButton({
	Name = "900米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1512.5001220703125, 3214.5048828125, -2700.00048828125)
  	end    
})
 
steepTab:AddButton({
	Name = "1000米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-2278.95556640625, 3574.524658203125, -2679.694091796875)
  	end    
})

local Tab = Window:MakeTab({
	Name = "其他游戏脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "力量传奇",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))() 
end
})
Tab:AddButton({
	Name = "忍者传奇",
	Callback = function()
pcall(loadstring(game:HttpGet("https://pastebin.com/raw/2UjrXwTV")))
end
})
Tab:AddButton({
	Name = "速度传奇",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/cwCdNqds"))()
end
})
Tab:AddButton({
	Name = "力量传奇（2）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/maddjester/MaddHub/main/GetKey.lua"))()
end
})
Tab:AddButton({
	Name = "伐木大亨",
	Callback = function()
loadstring(game:HttpGet('https://getexploits.com/key-system/',true))('https://da.com/936657404291084298/1006220505583460352/Script.txt')
	end
})
Tab:AddButton({
	Name = "动作",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TR1V5/TR1V5-V1/main/Main2"))()
	end
})
Tab:AddButton({
	Name = "海贼王",
	Callback = function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
	end
})
Tab:AddButton({
	Name = "破坏者迷团",
	Callback = function()
loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
	end
})
Tab:AddButton({
	Name = "兵工厂",
	Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Maikderninja/Maikderninja/main/PWNERHUB.lua"), true))()
	end
})
Tab:AddButton({
	Name = "进击的僵尸",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Zombie%20Attack", true))()
	end
})
Tab:AddButton({
	Name = "巨人模拟器",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/brownfieldd00/Roblox/main/Games/Giant%20Simulator%20Auto%20Rebirth.lua'))()
	end
})
Tab:AddButton({
	Name = "战斗勇士",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()
	end
})
Tab:AddButton({
	Name = "健壮传奇",
	Callback = function()
loadstring(game:HttpGet('https://ghostbin.co/paste/ctpa/raw'))()
	end
})
Tab:AddButton({
	Name = "HOHO",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/main/ScriptLoad.lua"))()
	end
})
Tab:AddButton({
	Name = "自然灾害模拟器",
	Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg", true))() 
end
})
Tab:AddButton({
	Name = "监狱人生",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
	end
})
Tab:AddButton({
	Name = "俄亥俄州",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/hkvHeHed",true))()
end
})
Tab:AddButton({
	Name = "bf",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua'))()
	end
})
local Tab = Window:MakeTab({
	Name = "FE",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "飞机V2",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/o45IJG3Z/raw'),true))()
	end
})
Tab:AddButton({
	Name = "蛇脚本",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
	end
})
Tab:AddButton({
	Name = "让别让别人控制自己",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/a7RTi4un/raw'),true))()
	end
})
Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})
Tab:AddButton({
	Name = "键盘",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
	end
})
Tab:AddButton({
	Name = "复仇者",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw'),true))()
	end
})
Tab:AddButton({
	Name = "鼠标",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
	end
})
Tab:AddButton({
	Name = "变怪物（可杀玩家）",
	Callback = function()
	loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
	end
})
Tab:AddButton({
	Name = "操b脚本",
	Callback = function()
	--Variables
 
 
local SimpleSexGUI = Instance.new("ScreenGui")
 
local FGUI = Instance.new("Frame")
 
local btnNaked = Instance.new("TextButton")
 
local btnSex = Instance.new("TextButton")
 
local tbxVictim = Instance.new("TextBox")
 
local lblFUCKEMALL = Instance.new("TextLabel")
 
local ImageLabel = Instance.new("ImageLabel")
 
local lbltitle = Instance.new("TextLabel")
 
local TextLabel = Instance.new("TextLabel")
 
 
 
 
 
 
 
 
--Properties
 
SimpleSexGUI.Name = "SimpleSexGUI"
SimpleSexGUI.Parent = game.CoreGui
 
 
FGUI.Name = "FGUI"
FGUI.Parent = SimpleSexGUI
FGUI.BackgroundColor3 = Color3.new(255,255,255)
FGUI.BorderSizePixel = 1
FGUI.Position = UDim2.new(0,0, 0.667, 0)
FGUI.Size = UDim2.new(0,317, 0,271)
FGUI.Draggable = true
 
 
 
lbltitle.Name = "Title"
lbltitle.Parent = FGUI
lbltitle.BackgroundColor3 = Color3.new(255,255,255)
lbltitle.BorderSizePixel = 1
lbltitle.Position = UDim2.new (0, 0,-0.122, 0)
lbltitle.Size = UDim2.new (0, 317,0, 33)
lbltitle.Visible = true
lbltitle.Active = true
lbltitle.Draggable = false
lbltitle.Selectable = true
lbltitle.Font = Enum.Font.SourceSansBold
lbltitle.Text = "一个简单的操蛋脚本!!"
lbltitle.TextColor3 = Color3.new(0, 0, 0)
lbltitle.TextSize = 20
 
 
 
 
 
btnSex.Name = "Sex"
btnSex.Parent = FGUI
btnSex.BackgroundColor3 = Color3.new(255,255,255)
btnSex.BorderSizePixel = 1
btnSex.Position = UDim2.new (0.044, 0,0.229, 0)
btnSex.Size = UDim2.new (0, 99,0, 31)
btnSex.Visible = true
btnSex.Active = true
btnSex.Draggable = false
btnSex.Selectable = true
btnSex.Font = Enum.Font.SourceSansBold
btnSex.Text = "让我们操蛋吧!!"
btnSex.TextColor3 = Color3.new(0, 0, 0)
btnSex.TextSize = 20
 
 
 
 
tbxVictim.Name = "VictimTEXT"
tbxVictim.Parent = FGUI
tbxVictim.BackgroundColor3 = Color3.new(255,255,255)
tbxVictim.BorderSizePixel = 1
tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0)
tbxVictim.Size = UDim2.new (0, 133,0, 27)
tbxVictim.Visible = true
tbxVictim.Active = true
tbxVictim.Draggable = false
tbxVictim.Selectable = true
tbxVictim.Font = Enum.Font.SourceSansBold
tbxVictim.Text = "名字"
tbxVictim.TextColor3 = Color3.new(0, 0, 0)
tbxVictim.TextSize = 20
 
lblFUCKEMALL.Name = "FUCKEMALL"
lblFUCKEMALL.Parent = FGUI
lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255)
lblFUCKEMALL.BorderSizePixel = 1
lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0)
lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27)
lblFUCKEMALL.Visible = true
lblFUCKEMALL.Font = Enum.Font.SourceSansBold
lblFUCKEMALL.Text = "操蛋和操蛋"
lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0)
lblFUCKEMALL.TextSize = 20
 
ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = FGUI
ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..."
ImageLabel.BorderSizePixel = 1
ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0)
ImageLabel.Size = UDim2.new (0, 106,0, 121)
 
 
 
 
--Scripts
 
 
btnSex.MouseButton1Click:Connect(function()
 
local player = tbxVictim.Text
local stupid = Instance.new('Animation')
stupid.AnimationId = 'rbxassetid://148840371'
hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
pcall(function()
    hummy.Parent.Pants:Destroy()
end)
pcall(function()
    hummy.Parent.Shirt:Destroy()
end)
local notfunny = hummy:LoadAnimation(stupid)
notfunny:Play()
notfunny:AdjustSpeed(10)
while hummy.Parent.Parent ~= nil do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame
end
end)
end
})
Tab:AddButton({
	Name = "香蕉枪)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
    end
})
Tab:AddButton({
	Name = "超长j巴",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
	end
})
Tab:AddButton({
	Name = "动作",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/HrXgGiND"))()
end
})
Tab:AddButton({
	Name = "重力枪",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
	end
})
Tab:AddButton({
	Name = "全(英文)",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/kEq7bdf9"))()
end
})

Tab:AddButton({
	Name = "飞行V3（隐藏）",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()
  	end    
})
Tab:AddButton({
	Name = "甩飞别人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})
Tab:AddButton({
	Name = "透视",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
  	end    
})
Tab:AddButton({
	Name = "吸取全部玩家",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/hQSBGsw2'))()
  	end    
})
Tab:AddButton({
	Name = "人物无敌",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})
Tab:AddButton({
	Name = "隐身(E)",
	Callback = function()
	 loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
  	end    
})
Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})
Tab:AddButton({
	Name = "飞车(E)(别人看到)",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "脚本大全",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "DOORS👁"
})

Tab:AddButton({
	Name = "最强",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/R8QMbhzv'))()
  	end    
})

Tab:AddButton({
	Name = "十字架",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/ibbWwU6q'))()
  	end
})

Tab:AddButton({
	Name = "伐木大亨2多功能",
	Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/butter-hub/main/Butterhub.txt'))()
  	end
})
Tab:AddButton({
	Name = "管理员脚本(不是伐木)",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})
Tab:AddButton({
	Name = "彩虹朋友2",
	Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0rainbow'))()
  	end    
})
Tab:AddButton({
	Name = "HoHo",
	Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
  	end    
})
Tab:AddButton({
	Name = "tds查看兵",
	Callback = function()
     local Towers = game:GetService("Players").LocalPlayer.PlayerGui.Interface.Root.Inventory.View.Frame.Frame.Frame
 
for _, v in pairs(Towers:GetDescendants()) do
	if v:IsA("ImageButton") then
        v.Visible = true
	end
end
  	end    
})
Tab:AddButton({
	Name = "阿尔宙斯V3.0 UI",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
  	end    
})
Tab:AddButton({
	Name = "力量传奇Muscle Legend",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/Roblox-Script/main/Muscle%20Legend"))()
  	end    
})
Tab:AddButton({
	Name = "bark2.0",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/bark2.0.lua"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "造船寻宝",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})



local Section = Tab:AddSection({
	Name = "付费功能"
})




Tab:AddButton({
	Name = "自动刷金条",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/Lyy77rnr",true))()
  	end
})

Tab:AddButton({
	Name = "工具包",
	Callback = function()
	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()	
  	end
})
Tab:AddButton({
	Name = "防止掉线（反挂机）",
	Callback = function()
	print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
  	end
})
local Tab = Window:MakeTab({
	Name = "监狱人生",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "PRISONWARE V1.3",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
  	end    
})

Tab:AddButton({
	Name = "PRISONWARE V1.5",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
	end
})

Tab:AddButton({
	Name = "警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})

Tab:AddButton({
	Name = "监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})

Tab:AddButton({
	Name = "罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})

Tab:AddButton({
	Name = "监狱室外",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})

local Tab = Window:MakeTab({
	Name = "鲨口求生2",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddDropdown({
	Name = "免费船只",
	Default = "1",
	Options = {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine",  "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"},
	Callback = function(Value)
local ohString1 = (Value)

game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)
	end    
})

Tab:AddButton({
	Name = "自动杀鲨鱼",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "FE脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "C00lgui",
	Callback = function()
     loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
  	end    
})

Tab:AddButton({
	Name = "1x1x1x1",
	Callback = function()
     loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
  	end    
})

Tab:AddButton({
	Name = "动画中心",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "脚本作者北约",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "脚本doors",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/whXp1Ca2"))()
  	end    
})

Tab:AddButton({
	Name = "脚本Break in",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/28Z4ExEn", true))()
  	end
})

local Tab = Window:MakeTab({
	Name = "中心脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "不知道",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/TUPERX/TUPERX/Main/MenuBF/README.md'))()
   	end
})
Tab:AddButton({
	Name = "X中枢",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt"))()
   	end
})
 Tab:AddButton({
	Name = "脚本Break in",
	Callback = function()	
loadstring(game:HttpGet('https://raw.githubusercontent.com/SHAREHACK/script/main/fusion1'))()
   	end
})
 
Tab:AddButton({
	Name = "主X集线器",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BlodyXHub/Xeniel_All/main/ForAll"))()
   	end
})
 
Tab:AddButton({
	Name = "中心",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/StringV2/StringHub/main/BF.txt", true))()
   	end
})
 Tab:AddButton({
	Name = "HOHO",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
   	end
})
 
Tab:AddButton({
	Name = "PL",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/WindowsXp12/BlxzeRBLX/main/BLxzeHub.lua"))()
   	end
})
 
Tab:AddButton({
	Name = "中心1",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/2XHUB-UPDBIG/main/README.md', true))()
   	end
})
 
Tab:AddButton({
	Name = "X中心",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/sxnumz/Script/main/SxnumzHubFree.txt'))();
   	end
})
 
Tab:AddButton({
	Name = "不可用",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrMaxNaJaEz/New-MrMaxNaJa-NaJa/main/README.md"))()
   	end
})
 
Tab:AddButton({
	Name = "东中心",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Brineeee/EastHub/main/lua"))()
   	end
})
 
Tab:AddButton({
	Name = "千叶中心",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/KindIhave/ChibaHuB/main/Chiba-BF.txt'))()
   	end
})
 
Tab:AddButton({
	Name = "纳尔中心",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xOne2/One-x-HUB/main/README.md"))()
   	end
})
 
Tab:AddButton({
	Name = "ZHP",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", true))()
   	end
})
Tab:AddButton({
	Name = "中心3",
	Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Putaya/HITBOXKAK/main/PutayaFree"), true))()
   	end
})

Tab:AddButton({
	Name = "邪恶",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Natthawat69/EvilHub-FREE/main/Script.lua"))()
   	end
})
Tab:AddButton({
	Name = "项目",
	Callback = function()
loadstring(game:HttpGet"https://rawscripts.net/raw/Project-Meow_421")()
   	end
})
Tab:AddButton({
	Name = "主",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/destylol/masterhubv311/itachi/Main.lua"))()
   	end
})
Tab:AddButton({
	Name = "OUW",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/slightten/ouwHub/main/ouwHub'))()
   	end
})
Tab:AddButton({
	Name = "SMZ",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Frerfgzz/free-script/main/SMZHUBv2BETA"))()
   	end
})
Tab:AddButton({
	Name = "岩浆中心",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/accountnop/magmaisgay/main/magma", true))()
   	end
})
 Tab:AddButton({
	Name = "标志武器",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/dhsHESsm'))()
   	end
})
Tab:AddButton({
    Name = "能力中心",
    Callback = function()
        local SET_UP = CustomLoader("能力中心|加载...", "json", {
            URL = "https://raw.githubusercontent.com/Hanabi112/Ability-Hub-Free-Script/main/Abiliity-Hub.json";
        })();
    end,
})
 
Tab:AddButton({
	Name = "元仓库",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/x2FIWz/SCRIPT/main/MOBILE/METAWARE.lua'))()
  	end
})
local Tab = Window:MakeTab({
	Name = "北约传奇",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "级速传奇",
	Callback = function()
	--current user using the Gui-XxYouMetDeathXx

--This Gui Made By VesilicsHD--

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local AutoXP = Instance.new("TextButton")
local AutoRebirth = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local Game = Instance.new("TextLabel")
--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.Active = true
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BackgroundTransparency = 0.20000000298023
Main.Position = UDim2.new(0.385036498, 0, 0.133200794, 0)
Main.Size = UDim2.new(0, 395, 0, 271)
Main.Draggable = true

AutoXP.Name = "你妈身体健康"
AutoXP.Parent = Main
AutoXP.BackgroundColor3 = Color3.new(0, 0, 0)
AutoXP.Position = UDim2.new(0.225957587, 0, 0.269300699, 0)
AutoXP.Size = UDim2.new(0, 200, 0, 50)
AutoXP.Font = Enum.Font.GothamSemibold
AutoXP.Text = "你妈身体健康"
AutoXP.TextColor3 = Color3.new(1, 1, 1)
AutoXP.TextScaled = true
AutoXP.TextSize = 24
AutoXP.TextWrapped = true
AutoXP.MouseButton1Down:connect(function()
while wait(0.1) do
local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3)
end

while wait(0.1) do
local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3)
end

while wait(0.1) do
local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3)
end

while wait(0.1) do
local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3)
end

while wait(0.1) do
local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Gem" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Yellow Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Orange Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3) local A_1 = "collectOrb" local A_2 = "Blue Orb" local A_3 = "City" local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent Event:FireServer(A_1, A_2, A_3)
end
end)

AutoRebirth.Name = "北约中心"
AutoRebirth.Parent = Main
AutoRebirth.BackgroundColor3 = Color3.new(0, 0, 0)
AutoRebirth.Position = UDim2.new(0.225957587, 0, 0.586643875, 0)
AutoRebirth.Size = UDim2.new(0, 200, 0, 50)
AutoRebirth.Font = Enum.Font.GothamSemibold
AutoRebirth.Text = "北约刷级"
AutoRebirth.TextColor3 = Color3.new(1, 1, 1)
AutoRebirth.TextScaled = true
AutoRebirth.TextSize = 24
AutoRebirth.TextWrapped = true
AutoRebirth.MouseButton1Down:connect(function()
while wait(0.1) do 
local A_1 = "rebirthRequest"
local Event = game:GetService("ReplicatedStorage").rEvents.rebirthEvent
Event:FireServer(A_1)
end
end)

Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.new(0, 0, 0)
Credits.Size = UDim2.new(0, 395, 0, 37)
Credits.Font = Enum.Font.GothamSemibold
Credits.Text = "北约"
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.TextScaled = true
Credits.TextSize = 14
Credits.TextWrapped = true

Game.Name = "Game"
Game.Parent = Main
Game.BackgroundColor3 = Color3.new(0, 0, 0)
Game.Position = UDim2.new(0, 0, 0.863468647, 0)
Game.Size = UDim2.new(0, 395, 0, 37)
Game.Font = Enum.Font.GothamSemibold
Game.Text = "Legends Of Speed Hack Script"
Game.TextColor3 = Color3.new(1, 1, 1)
Game.TextScaled = true
Game.TextSize = 14
Game.TextWrapped = true
-- Scripts:
	end
})

local Tab = Window:MakeTab({
	Name = "21北约",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "聊天",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser", true))({
    Method = 1, -- Method 1 is the main method. Method two is emojis. Method 3 is full transparency, no special symbols.
    Keybind = "f", -- Usually defaulted to F. You can change this keybind by replacing the string with a letter. Must be lowercase
    ShowMethodDictionary = true -- Shows you the full list of words that you can say with the method. Press FN + F9 to see this dictionary.
})


-- https://discord.gg/RXUwZHjNKm
-- This page will be always updated no matter what.
-- How many times you have execution will be logged. Your username, ID or other sensetive details are not being logged through BetterBypasser. By executing the product, you've just increased a global execution number by 1. That's it. I don't give a shit about your details lmao
	end
})

local other = Window:MakeTab({
    Name = "兵工厂",
    Icon = "rbxassetid://13519683179",
    PremiumOnly = false
})

local Section = other:AddSection({
	Name = "↓开始↓"
})

other:AddButton({
	Name = "兵工厂3",
	Callback = function()
      	loadstring(game:HttpGet(("https://raw.githubusercontent.com/Maikderninja/Maikderninja/main/PWNERHUB.lua"), true))()
  	end
})

other:AddButton({
	Name = "兵工厂2",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init'), true))()
  	end
})

other:AddButton({
	Name = "兵工厂",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
  	end
})

local other = Window:MakeTab({
    Name = "力量传奇",
    Icon = "rbxassetid://13519683179",
    PremiumOnly = false
})

local Section = other:AddSection({
	Name = "↓用电脑↓"
})

other:AddButton({
	Name = "电脑",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end
})

local Section = other:AddSection({
	Name = "↓开始↓"
})

other:AddButton({
	Name = "力量传奇修改",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
  	end
})

other:AddButton({
	Name = "力量传奇",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/littlegui/main/MuscleLegends"))()
  	end
})

local other = Window:MakeTab({
    Name = "变异微笑",
    Icon = "rbxassetid://13519683179",
    PremiumOnly = false
})

local Section = other:AddSection({
	Name = "↓开始吧！USA！↓"
})

other:AddButton({
	Name = "变异微笑",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/InfectiousSmile.lua", true))()
  	end
})

local other = Window:MakeTab({
    Name = "极速传奇",
    Icon = "rbxassetid://13519683179",
    PremiumOnly = false
})

other:AddParagraph("提示","放屁小子")

local Section = other:AddSection({
	Name = "↓开始↓"
})

local Section = other:AddSection({
	Name = "X-自动离开"
})

other:AddButton({
	Name = "极速传奇",
	Callback = function()
      	loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97"))()
  	end
})

local player = Window:MakeTab({
	Name = "视觉",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "动态模糊",
	Callback = function()
       	local camera = workspace.CurrentCamera
local blurAmount = 10
local blurAmplifier = 5
local lastVector = camera.CFrame.LookVector

local motionBlur = Instance.new("BlurEffect", camera)

local runService = game:GetService("RunService")

workspace.Changed:Connect(function(property)
 if property == "CurrentCamera" then
  print("Changed")
  local camera = workspace.CurrentCamera
  if motionBlur and motionBlur.Parent then
   motionBlur.Parent = camera
  else
   motionBlur = Instance.new("BlurEffect", camera)
  end
 end
end)

runService.Heartbeat:Connect(function()
 if not motionBlur or motionBlur.Parent == nil then
  motionBlur = Instance.new("BlurEffect", camera)
 end
 
 local magnitude = (camera.CFrame.LookVector - lastVector).magnitude
 motionBlur.Size = math.abs(magnitude)*blurAmount*blurAmplifier/2
 lastVector = camera.CFrame.LookVector
end)
  	end
})

player:AddButton({ 
	Name = "光影（浅）",
	Callback = function()
       	loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
  	end
})

player:AddButton({ 
	Name = "光影（深）",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  	end
})

local player = Window:MakeTab({
	Name = "通用中心(会覆盖)",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "PC端",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/RTrade/Voidz/main/Games.lua'),true))()
  	end
})

local player = Window:MakeTab({
	Name = "apeirophopia",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet('https://pastebin.com/raw/0ptVa7Dn'))()
  	end
})

local player = Window:MakeTab({
	Name = "疯狂彩蛋",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})


player:AddButton({ 
	Name = "1(推荐搭配飞行)",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
  	end
})
local player = Window:MakeTab({
	Name = "生存杀手",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/Kiroftt/Survive-The-Killer/main/Simple'))();
  	end
})
local player = Window:MakeTab({
	Name = "ZO ぞ SAMURAI",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Blackout4781/Project-Sinister/main/ProjectSinisterLoader"))()
  	end
})

local player = Window:MakeTab({
	Name = "杀手vs警长",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0murder", true))()
  	end
})
local player = Window:MakeTab({
	Name = "3008",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/scripts/main/3008.lua')()
  	end
})

local player = Window:MakeTab({
	Name = "打墙模拟器",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/JunBloxYTPlayz/SORIX-Hub/main/Punch%20Wall%20Simulator"))();
  	end
})

local player = Window:MakeTab({
	Name = "逃出建筑",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
  	end
})

local player = Window:MakeTab({
	Name = "在51区生存",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1（会覆盖）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ZONE100/ZoneHub/main/MultiGames"))()
  	end
})

local player = Window:MakeTab({
	Name = "能力大战",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1（会覆盖）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/castycheat/abilitywars/main/Protected%20(29).lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "piggy",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "感谢扫兴客提供的脚本",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0piggy2", true))()
  	end
})

local player = Window:MakeTab({
	Name = "rooms自动行走（不要碰方向键）",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "感谢扫兴客提供的脚本",
	Callback = function()
      	function getplrsname()
for i,v in pairs(game:GetChildren()) do
if v.ClassName == "Players" then
return v.Name
end
end
end
local players = getplrsname()
local plr = game[players].LocalPlayer
coroutine.resume(coroutine.create(function()
while wait(1) do
coroutine.resume(coroutine.create(function()
for _,v in pairs(game[players]:GetPlayers()) do
if v.Name ~= plr.Name and v.Character then
v.Character.HeadHB.CanCollide = false
v.Character.HeadHB.Transparency = 10
v.Character.HeadHB.Size = Vector3.new(100,100,100)
v.Character.HumanoidRootPart.CanCollide = false
v.Character.HumanoidRootPart.Transparency = 10
v.Character.HumanoidRootPart.Size = Vector3.new(100,100,100)
end
end
end))
end
end))
function CreateSG(name,parent,face)
local SurfaceGui = Instance.new("SurfaceGui",parent)
SurfaceGui.Parent = parent
SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SurfaceGui.Face = Enum.NormalId[face]
SurfaceGui.LightInfluence = 0
SurfaceGui.ResetOnSpawn = false
SurfaceGui.Name = name
SurfaceGui.AlwaysOnTop = true
local Frame = Instance.new("Frame",SurfaceGui)
Frame.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
Frame.Size = UDim2.new(1,0,1,0)
end
while wait(1) do
for i,v in pairs (game:GetService("Players"):GetPlayers()) do
if v ~= game:GetService("Players").LocalPlayer and v.Character ~= nil and
v.Character:FindFirstChild("LowerTorso") and v.Character.LowerTorso:FindFirstChild("cham") == nil then
for i,v in pairs (v.Character:GetChildren()) do
if v:IsA("MeshPart") or v.Name == "LowerTorso" then
CreateSG("cham",v,"Back")
CreateSG("cham",v,"Front")
CreateSG("cham",v,"Left")
CreateSG("cham",v,"Right")
CreateSG("cham",v,"Right")
CreateSG("cham",v,"Top")
CreateSG("cham",v,"Bottom")
end
end
end
end
end
  	end
})

local player = Window:MakeTab({
	Name = "doors",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
  	end
})

player:AddButton({ 
	Name = "微山",
	Callback = function()
      	--微山doors 1.0.2
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
  	end
})

player:AddButton({ 
	Name = "开启不可能模式",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/Ukazix/impossible-mode/main/Protected_79.lua.txt'))() 
  	end
})

player:AddButton({ 
	Name = "吸铁石",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
  	end
})

player:AddButton({ 
	Name = "穿墙",
	Callback = function()
      	loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
  	end
})

player:AddButton({ 
	Name = "夜视仪",
	Callback = function()
      	_G.OnShop = true

loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
  	end
})

player:AddButton({ 
	Name = "手电筒",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
  	end
})

player:AddButton({ 
	Name = "剪刀",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
  	end
})

player:AddButton({ 
	Name = "骷髅钥匙",
	Callback = function()
      	local item = game:GetObjects("rbxassetid://11697889137")[1]item.Parent = game.Players.LocalPlayer.Backpack
  	end
})

player:AddButton({ 
	Name = "紫色手电筒（在电梯购买东西的时候使用）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight"))()
  	end
})

player:AddButton({ 
	Name = "激光枪",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
  	end
})

player:AddButton({ 
	Name = "臭猫",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()
  	end
})

player:AddButton({ 
	Name = "变身（搭配键盘r和q）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
  	end
})

player:AddButton({ 
	Name = "哈利路亚手雷",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "巴掌",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomScriptr3/gggggggg/main/lolez.txt", true))()
  	end
})

player:AddButton({ 
	Name = "2",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
  	end
})

player:AddButton({ 
	Name = "3",
	Callback = function()
      	loadstring(game:HttpGet("https://scriptblox.com/raw/UPDATE-Slap-Battles-OP-RC-HUB-9830"))()
  	end
})

player:AddButton({ 
	Name = "4",
	Callback = function()
      	loadstring(game:HttpGet("https://scriptblox.com/raw/Slap-Battles-Scriptmaster-Hub-10755"))()
  	end
})

player:AddButton({ 
	Name = "大逃杀",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
  	end
})

local player = Window:MakeTab({
	Name = "hoho",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/main/ScriptLoad.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "我的餐厅",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/roblox-scripts/main/mr.lua"))()
  	end
})
local player = Window:MakeTab({
	Name = "成为跑酷忍者",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
        -------hit sub and like! THNKYOU!  -JA1R4 GAMING----


loadstring(game:HttpGet("https://raw.githubusercontent.com/Min1273/n-to/main/README.md"))()
  	end
})

local player = Window:MakeTab({
	Name = "起床",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1（搭配键盘左shift使用）",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  	end
})

local player = Window:MakeTab({
	Name = "强壮传奇",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/1337xyz/robloxscripts/master/ThickLegends.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "bf",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "自动拿宝箱",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/SHAREHACK/bloxfruit/main/autochest'))()
  	end
})
player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/BLCK"))()
  	end
})
player:AddButton({ 
	Name = "2",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'))()
  	end
})

local player = Window:MakeTab({
	Name = "造船寻宝",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet('https://ppearl.vercel.app'))()
  	end
})

player:AddButton({
	Name = "复制密钥",
	Callback = function()
     setclipboard("Pearl_876tsdfhba67sdbhyaggv2")
  	end
})

player:AddButton({ 
	Name = "2",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/XRoLLu/UWU/main/BUILD%20A%20BOAT%20FOR%20TREASURE.lua'))()
  	end
})

local Tab = Window:MakeTab({
	Name = "复制Q群号",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "复制Q群",
	Callback = function()
     setclipboard("814705174")
  	end
})

Tab:AddButton({
	Name = "好玩的",
	Callback = function()
	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubLoader.lua"))()
