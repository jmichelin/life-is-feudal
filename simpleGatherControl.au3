#include <AutoItConstants.au3>
TrayTip("Life is Feudal", "Gathering Macro Loaded", 1);
HotKeySet("{F4}", "addGatheringMinutes")
HotKeySet("+{F4}", "subtractGatheringMinutes")
HotKeySet("{F5}", "startGathering")
HotKeySet("{F6}", "stopGathering")
HotKeySet("{F7}", "eatFood")
Local $i = 0
Global $gatherForMinutes = 1;

While 1
   sleep(100)
WEnd

Func startGathering($gatherForMinutes)
   $cycleLength = getMillisecondsFromMinutes($gatherForMinutes)
   TrayTip("Life is Feudal", "Starting Gathering", 1);
   While $i <= 100
	  MouseClick($MOUSE_CLICK_LEFT)
	  Sleep($cycleLength)
	  $i = $i + 1
	  TrayTip("Life is Feudal", "Gathered for " & $i  & " cycles of " & $gatherForMinutes & "mins", 1);
   WEnd
EndFunc

Func stopGathering()
   $i = 0
   TrayTip("Life is Feudal", "Stopping Gathering", 1);
   Send("{ESC}")
EndFunc

Func eatFood()
   TrayTip("Life is Feudal", "Eating Food", 1);
   Sleep(100)
   Send("5")
   Sleep(1500)
EndFunc

Func getMillisecondsFromMinutes($minutes)
   Return $minutes * 60000
EndFunc

Func addGatheringMinutes()
   $gatherForMinutes += 1
   TrayTip("Life is Feudal", "Now Gathering in Cycles of " & $gatherForMinutes & " min(s)", 1);
   Return $gatherForMinutes
EndFunc

Func subtractGatheringMinutes()
   If $gatherForMinutes > 1 Then
	  $gatherForMinutes -= 1
   EndIf
   TrayTip("Life is Feudal", "Now Gathering in Cycles of " & $gatherForMinutes & " min(s)", 1);
   Return $gatherForMinutes
EndFunc