BEGIN "7C#GAL1J"

IF ~Global("7C#GalileoMelicampComment","GLOBAL",2)~ BEGIN 7c#melicamp.joke.1
  SAY @53 /* Hey <CHARNAME>, I hear Feldepost fetches a fair price for fresh poultry... Only joking. */
    IF ~~ DO ~SetGlobal("7C#GalileoMelicampComment","GLOBAL",3)~ EXIT
END

IF ~Global("7C#GalileoDeadHalflingComment","GLOBAL",1)~ BEGIN 7c#galileo.sees.dead.halflings
  SAY @54 /* Well that's only slightly disturbing. */
    IF ~~ DO ~SetGlobal("7C#GalileoDeadHalflingComment","GLOBAL",2)~ EXIT
END
