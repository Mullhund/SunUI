local ADDON_NAME, ns = ...
local oUF = ns.oUF or oUF 
local lib = ns.lib
local S, C, L, DB = unpack(select(2, ...))
local Core = LibStub("AceAddon-3.0"):GetAddon("Core")
local Module = Core:NewModule("UnitFrame")
if DB.Nuke == true then return end
local showfaketarget = false -- fake target bars that spawn if you don't have anything targeted
function Module:OnInitialize()
C = UnitFrameDB
  -- compatibility with older versions cfg
--if not FTpos then FTpos = {"TOPLEFT", "oUF_monoTargetFrame", "BOTTOMLEFT", 0, -37} end
  -----------------------------
  -- STYLE FUNCTIONS
  -----------------------------
	local BarFader = function(self) 
         self.BarFade = C["EnableBarFader"]
         self.BarFaderMinAlpha = 0--渐隐时的最小透明度。要么在cfg.lua中添加此项，或者可以改为0到1之间的数字。 
         self.BarFaderMaxAlpha = 1 
	end
  local function genStyle(self)
	self.menu = lib.menu
	self:RegisterForClicks("AnyUp")
    self:SetAttribute("*type2", "menu")
    self:SetScript("OnEnter", UnitFrame_OnEnter)
    self:SetScript("OnLeave", UnitFrame_OnLeave)
	
    lib.gen_hpbar(self)
    lib.gen_hpstrings(self)
    lib.gen_ppbar(self)
    lib.gen_highlight(self)
    lib.gen_RaidMark(self)
	self.Health.frequentUpdates = true
	if C["ReverseHPbars"] then 
		if C["ClassColor"] then 
			self.colors.smooth = {DB.MyClassColor.r,DB.MyClassColor.g,DB.MyClassColor.b,DB.MyClassColor.r,DB.MyClassColor.g,DB.MyClassColor.b,DB.MyClassColor.r,DB.MyClassColor.g,DB.MyClassColor.b}
		else
			self.colors.smooth = {1,0,0,0.77,0.12,0.23, 0.05,0.05,0.05} 
		end
	else 
		if C["ClassColor"] then 
			self.colors.smooth = {DB.MyClassColor.r,DB.MyClassColor.g,DB.MyClassColor.b,DB.MyClassColor.r,DB.MyClassColor.g,DB.MyClassColor.b,DB.MyClassColor.r,DB.MyClassColor.g,DB.MyClassColor.b}
		else
			--self.colors.smooth = {1,0,0, .7,.41,.44, .3,.3,.3}
			self.colors.smooth = {1,0,0,1,0,0,1,0,0}
		end
	end
    self.Health.colorSmooth = true
	--self.Health.colorHealth = true self.colors.health = {.6,.3,.3}
	self.Health.bg.multiplier = 0.3
	self.Health.colorDisconnected = true
  end

  --the player style
  local function CreatePlayerStyle(self, unit)
    self.width = C["Width"]
    self.height = C["Height"]
    self.mystyle = "player"
    genStyle(self)
	BarFader(self)
    self.Health.Smooth = true
    self.Power.frequentUpdates = true
    self.Power.Smooth = true
    self.Power.colorPower = true
    self.Power.bg.multiplier = 0.3
    lib.gen_castbar(self)
    lib.gen_portrait(self)
    lib.gen_mirrorcb(self)
    lib.gen_ppstrings(self)
    lib.gen_Runes(self)
    lib.gen_TotemBar(self)
    lib.gen_InfoIcons(self)
    lib.gen_specificpower(self)
    lib.gen_combat_feedback(self)
	lib.gen_EclipseBar(self)
	lib.gen_alt_powerbar(self)
    lib.createAuras(self)
	lib.createBuffs(self)
    lib.createDebuffs(self)
	lib.gen_swing_timer(self)
    self:Size(self.width,self.height)
  end  
  
  --the target style
  local function CreateTargetStyle(self, unit)
    self.width = C["Width"]
    self.height = C["Height"]
    self.mystyle = "target"
    genStyle(self)
	if C["ClassColor"] then
	self.Health.colorClass = true
	self.Health.colorReaction = true
	end
    self.Health.Smooth = true
    self.Power.frequentUpdates = true
    self.Power.Smooth = true
    self.Power.colorPower = true
    self.Power.bg.multiplier = 0.3
	self.Health.colorTapping = true
    lib.gen_castbar(self)
    lib.gen_portrait(self)
    lib.createAuras(self)
    lib.gen_ppstrings(self)
    lib.gen_cp(self)
	lib.gen_combat_feedback(self)
    if showfaketarget then lib.gen_faketarget(self) end
	self:Size(self.width,self.height)
	--self.Auras.onlyShowPlayer = true
  end  
  
  --the tot style
  local function CreateToTStyle(self, unit)
    self.width = C["PetWidth"]
    self.height = C["PetHeight"]
    self.mystyle = "tot"
    genStyle(self)
    if C["ClassColor"] then
	self.Health.colorClass = true
	self.Health.colorReaction = true
	end
    self.Power.colorPower = true
    self.Power.bg.multiplier = 0.3
    if unit == "targettarget" then 
		--lib.createBuffs(self)
		--lib.createDebuffs(self) 
	end
	
	self:Size(self.width,self.height)
  end 
  
  --the pet style
  local function CreatePetStyle(self, unit)
    self.width = C["PetWidth"]
    self.height = C["PetHeight"]
    self.mystyle = "pet"
    self.disallowVehicleSwap = true
    genStyle(self)
    self.Power.frequentUpdates = true
    self.Power.colorPower = true
    self.Power.bg.multiplier = 0.3
    lib.gen_castbar(self)
    --lib.createBuffs(self)
    lib.createDebuffs(self)
	self:Size(self.width,self.height)
  end  

  --the focus style
  local function CreateFocusStyle(self, unit)
    self.width = C["PetWidth"]
    self.height = C["PetHeight"]
    self.mystyle = "focus"
    genStyle(self)
    self.Power.frequentUpdates = true
    self.Power.colorPower = true
    self.Power.bg.multiplier = 0.3
    lib.gen_castbar(self)
	lib.createDebuffs(self)
	self:Size(self.width,self.height)
  end
  
  --partypet style
  local function CreatePartyPetStyle(self)
    self.width = C["BossHeight"]+C["BossHeight"]/3+3
    self.height = self.width
    self.mystyle = "partypet"
    genStyle(self)
    self.Range = {
      insideAlpha = 1,
      outsideAlpha = 0.6}
  end
  
  --the party style
  local function CreatePartyStyle(self)
	if self:GetAttribute("unitsuffix") == "pet" then
      return CreatePartyPetStyle(self)
    end
    self.width = C["BossWidth"]
    self.height = C["BossHeight"]
    self.mystyle = "party"
    genStyle(self)
	if C["ClassColor"] then
	self.Health.colorClass = true
	self.Health.colorReaction = true
	end
    self.Health.Smooth = true
    self.Power.frequentUpdates = true
    self.Power.colorPower = true
    self.Power.bg.multiplier = 0.3
    self.Range = {
      insideAlpha = 1,
      outsideAlpha = 0.6}
    --lib.gen_portrait(self)
    lib.createBuffs(self)
    lib.createDebuffs(self)
    lib.gen_InfoIcons(self)
    lib.gen_targeticon(self)
	lib.gen_LFDindicator(self)
	lib.gen_specificpower(self)
  end  
  
  --arena frames
  local function CreateArenaStyle(self, unit)
    self.width =C["BossWidth"]
    self.height = C["BossHeight"]
    self.mystyle = "arena"
    genStyle(self)
    self.Health.Smooth = true
    self.Power.frequentUpdates = true
    self.Power.colorPower = true
    self.Power.bg.multiplier = 0.3
	--lib.gen_portrait(self)
    lib.createBuffs(self)
    lib.createDebuffs(self)
    lib.gen_ppstrings(self)
    lib.gen_castbar(self)
    lib.gen_arenatracker(self)
    lib.gen_targeticon(self)
	self:Size(self.width,self.height)
  end

  --mini arena targets
  local function CreateArenaTargetStyle(self, unit)
    self.width = C["BossHeight"]+C["BossHeight"]/3+3
    self.height = self.width
    self.mystyle = "arenatarget"
    genStyle(self)
    
	self:Size(self.width,self.height)
  end  
  
  --boss frames
  local function CreateBossStyle(self, unit)
    self.width = C["BossWidth"]
    self.height = C["BossHeight"]
    self.mystyle = "boss"
    genStyle(self)
	if C["ClassColor"] then
	self.Health.colorClass = true
	self.Health.colorReaction = true
	end
    self.Power.frequentUpdates = true
    self.Power.colorPower = true
    self.Power.bg.multiplier = 0.3
	lib.createBuffs(self)
    lib.gen_castbar(self)
	lib.gen_alt_powerbar(self)
	self:Size(self.width,self.height)
  end  

  -----------------------------
  -- SPAWN UNITS
  -----------------------------
  oUF:RegisterStyle("monoPlayer", CreatePlayerStyle)
  oUF:RegisterStyle("monoTarget", CreateTargetStyle)
  oUF:RegisterStyle("monoToT", CreateToTStyle)
  oUF:RegisterStyle("monoFocus", CreateFocusStyle)
  oUF:RegisterStyle("monoPet", CreatePetStyle)
  oUF:RegisterStyle("monoParty", CreatePartyStyle)
  oUF:RegisterStyle("monoArena", CreateArenaStyle)
  oUF:RegisterStyle("monoArenaTarget", CreateArenaTargetStyle)
  oUF:RegisterStyle("monoBoss", CreateBossStyle)
  
oUF:Factory(function(self)
  self:SetActiveStyle("monoPlayer")
  local player = self:Spawn("player", "oUF_monoPlayerFrame")
  player:Point("CENTER", "UIParent", "CENTER", -225, -208)
  player:SetScale(C["Scale"])
  
  self:SetActiveStyle("monoTarget")
  local target = self:Spawn("target", "oUF_monoTargetFrame")
  target:Point("CENTER", "UIParent", "CENTER", 225, -208)
  target:SetScale(C["Scale"])
  
  if C["showtot"] then
    self:SetActiveStyle("monoToT")
    local tot = self:Spawn("targettarget", "oUF_mono_ToTFrame")
	tot:Point("CENTER", "oUF_monoTargetFrame", "CENTER", -250, 0)
	tot:SetScale(C["PetScale"])
  end
  
  if C["showfocus"] then
    self:SetActiveStyle("monoFocus")
    local focus = self:Spawn("focus", "oUF_monoFocusFrame")
	focus:Point("RIGHT", "UIParent", "RIGHT", -150, -100)
	focus:SetScale(C["PetScale"])
	self:SetActiveStyle("monoToT")
	local focust = self:Spawn("focustarget", "oUF_monoFocusTargetFrame")
	focust:Point("TOPLEFT", "oUF_monoFocusFrame", "BOTTOMLEFT", 0, -38)
	focust:SetScale(C["PetScale"])
  else
    oUF:DisableBlizzard'focus'
  end
  
  if C["showpet"] then
    self:SetActiveStyle("monoPet")
    local pet = self:Spawn("pet", "oUF_monoPetFrame")
	pet:Point("TOPRIGHT", "oUF_monoPlayerFrame", "TOPLEFT", -5, 0)
	pet:SetScale(C["PetScale"])
  end
  
  local w = C["BossWidth"]
  local h = C["BossHeight"]
  local s = C["BossScale"]
  local ph = 1.5*h+3

  local init = [[
	self:Width(%d)
	self:Height(%d)
	self:SetScale(%f)
	if self:GetAttribute("unitsuffix") == "pet" then
		self:Width(%d)
		self:Height(%d)
    end
  ]]
  local visible = 'custom [group:party,nogroup:raid][@raid6,noexists,group:raid] show;hide'
  --local visible = 'raid, party'
  if C["showparty"] then
    self:SetActiveStyle("monoParty") 
    local party = self:SpawnHeader("monoParty",nil,visible,
	'oUF-initialConfigFunction', init:format(w,h,s,ph,ph),
	'showParty',true,
	'template','oUF_monoPartyPet',
	--'useOwnerUnit', true, 
	'yOffset', -40)
    party:Point("BOTTOMLEFT", "UIParent", "BOTTOMLEFT", 120, 362)
  else
    oUF:DisableBlizzard'party'
  end
  
  local gap = 56
  if C["showarena"] and not IsAddOnLoaded('Gladius') then
    SetCVar("showArenaEnemyFrames", false)
    self:SetActiveStyle("monoArena")
    local arena = {}
    local arenatarget = {}
    for i = 1, 5 do
      arena[i] = self:Spawn("arena"..i, "oUF_Arena"..i)
	  arena[i]:SetScale(C["BossScale"])
      if i == 1 then
        arena[i]:Point("BOTTOMRIGHT", "UIParent", "BOTTOMRIGHT", -120, 362)
      else
        arena[i]:Point("BOTTOMRIGHT", arena[i-1], "BOTTOMRIGHT", 0, gap)
      end
    end
    self:SetActiveStyle("monoArenaTarget")
    for i = 1, 5 do
      arenatarget[i] = self:Spawn("arena"..i.."target", "oUF_Arena"..i.."target")
	  arenatarget[i]:Point("TOPRIGHT",arena[i], "TOPLEFT", -4, 0)
	  arenatarget[i]:SetScale(C["BossScale"])
    end
  end

  if C["showboss"] then
    self:SetActiveStyle("monoBoss")
    local boss = {}
    for i = 1, MAX_BOSS_FRAMES do
      boss[i] = self:Spawn("boss"..i, "oUF_Boss"..i)
	  boss[i]:SetScale(C["BossScale"])
      if i == 1 then
        boss[i]:Point("BOTTOMRIGHT", "UIParent", "BOTTOMRIGHT", -120, 362)
      else
        boss[i]:Point("BOTTOMRIGHT", boss[i-1], "BOTTOMRIGHT", 0, gap)
      end
    end
  end
end)  
end
--[[ 
SlashCmdList["SHOW_ARENA"] = function()
    oUF_Arena1:Show(); oUF_Arena1.Hide = function() end oUF_Arena1.unit = "player"
    oUF_Arena2:Show(); oUF_Arena2.Hide = function() end oUF_Arena2.unit = "player"
    oUF_Arena3:Show(); oUF_Arena3.Hide = function() end oUF_Arena3.unit = "player"
    oUF_Arena4:Show(); oUF_Arena4.Hide = function() end oUF_Arena4.unit = "player"
    oUF_Arena5:Show(); oUF_Arena5.Hide = function() end oUF_Arena5.unit = "player"
end
SLASH_SHOW_ARENA1 = "/tarena"
SlashCmdList["SHOW_BOSS"] = function()
    oUF_Boss1:Show(); oUF_Boss1.Hide = function() end oUF_Boss1.unit = "player"
    oUF_Boss2:Show(); oUF_Boss2.Hide = function() end oUF_Boss2.unit = "player"
    oUF_Boss3:Show(); oUF_Boss3.Hide = function() end oUF_Boss3.unit = "player"
    oUF_Boss4:Show(); oUF_Boss4.Hide = function() end oUF_Boss4.unit = "player"
end
SLASH_SHOW_BOSS1 = "/tboss" 
 ]]