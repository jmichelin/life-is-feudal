#include <AutoItConstants.au3>
HotKeySet("{F5}", "startGathering")
HotKeySet("{F6}", "stopGathering")
HotKeySet("{F7}", "eatFood")
Local $i = 0
Local $cycleLength = 100000

While 1
   sleep(100)
WEnd

Func startGathering()
   TrayTip("Life is Feudal", "Starting Gathering", 1);
   While $i <= 100
	  MouseClick($MOUSE_CLICK_LEFT)
	  Sleep($cycleLength)
	  $i = $i + 1
	  TrayTip("Life is Feudal", "Gathered for " & $i  & " cycles of " & $cycleLength & "ms", 1);
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
