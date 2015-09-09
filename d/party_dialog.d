// -*- weidu-d -*-
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
    IF ~~ REPLY @77 /* ~I may have had to sell your hat to fund this. */ GOTO 7c#nooooo.not.my.hat
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

CHAIN
  IF ~Global("7C#GalileoKivanBanter","LOCALS",1)
      InParty(%kivan_dv%)
      See(%kivan_dv%)
      !StateCheck(%kivan_dv%,CD_STATE_NOTVALID)
      !StateCheck(Myself, CD_STATE_NOTVALID)~ THEN 7C#GAL1J 7c#galileo.kivan.banter.1
  @95 /* Perhaps this is a touch personal, but what do you plan to do once you have exacted your revenge, Kivan? */
DO ~SetGlobal("7C#GalileoKivanBanter","LOCALS",2)~
  =
  @96 /* ... */
  =
  @97 /* I guess you're not too interested in talking about this. */
  == "%kivan_dialog%"
  @98 /* Shut up. */
  == 7C#GAL1J
  @99 /* Okay! */
EXIT

CHAIN
  IF ~Global("7C#GalileoKivanBanter","LOCALS",2)
      InParty(%kivan_dv%)
      See(%kivan_dv%)
      !StateCheck(%kivan_dv%,CD_STATE_NOTVALID)
      !StateCheck(Myself, CD_STATE_NOTVALID)~ THEN 7C#GAL1J 7c#galileo.kivan.banter.2
  @100 /* Kivan, I like you, even if you don't like me. */
DO ~SetGlobal("7C#GalileoKivanBanter","LOCALS",3)~
  == "%kivan_dialog%"
  @101 /* Perhaps when Tazok's body lies mangled at my feet, we [...] */
  == 7C#GAL1J
  @102 /* Hah! Something like that. You've got yourself a deal. */
EXIT

CHAIN
  IF ~Global("7C#GalileoQuayleBanter","LOCALS",1)
      InParty(%quayle_dv%)
      See(%quayle_dv%)
      !StateCheck(%quayle_dv%,CD_STATE_NOTVALID)
      !StateCheck(Myself, CD_STATE_NOTVALID)~ THEN 7C#GAL1J 7c#galileo.quayle.banter.1
  @103 /* Hello, Quayle. */
DO ~SetGlobal("7C#GalileoQuayleBanter","LOCALS",2)~
  == "%quayle_dialog%"
  @104 /* Don't waste my time. What do you need? */
  == 7C#GAL1J
  @105 /* Fair enough! I won't disguise my intentions. [...] */
  == "%quayle_dialog%"
  @106 /* I'll pass any test you throw at me, and then we'll see who [...] */
  == 7C#GAL1J
  @107 /* What comes down but never goes up? */
  == "%quayle_dialog%"
  @108 /* Rain, of course. */
  == 7C#GAL1J
  @109 /* Which weighs more, a pound of feathers or a pound of bricks? */
  == "%quayle_dialog%"
  @110 /* Neither! They both weigh one pound, obviously. */
  == 7C#GAL1J
  @111 /* Not bad. What word becomes shorter when you add two letters to it? */
  == "%quayle_dialog%"
  @112 /* What? That's a grammatical and mathematical impossibility. How [...] */
  == 7C#GAL1J
  @113 /* Hah! The answer is the word, "short." How can a pantaloon [...] */
  == "%quayle_dialog%"
  @114 /* I don't know, some dust or some such. I grow tired of this stupidity. */
  == 7C#GAL1J
  @115 /* The pantaloon pocket can have a hole in it. What is at the end of a rainbow? */
  == "%quayle_dialog%"
  @116 /* Enough! These stupid tests are no measure of intelligence! [...] */
  == 7C#GAL1J
  @117 /* Whatever you say, Quayle. */
  == "%quayle_dialog%"
  @118 /* I wouldn't expect a simpleton such as yourself to understand. */
EXIT

CHAIN
  IF ~Global("7C#GalileoCoranBanter","LOCALS",1)
      InParty(%coran_dv%)
      See(%coran_dv%)
      !StateCheck(%coran_dv%,CD_STATE_NOTVALID)
      !StateCheck(Myself, CD_STATE_NOTVALID)~ THEN 7C#GAL1J 7c#galileo.coran.banter.1
  @119 /* Ah, Coran. A lover, fighter, and hunter. Can one meet a more sophisticated adventurer? */
DO ~SetGlobal("7C#GalileoCoranBanter","LOCALS",2)~
  == "%coran_dialog%"
  @120 /* Hah, you flatter me like someone who wants something from me! I am much obliged. */
  == 7C#GAL1J
  @121 /* If anything, I'd like an archery lesson. Or maybe some flirting tips, [...] */
  == "%coran_dialog%"
  @122 /* The road ahead is a long one, where boredom is a constant enemy. [...] */
  == 7C#GAL1J
  @123 /* Huzzah! */
EXIT

CHAIN
  IF ~Global("7C#GalileoCoranBanter","LOCALS",2)
      InParty(%coran_dv%)
      See(%coran_dv%)
      !StateCheck(%coran_dv%,CD_STATE_NOTVALID)
      !StateCheck(Myself, CD_STATE_NOTVALID)~ THEN 7C#GAL1J 7c#galileo.coran.banter.2
  @124 /* Your skills cause me to question whether or not you ever put that bow down. */
DO ~SetGlobal("7C#GalileoCoranBanter","LOCALS",3)~
  == "%coran_dialog%"
  @125 /* I only put aside the curve of my bow to place my hands on another set of curves. */
  == 7C#GAL1J
  @126 /* That's quite the wordplay there, Coran. */
  == "%coran_dialog%"
  @127 /* My wordplay comes second only to my foreplay, Galileo. */
  == 7C#GAL1J
  @128 /* Damn... */
EXIT

CHAIN
  IF ~Global("7C#GalileoGarrickBanter","LOCALS",1)
      InParty(%garrick_dv%)
      See(%garrick_dv%)
      !StateCheck(%garrick_dv%,CD_STATE_NOTVALID)
      !StateCheck(Myself, CD_STATE_NOTVALID)~ THEN "%garrick_dialog%" 7c#galileo.garrick.banter.1
  @129 /* Life is glorious. */
DO ~SetGlobal("7C#GalileoGarrickBanter","LOCALS",2)~
  == 7C#GAL1J
  @130 /* Very truly I tell you, it is. */
EXIT

CHAIN
  IF ~Global("7C#GalileoGarrickBanter","LOCALS",2)
      InParty(%garrick_dv%)
      See(%garrick_dv%)
      !StateCheck(%garrick_dv%,CD_STATE_NOTVALID)
      !StateCheck(Myself, CD_STATE_NOTVALID)~ THEN "%garrick_dialog%" 7c#galileo.garrick.banter.2
  @131 /* Tell me, Galileo, what is your favorite instrument? */
DO ~SetGlobal("7C#GalileoGarrickBanter","LOCALS",3)~
  == 7C#GAL1J
  @132 /* Ah, a tough choice, but I must go with the lute. And yourself? */
  == "%garrick_dialog%"
  @133 /* I find that the harp evokes emotions in myself and others that are otherwise unknown. */
  == 7C#GAL1J
  @134 /* Indeed. Stringed instruments get the ladies, Garrick. */
EXIT

CHAIN
  IF ~Global("7C#GalileoGarrickBanter","LOCALS",3)
      InParty(%garrick_dv%)
      See(%garrick_dv%)
      !StateCheck(%garrick_dv%,CD_STATE_NOTVALID)
      !StateCheck(Myself, CD_STATE_NOTVALID)~ THEN 7C#GAL1J 7c#galileo.garrick.banter.3
  @135 /* It is good to venture alongside another man with a positive outlook and a taste for the more refined things in life. */
DO ~SetGlobal("7C#GalileoGarrickBanter","LOCALS",4)~
  == "%garrick_dialog%"
  @136 /* I could say the same to you, my friend. */
EXIT

CHAIN
  IF ~Global("7C#GalileoTiaxBanter","LOCALS",1)
      InParty(%tiax_dv%)
      See(%tiax_dv%)
      !StateCheck(%tiax_dv%,CD_STATE_NOTVALID)
      !StateCheck(Myself, CD_STATE_NOTVALID)~ THEN "%tiax_dialog%" 7c#galileo.tiax.banter.1
  @137 /* Tiax rules all! */
DO ~SetGlobal("7C#GalileoTiaxBanter","LOCALS",2)~
  == 7C#GAL1J
  @138 /* Somehow I doubt that. */
  == "%tiax_dialog%"
  @139 /* You dare to question the dominion of Tiax? */
  == 7C#GAL1J
  @140 /* Why is it that you always speak in third person? I've respect [...] */
  == "%tiax_dialog%"
  @141 /* The great and powerful Tiax acts for no one! For your mistake, [...] */
  == 7C#GAL1J
  @142 /* I see that you are well and truly mad. I suppose I'd best keep my distance. */
  == "%tiax_dialog%"
  @143 /* Yes, that will suffice until the moment Tiax transcends time and space. */
  == 7C#GAL1J
  @144 /* *Sigh* */
EXIT

CHAIN
  IF ~Global("7C#GalileoXanBanter","LOCALS",1)
      InParty(%xan_dv%)
      See(%xan_dv%)
      !StateCheck(%xan_dv%,CD_STATE_NOTVALID)
      !StateCheck(Myself, CD_STATE_NOTVALID)~ THEN 7C#GAL1J 7c#galileo.xan.banter.1
  @145 /* It is your very own gloom that spells your doom, Xan. */
DO ~SetGlobal("7C#GalileoXanBanter","LOCALS",2)~
  == "%xan_dialog%"
  @146 /* I suggest that you worry about your own self-fulfilling prophecies, [...] */
  == 7C#GAL1J
  @147 /* What ever could possibly go wrong with a positive outlook? */
  == "%xan_dialog%"
  @148 /* What good would positive thinking do for an imprisoned individual? [...] */
  == 7C#GAL1J
  @149 /* I would suggest that it is different to be a prisoner in spirit [...] */
  == "%xan_dialog%"
  @150 /* By all means, tell me as such again once you've been detained [...] */
EXIT

APPEND "7C#GAL1J"

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
