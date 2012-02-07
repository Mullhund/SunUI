﻿local S, C, L, DB = unpack(select(2, ...))
local Module = LibStub("AceAddon-3.0"):GetAddon("Core"):NewModule("castbarmove")

function Module:OnInitialize()
C = MoveHandleDB
D = ThreatDB
M = ReminderDB
A = UnitFrameDB
B = MiniDB
E = ActionBarDB
local Castbarplay = CreateFrame("Frame", "Castbarplay", UIParent) 
Castbarplay:SetWidth(A["PlayerCastBarWidth"]) 
Castbarplay:SetHeight(A["PlayerCastBarHeight"]) 
Castbarplay:SetPoint(unpack(C["PlayerCastbar"]))
Castbarplay:Hide()
local Castbartarget = CreateFrame("Frame", "Castbartarget", UIParent) 
Castbartarget:SetWidth(A["TargetCastBarWidth"]) 
Castbartarget:SetHeight(A["TargetCastBarHeight"]) 
Castbartarget:SetPoint(unpack(C["TargetCastbar"]))
Castbartarget:Hide()
local Castbarfouce = CreateFrame("Frame", "Castbarfouce", UIParent) 
Castbarfouce:SetWidth(A["FocusCastBarWidth"]) 
Castbarfouce:SetHeight(A["FocusCastBarHeight"]) 
Castbarfouce:SetPoint(unpack(C["FocusCastbar"]))
Castbarfouce:Hide()
local Castbarpet = CreateFrame("Frame", "Castbarpet", UIParent) 
Castbarpet:SetWidth(A["PetCastBarWidth"]) 
Castbarpet:SetHeight(A["PetCastBarHeight"]) 
Castbarpet:SetPoint(unpack(C["PetCastbar"]))
Castbarpet:Hide()
local ShadowPet = CreateFrame("Frame", "ShadowPet", UIParent) 
ShadowPet:SetWidth(140) 
ShadowPet:SetHeight(20) 
ShadowPet:SetPoint(unpack(C["ShadowPet"]))
ShadowPet:Hide()

local ClassCD = CreateFrame("Frame", "ClassCD", UIParent) 
ClassCD:SetWidth(B["ClassCDWidth"])
ClassCD:SetHeight(B["ClassCDHeight"]) 
ClassCD:SetPoint(unpack(C["ClassCD"]))
ClassCD:Hide()
local Threat = CreateFrame("Frame", "Threat", UIParent) 
Threat:SetWidth(D["ThreatBarWidth"]) 
Threat:SetHeight(6) 
Threat:SetPoint(unpack(C["Threat"]))
Threat:Hide()
local Reminder = CreateFrame("Frame", "Reminder", UIParent) 
	if M["RaidBuffDirection"] == 1 then 
		Reminder:SetWidth(M["RaidBuffSize"]*7+5) 
		Reminder:SetHeight(M["RaidBuffSize"]) 
		else
		Reminder:SetWidth(M["RaidBuffSize"]) 
		Reminder:SetHeight(M["RaidBuffSize"]*7+5) 
	end
Reminder:SetPoint(unpack(C["Reminder"]))
Reminder:Hide()
local Class = CreateFrame("Frame", "Class", UIParent) 
Class:SetWidth(M["ClassBuffSize"]) 
Class:SetHeight(M["ClassBuffSize"]) 
Class:SetPoint(unpack(C["Class"]))
Class:Hide()
local CooldownFlash = CreateFrame("Frame", "CooldownFlash", UIParent) 
CooldownFlash:SetWidth(E["CooldownFlashSize"]*S.Scale(1))
CooldownFlash:SetHeight(E["CooldownFlashSize"]*S.Scale(1))
CooldownFlash:SetPoint(unpack(C["CooldownFlash"]))
CooldownFlash:Hide()
	if DB.MyClass == "ROGUE" or DB.MyClass == "DRUID" then  
		local Combatpoint = CreateFrame("Frame", "Combatpoint", UIParent) 
		Combatpoint:SetWidth(180) 
		Combatpoint:SetHeight(45) 
		Combatpoint:SetPoint(unpack(C["Combatpoint"]))
		Combatpoint:Hide()
	end

	MoveHandle.Castbarplay = S.MakeMoveHandle(Castbarplay, L["玩家施法条"], "PlayerCastbar")
	MoveHandle.Castbartarget = S.MakeMoveHandle(Castbartarget, L["目标施法条"], "TargetCastbar")
	MoveHandle.Castbarfouce = S.MakeMoveHandle(Castbarfouce, L["焦点施法条"], "FocusCastbar")
	MoveHandle.Castbarpet = S.MakeMoveHandle(Castbarpet, L["宠物施法条"], "PetCastbar")
	
	MoveHandle.ClassCD = S.MakeMoveHandle(ClassCD, L["内置CD监视"], "ClassCD")
	MoveHandle.Threat = S.MakeMoveHandle(Threat, L["仇恨监视"], "Threat")
	MoveHandle.Reminder = S.MakeMoveHandle(Reminder, L["药水"], "Reminder")
	MoveHandle.Class = S.MakeMoveHandle(Class, L["缺少药剂buff提示"], "Class")
	MoveHandle.CooldownFlash = S.MakeMoveHandle(CooldownFlash, L["冷却闪光"], "CooldownFlash")
	
		if DB.MyClass == "ROGUE" or DB.MyClass == "DRUID" then  
			MoveHandle.Combatpoint = S.MakeMoveHandle(Combatpoint, L["连击点"], "Combatpoint")
		end
		if DB.MyClass == "PRIEST" then
			MoveHandle.ShadowPet = S.MakeMoveHandle(ShadowPet, L["暗影魔计时条"], "ShadowPet")
		end
end