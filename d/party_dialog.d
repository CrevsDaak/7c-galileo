BEGIN "7C#GAL1J"

IF ~Global("7C#GalileoMelicampComment","LOCALS",2)~ BEGIN 7c#melicamp.joke.1
  SAY @53 /* Hey <CHARNAME>, I hear Feldepost fetches a fair price for fresh poultry... Only joking. */
    IF ~~ DO ~SetGlobal("7C#GalileoMelicampComment","LOCALS",3)~ EXIT
END

IF ~Global("7C#GalileoDeadHalflingComment","LOCALS",1)~ BEGIN 7c#galileo.sees.dead.halflings // Galileo: I see dead halflings.
  SAY @54 /* Well that's only slightly disturbing. */
    IF ~~ DO ~SetGlobal("7C#GalileoDeadHalflingComment","LOCALS",2)~ EXIT
END

CHAIN
  IF ~Global("7C#GalileoJaheiraBanter","LOCALS",1)
      InParty(%jaheira_dv%)
      See(%jaheira_dv%)
      !StateCheck(%jaheira_dv%,CD_STATE_NOTVALID)~ THEN "%jaheira_dialog%" 7c#galileo.jaheira.banter.1
  @65 /* It is fascinating for a halfling to be a follower of Finder Wyvernspur. */
DO ~SetGlobal("7C#GalileoJaheiraBanter","LOCALS",2)~
  == 7C#GAL1J
  @66 /* Aye, you're quite right about that. He's not exactly the most popular god to begin with. You are a Harper, no? */
  == "%jaheira_dialog%"
  @67 /* Correct. How did you become acquainted with our organization? */
  == 7C#GAL1J
  @68 /* My old music teacher is a Harper, and quite the admirable man. I hold a lot of respect [...] */
  == "%jaheira_dialog%"
  @69 /* While it is not my place to question her actions, I do wonder why Mystra [...] */
  == 7C#GAL1J
  @70 /* It is the tale of an impassioned artist becoming too arrogant in his own works, and the consequences it presents. */
  == "%jaheira_dialog%"
  @71 /* Yes, I suppose so. And have you taken that lesson to heart? */
  == 7C#GAL1J
  @72 /* Aye, I've attempted to. Honestly, most folks don't appreciate my original pieces, so it's quite humbling, you see. */
EXIT