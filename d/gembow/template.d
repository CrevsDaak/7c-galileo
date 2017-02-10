// -*- weidu-d -*-

BEGIN ~gembow_item_name_goes_here~

IF ~~ BEGIN 1
  SAY @0 /* gem_name_goes_here attached, what do you want to do? */
    IF ~CombatCounter(0)~ REPLY @1 GOTO 2 /* remove the gem */
    IF ~~ REPLY @2 GOTO 3 /* but gembow away */
END

IF ~~ BEGIN 2
  SAY @3 /* u remove the gem_name_goes_here from the gembow_name_goes_here */
    IF ~~ DO ~TakePartyItem("gembow_item_name_goes_here") DestroyItem("gembow_item_name_goes_here") GiveItemCreate("c7gembow",LastTalkedToBy(Myself),0,0,0) GiveItemCreate("gem_item_name_goes_here",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~~ BEGIN 3
  SAY @4 /* you put the gembow_name_goes_here away */
   IF ~~ DO ~~ EXIT
END