#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include %A_ScriptDir%\PowerPlan.ahk
; Initialize list of power plan names
arrPowerPlanNames := DopowerPlan()
if (arrPowerPlanNames.Length() > 1)
	{
	; Choose the second power plan in the list
	DopowerPlan(arrPowerPlanNames[2])
	; Revert to default plan and cleanup
	DopowerPlan()
	}
