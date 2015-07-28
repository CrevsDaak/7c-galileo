BEGIN "7C#GAL1J"

IF ~Global("7C#GalileoMelicampComment","LOCALS",2)~ BEGIN 7c#melicamp.joke.1
  SAY @53 /* Hey <CHARNAME>, I hear Feldepost fetches a fair price for fresh poultry... Only joking. */
    IF ~~ DO ~SetGlobal("7C#GalileoMelicampComment","LOCALS",3)~ EXIT
END

IF ~Global("7C#GalileoDeadHalflingComment","LOCALS",1)~ BEGIN 7c#galileo.sees.dead.halflings
  SAY @54 /* Well that's only slightly disturbing. */
    IF ~~ DO ~SetGlobal("7C#GalileoDeadHalflingComment","LOCALS",2)~ EXIT
END

IF ~Global("7C#GalileoJustRaisedBack","GLOBAL",1)~ BEGIN 7c#galileo.back.from.hell
  SAY @73 /* Ahh! */
    IF ~~ REPLY @74 /* You're welcome. */ GOTO 7c#yes.yes.thanks.but.frightening
    IF ~~ REPLY @75 /* Try not to get into trouble again. */ GOTO 7c#heh.i.will.try
    IF ~~ REPLY @76 /* Not sure why I bothered. */ GOTO 7c#gee.thanks.i.suck
    IF ~~ REPLY @77 /* ~I may have had to sell yout hat to fund this. */ GOTO 7c#nooooo.not.my.hat
END

CHAIN
  IF ~Global("7C#GalileoJaheiraBanter","LOCALS",1)
      InParty(%jaheira_dv%)
      See(%jaheira_dv%)
      !StateCheck(%jaheira_dv%,CD_STATE_NOTVALID)
      !StateCheck(Myself, CD_STATE_NOTVALID)~ THEN "%jaheira_dialog%" 7c#galileo.jaheira.banter.1
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

IF ~Global("7C#GalileoJustRaisedBack","GLOBAL",1)~ BEGIN 7c#yes.yes.thanks.but.frightening
  SAY @78 /* Yes, yes, thank you. That was ... frightening. */
    IF ~~ DO ~SetGlobal("7C#GalileoJustRaisedBack","GLOBAL",2)~ EXIT
END

IF ~Global("7C#GalileoJustRaisedBack","GLOBAL",1)~ BEGIN 7c#heh.i.will.try
  SAY @79 /* Heh, I'll try my best. */
    IF ~~ DO ~SetGlobal("7C#GalileoJustRaisedBack","GLOBAL",2)~ EXIT
END

IF ~Global("7C#GalileoJustRaisedBack","GLOBAL",1)~ BEGIN 7c#gee.thanks.i.suck
  SAY @80 /* Gee, thanks. */
    IF ~~ DO ~SetGlobal("7C#GalileoJustRaisedBack","GLOBAL",2)~ EXIT
END

IF ~Global("7C#GalileoJustRaisedBack","GLOBAL",1)~ BEGIN 7c#nooooo.not.my.hat
  SAY @81 /* What?! No! No!! */
    IF ~~ REPLY @82 /* Relax, it's right here. */ GOTO 7c#nearly.a.heart.attack
    IF ~~ REPLY @83 /* Yeah. Sorry. */ GOTO 7c#not.okay.letz.get.hat
END

IF ~Global("7C#GalileoJustRaisedBack","GLOBAL",1)~ BEGIN 7c#nearly.a.heart.attack
  SAY @84 /* You nearly gave me a heart attack... */
    IF ~~ DO ~SetGlobal("7C#GalileoJustRaisedBack","GLOBAL",2)~ EXIT
END

IF ~Global("7C#GalileoJustRaisedBack","GLOBAL",1)~ BEGIN 7c#not.okay.letz.get.hat
  SAY @85 /* This is NOT okay! We have to buy it back, or find another hat, quickly! */
    IF ~~ REPLY @86 /* Ever considered not wearing a hat? You look good to me. */ GOTO 7c#ah.i.thanks.sucker
    IF ~~ REPLY @87 /* If you insist. */ GOTO 7c#let.us.be.off
    IF ~~ REPLY @88 /* Galileo, we have more important things to do than go hat shopping. */ GOTO 7c#ooh.fine
END

IF ~Global("7C#GalileoJustRaisedBack","GLOBAL",1)~ BEGIN 7c#ah.i.thanks.sucker
  SAY @89 /* I -- ah, thank you. */
    IF ~~ DO ~SetGlobal("7C#GalileoJustRaisedBack","GLOBAL",2)~ EXIT
END

IF ~Global("7C#GalileoJustRaisedBack","GLOBAL",1)~ BEGIN 7c#let.us.be.off
  SAY @90 /* Let us be off! */
    IF ~HPPercentLT("Galileo1", 100)~ REPLY @92 /* Err, shouldn't we be healing you first? */ GOTO 7c#healing.is.for.the.weak
    IF ~~ REPLY @93 /* Okay. */ DO ~SetGlobal("7C#GalileoJustRaisedBack","GLOBAL",2)~ EXIT
END

IF ~Global("7C#GalileoJustRaisedBack","GLOBAL",1)~ BEGIN 7c#ooh.fine
  SAY @91 /* Ooh, fine. */
    IF ~~ DO ~SetGlobal("7C#GalileoJustRaisedBack","GLOBAL",2)~ EXIT
END

IF ~Global("7C#GalileoJustRaisedBack","GLOBAL",1)~ BEGIN 7c#healing.is.for.the.weak
  SAY @94 /* Healing is for the weak! Let's go! Oww. Okay, maybe a spell or two would be welcome... */
    IF ~~ DO ~SetGlobal("7C#GalileoJustRaisedBack","GLOBAL",2)~ EXIT
END
    