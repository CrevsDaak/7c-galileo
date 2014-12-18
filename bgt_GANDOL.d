// creator  : weidu (version 23700)
// argument : GANDOL.DLG
// game     : .
// source   : ./DATA/TB#GEN20.BIF
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~GANDOL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 19 23 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #80070 /* ~Well met, traveler.  Gandolar Luckyfoot, at your disposal.  To what does our little village owe the pleasure of your visit?  Off to Durlag's Tower?  Or have you already been, and now ye need your breaks and bruises healed?  Many a wanderer comes to town nearly bled to death.~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  Global("X#GANDOL0","GLOBAL",0)
InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#GANDOL0","GLOBAL",1)
~ EXTERN ~MONTAJ~ 56
  IF ~  Global("X#GANDOL0","GLOBAL",0)
InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#GANDOL0","GLOBAL",1)
~ GOTO 25
  IF ~  Global("X#GANDOL0","GLOBAL",0)
InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#GANDOL0","GLOBAL",1)
~ EXTERN ~ALORAJ~ 136
  IF ~  Global("X#GANDOL0","GLOBAL",0)
InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#GANDOL0","GLOBAL",1)
~ GOTO 27
  IF ~  Global("X#GANDOL0","GLOBAL",0)
InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#GANDOL0","GLOBAL",1)
~ EXTERN ~ALORAJ~ 138
  IF ~  Global("X#GANDOL0","GLOBAL",0)
InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#GANDOL0","GLOBAL",1)
~ GOTO 31
  IF ~  Global("X#GANDOL0","GLOBAL",0)
InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#GANDOL0","GLOBAL",1)
~ EXTERN ~ALORAJ~ 142
END

IF ~~ THEN BEGIN 1 // from: 36.2 35.2 34.2 33.2 32.2 31.2 30.2 29.2 28.2 27.2 26.2 25.2 0.2
  SAY #80075 /* ~By all the means you have.  We welcome visitors with tales to tell, and extend our hospitality.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 36.1 36.0 35.1 35.0 34.1 34.0 33.1 33.0 32.1 32.0 31.1 31.0 30.1 30.0 29.1 29.0 28.1 28.0 27.1 27.0 26.1 26.0 25.1 25.0 0.1 0.0
  SAY #80076 /* ~Suit yourself.  The ruin is not a moment west, but that knowledge will not help you.  You could wear your arms to stumps digging and not break through to the chambers below.~ */
  IF ~~ THEN REPLY #80077 /* ~Then my journey is for naught.  Prithee tell me if I might pass some other way?~ */ GOTO 5
  IF ~~ THEN REPLY #80078 /* ~Is there an easier means for entry?  Speak!~ */ GOTO 3
  IF ~~ THEN REPLY #80079 /* ~Your opinions are yours, but I would just as soon try myself.~ */ GOTO 4
  IF ~~ THEN REPLY #80080 /* ~I must try.  It would be a shame to have come all this way, only to have to return empty-handed.~ */ GOTO 5
  IF ~~ THEN REPLY #80081 /* ~Feh!  Back to Beregost then, I've no time for this!~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #80082 /* ~Perhaps, perhaps not.  A more polite tone may yield an answer.~ */
  IF ~~ THEN REPLY #80083 /* ~Then my journey is for naught.  Prithee tell if I might pass some other way?~ */ GOTO 5
  IF ~~ THEN REPLY #80079 /* ~Your opinions are yours, but I would just as soon try myself.~ */ GOTO 4
  IF ~~ THEN REPLY #80084 /* ~I must try.  'Twould be a shame to have come all this way, only to have to return empty-handed.~ */ GOTO 5
  IF ~~ THEN REPLY #80081 /* ~Feh!  Back to Beregost then, I've no time for this!~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 18.3 16.3 15.3 14.3 13.3 7.3 6.3 5.3 3.3 3.1 2.4 2.2
  SAY #80085 /* ~It's your day to do with as you please.~ */
  IF ~~ THEN DO ~EscapeAreaDestroy(90)
~ EXIT
  IF ~  Global("X#AjantisGandolar3","GLOBAL",0)
InParty("ajantis")
InMyArea("ajantis")
!StateCheck("ajantis",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#AjantisGandolar3","GLOBAL",1)
~ EXTERN ~AJANTJ~ 61
END

IF ~~ THEN BEGIN 5 // from: 3.2 3.0 2.3 2.0
  SAY #80086 /* ~The only way into the ruin I know, is a secret door in one of our burrows.  You'll get quite the hairy eye from everyone if you expect to search them all.~ */
  IF ~~ THEN REPLY #80087 /* ~My apologies for my manner, but it has been a long quest.  Could you direct me to the proper home?~ */ UNSOLVED_JOURNAL #75065 /* ~Investigate the Firewine ruins.

Gandolar Luckyfoot has told us that there is a secret path to the Firewine bridge ruins in one of the halfling burrows of Gullykin.~ */ GOTO 7
  IF ~~ THEN REPLY #80088 /* ~You would do well to tell me which is the correct home!~ */ GOTO 16
  IF ~~ THEN REPLY #80089 /* ~Mayhaps I'll raze them to the ground, and make my task all the simpler!~ */ GOTO 6
  IF ~~ THEN REPLY #80090 /* ~I have spent enough time here already.  Have your ruins, I am done!~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 16.2 6.2 5.2
  SAY #80091 /* ~Harm a hair on a single foot and you'll feel the bite of our archers' arrows!  No need for that from either of us.~ */
  IF ~~ THEN REPLY #80087 /* ~My apologies for my manner, but it has been a long quest.  Could you direct me to the proper home?~ */ GOTO 7
  IF ~~ THEN REPLY #80088 /* ~You would do well to tell me which is the correct home!~ */ GOTO 16
  IF ~~ THEN REPLY #80089 /* ~Mayhaps I'll raze them to the ground, and make my task all the simpler!~ */ GOTO 6
  IF ~~ THEN REPLY #80090 /* ~I have spent enough time here already.  Have your ruins, I am done!~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 16.0 8.0 6.0 5.0
  SAY #80092 /* ~A small gift for the owners and they may allow entry.  Mayhaps the gold to buy a good blade, a fine cloak, or some other item of use.  100 should cover.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #80093 /* ~That is fair enough for my intrusion on their privacy.~ */ DO ~TakePartyGold(100)
~ GOTO 10
  IF ~~ THEN REPLY #80094 /* ~I've a good blade for the lot of you if you don't show me now!~ */ GOTO 17
  IF ~~ THEN REPLY #80095 /* ~I'll not pay to visit one of your dirty little holes!  Just take me there!~ */ GOTO 18
  IF ~~ THEN REPLY #80096 /* ~I'll find it myself without paying your little fee!  Goodbye!~ */ GOTO 4
  IF ~  PartyGoldGT(49)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY #80097 /* ~I'll gladly pay, though 100 is too much.  Would you take 50?~ */ GOTO 8
  IF ~  PartyGoldGT(49)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY #80097 /* ~I'll gladly pay, though 100 is too much.  Would you take 50?~ */ DO ~TakePartyGold(50)
~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 18.4 7.4
  SAY #80098 /* ~Not to be rude, but I figure their privacy to be worth a bit more than that.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 9 // from:
  SAY #80099 /* ~Perhaps you are not familiar with my peoples' respect for tact, so I bear you no grudge.  However, even with every opportunity to be polite, you have still managed to insult me.  'Tis for the best that we begin again as strangers, lest I learn to dislike you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 18.5 18.0 7.5 7.0
  SAY #80100 /* ~It's a fair trade.  I will show you, and you may come and go as you please.  Whatever you do with this boon is your own business, but please try not to scare up any beasties in our fair village.  Just go to the basement of the winery, there you will find a secret door.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 17.0 15.2 14.2 13.2
  SAY #80101 /* ~Aye, I can point the way to you, and gladly so, but I must warn you as well.  There be many an odd thing that roam through there, and I hear tell they be a touch more organized than your normal critters, but I hear many things.  Just go to the basement of the winery, there you will find a secret door.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #75067 /* ~Investigate the Firewine ruins.

A halfling from Gullykin by the name of Gandolar has asked us to clear the kobold threat from the Firewine ruins.  I should be careful, because all sorts of mysterious things could be awakened from rest.~ */ EXIT
  IF ~  Global("X#AjantisGandolar2","GLOBAL",0)
InParty("ajantis")
InMyArea("ajantis")
!StateCheck("ajantis",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#AjantisGandolar2","GLOBAL",1)
~ EXTERN ~AJANTJ~ 60
END

IF ~~ THEN BEGIN 12 // from: 36.3 35.3 34.3 33.3 32.3 31.3 30.3 29.3 28.3 27.3 26.3 25.3 0.3
  SAY #80102 /* ~You look a bit the worse for wear.  You'll find Alvanhendar in the winery.  A more skilled cleric you'll not find hereabout.  Rates are fairly reasonable too.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 19 23 even though they appear after this state */
~  NumberOfTimesTalkedTo(1)
~ THEN BEGIN 13 // from:
  SAY #80103 /* ~If I might pull on your coattail a moment more, I have a proposition for you.  It's usually nature-quiet by the Firewine ruins, even with its violent bygone.  Those who died and did not sleep have mostly found their rest over time.  It's a live threat that comes now, with a band of kobolds that moved in.  Perhaps we could prevail upon you to rid us of this menace, and in return a gift from us you shall receive.  Keep whatever you find, as well.~ */
  IF ~~ THEN REPLY #80104 /* ~Have you no brave halflings up to the task?  It cannot be so.~ */ UNSOLVED_JOURNAL #75066 /* ~Investigate the Firewine ruins.

There are kobolds in the Firewine ruins.~ */ GOTO 14
  IF ~~ THEN REPLY #80105 /* ~Cross my palm with a hundred gold and I'll consider it.~ */ GOTO 15
  IF ~~ THEN REPLY #80106 /* ~I'll gladly aid you small folk as best I can.  Lead on.~ */ GOTO 11
  IF ~~ THEN REPLY #80107 /* ~I've no interest in your offer.  Keep your problems to yourself.~ */ GOTO 4
  IF ~  Global("X#AjantisGandolar1","GLOBAL",0)
InParty("ajantis")
InMyArea("ajantis")
!StateCheck("ajantis",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#AjantisGandolar1","GLOBAL",1)
~ EXTERN ~AJANTJ~ 59
END

IF ~~ THEN BEGIN 14 // from: 15.0 14.0 13.0
  SAY #80108 /* ~We've a number of hearty tunnelrats, but they're off hunting with a band of goblinstickers and not due back for a time or two.  It's better if the creatures in the ruin are expelled before they dig in tight and deep.  Help us will you?~ */
  IF ~  False()
~ THEN REPLY #80104 /* ~Have you no brave halflings up to the task?  It cannot be so.~ */ GOTO 14
  IF ~~ THEN REPLY #80105 /* ~Cross my palm with a hundred gold and I'll consider it.~ */ GOTO 15
  IF ~~ THEN REPLY #80106 /* ~I'll gladly aid you small folk as best I can.  Lead on.~ */ GOTO 11
  IF ~~ THEN REPLY #80107 /* ~I've no interest in your offer.  Keep your problems to yourself.~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 15.1 14.1 13.1
  SAY #80109 /* ~We have but what Dallillia provides and little more.  The gift you receive will be appropriate, to your task and our means.~ */
  IF ~~ THEN REPLY #80104 /* ~Have you no brave halflings up to the task?  It cannot be so.~ */ GOTO 14
  IF ~  False()
~ THEN REPLY #80105 /* ~Cross my palm with a hundred gold and I'll consider it.~ */ GOTO 15
  IF ~~ THEN REPLY #80106 /* ~I'll gladly aid you small folk as best I can.  Lead on.~ */ GOTO 11
  IF ~~ THEN REPLY #80107 /* ~I've no interest in your offer.  Keep your problems to yourself.~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 16.1 6.1 5.1
  SAY #80082 /* ~Perhaps, perhaps not.  A more polite tone may yield an answer.~ */
  IF ~~ THEN REPLY #80087 /* ~My apologies for my manner, but it has been a long quest.  Could you direct me to the proper home?~ */ GOTO 7
  IF ~~ THEN REPLY #80088 /* ~You would do well to tell me which is the correct home!~ */ GOTO 16
  IF ~~ THEN REPLY #80089 /* ~Mayhaps I'll raze them to the ground, and make my task all the simpler!~ */ GOTO 6
  IF ~~ THEN REPLY #80090 /* ~I have spent enough time here already.  Have your ruins, I am done!~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 18.1 17.1 7.1
  SAY #80091 /* ~Harm a hair on a single foot and you'll feel the bite of our archers' arrows!  No need for that from either of us.~ */
  IF ~~ THEN REPLY #80093 /* ~That is fair enough for my intrusion on their privacy.~ */ GOTO 11
  IF ~~ THEN REPLY #80094 /* ~I've a good blade for the lot of you if you don't show me now!~ */ GOTO 17
  IF ~~ THEN REPLY #80095 /* ~I'll not pay to visit one of your dirty little holes!  Just take me there!~ */ EXIT
  IF ~~ THEN REPLY #80096 /* ~I'll find it myself without paying your little fee!  Goodbye!~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 18.2 7.2
  SAY #80082 /* ~Perhaps, perhaps not.  A more polite tone may yield an answer.~ */
  IF ~~ THEN REPLY #80093 /* ~That is fair enough for my intrusion on their privacy.~ */ GOTO 10
  IF ~~ THEN REPLY #80094 /* ~I've a good blade for the lot of you if you don't show me now!~ */ GOTO 17
  IF ~~ THEN REPLY #80095 /* ~I'll not pay to visit one of your dirty little holes!  Just take me there!~ */ GOTO 18
  IF ~~ THEN REPLY #80096 /* ~I'll find it myself without paying your little fee!  Goodbye!~ */ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY #80097 /* ~I'll gladly pay, though 100 is too much.  Would you take 50?~ */ GOTO 8
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY #80097 /* ~I'll gladly pay, though 100 is too much.  Would you take 50?~ */ DO ~TakePartyGold(50)
~ GOTO 10
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 19 // from:
  SAY #80110 /* ~You are such a likeable fellow, let's begin again as though we have never met.  This way I can go through the pleasure of meeting you all over again.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #80111 /* ~I would just as soon forget that I have ever met you!  This way I can meet you again as though for the first time.  It will save me from having to dislike you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #80112 /* ~Not to be rude, but I'd rather you left immediately.  You have not proven to be trustworthy.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 23 even though they appear after this state */
~  True()
~ THEN BEGIN 22 // from:
  SAY #80113 /* ~I trust you have found the populace of our little village to be amiable?  We do so like to welcome strangers.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Dead("DICK")
~ THEN BEGIN 23 // from:
  SAY #80114 /* ~<CHARNAME>!  I have received news that you have cleared out the Firewine bridge ruins!  No longer will kobolds plague our tiny village.  I must congratulate you on a job well done.  Everyone is grateful for your help.  Take this small amount of money as a show of our gratitude.~ */
  IF ~~ THEN DO ~GiveGoldForce(250)
GiveItemCreate("MACRING9",LastTalkedToBy(Myself),1,0,0)
EraseJournalEntry(75062)
EraseJournalEntry(75063)
EraseJournalEntry(75064)
EraseJournalEntry(75065)
EraseJournalEntry(75066)
EraseJournalEntry(75067)
EraseJournalEntry(75068)
EscapeAreaDestroy(90)
~ SOLVED_JOURNAL #75527 /* ~Investigate the Firewine ruins.

News seems to spread faster than a bird can fly through the halfling village!  My clearing of the kobold encampment in the Firewine ruins has left a happy little village and 250 gold in my purse.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #97963 /* ~It takes all kinds, I suppose. Could have done with one a bit more helpful, but that's the way of things.~ */
  IF ~~ THEN DO ~EscapeAreaDestroy(90)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.5
  SAY #102251 /* ~And to think the pair'd only just had their third when I last saw 'em! I really must make the journey up there sometime, I heard it's a nice enough place, for a human built town... err, looks like your friends getting rather impatient with all this family stuff. What were we talking about? Ah yes, the a trip to the tower versus halfling hospitality...~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 57
END

IF ~~ THEN BEGIN 26 // from:
  SAY #102251 /* ~And to think the pair'd only just had their third when I last saw 'em! I really must make the journey up there sometime, I heard it's a nice enough place, for a human built town... err, looks like your friends getting rather impatient with all this family stuff. What were we talking about? Ah yes, the a trip to the tower versus halfling hospitality...~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 58
END

IF ~~ THEN BEGIN 27 // from: 0.7
  SAY #102249 /* ~Ah, my favourite third cousin! How's he doing?~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 59
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN GOTO 28
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN EXTERN ~ALORAJ~ 137
END

IF ~~ THEN BEGIN 28 // from: 27.5
  SAY #102251 /* ~And to think the pair'd only just had their third when I last saw 'em! I really must make the journey up there sometime, I heard it's a nice enough place, for a human built town... err, looks like your friends getting rather impatient with all this family stuff. What were we talking about? Ah yes, the a trip to the tower versus halfling hospitality...~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 59
END

IF ~~ THEN BEGIN 29 // from:
  SAY #102249 /* ~Ah, my favourite third cousin! How's he doing?~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 60
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN GOTO 30
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN EXTERN ~ALORAJ~ 139
END

IF ~~ THEN BEGIN 30 // from: 29.5
  SAY #102251 /* ~And to think the pair'd only just had their third when I last saw 'em! I really must make the journey up there sometime, I heard it's a nice enough place, for a human built town... err, looks like your friends getting rather impatient with all this family stuff. What were we talking about? Ah yes, the a trip to the tower versus halfling hospitality...~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 60
END

IF ~~ THEN BEGIN 31 // from: 0.9
  SAY #102247 /* ~Sometimes sooner, miss! Say... have we met before?~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 61
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN GOTO 33
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN EXTERN ~ALORAJ~ 141
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN GOTO 32
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN EXTERN ~ALORAJ~ 140
END

IF ~~ THEN BEGIN 32 // from: 31.7
  SAY #102249 /* ~Ah, my favourite third cousin! How's he doing?~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 61
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN GOTO 33
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN EXTERN ~ALORAJ~ 141
END

IF ~~ THEN BEGIN 33 // from: 32.5 31.5
  SAY #102251 /* ~And to think the pair'd only just had their third when I last saw 'em! I really must make the journey up there sometime, I heard it's a nice enough place, for a human built town... err, looks like your friends getting rather impatient with all this family stuff. What were we talking about? Ah yes, the a trip to the tower versus halfling hospitality...~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 61
END

IF ~~ THEN BEGIN 34 // from:
  SAY #102247 /* ~Sometimes sooner, miss! Say... have we met before?~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 62
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN GOTO 36
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN EXTERN ~ALORAJ~ 144
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN GOTO 35
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN EXTERN ~ALORAJ~ 143
END

IF ~~ THEN BEGIN 35 // from: 34.7
  SAY #102249 /* ~Ah, my favourite third cousin! How's he doing?~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 62
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN GOTO 36
  IF ~  InParty("alora")
InMyArea("alora")
!StateCheck("alora",CD_STATE_NOTVALID)
~ THEN EXTERN ~ALORAJ~ 144
END

IF ~~ THEN BEGIN 36 // from: 35.5 34.5
  SAY #102251 /* ~And to think the pair'd only just had their third when I last saw 'em! I really must make the journey up there sometime, I heard it's a nice enough place, for a human built town... err, looks like your friends getting rather impatient with all this family stuff. What were we talking about? Ah yes, the a trip to the tower versus halfling hospitality...~ */
  IF ~~ THEN REPLY #80071 /* ~It is no concern of yours where I've been or where I go.  Just point the way to Firewine.~ */ GOTO 2
  IF ~~ THEN REPLY #80072 /* ~It is not a day for Durlag's Tower.  Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ GOTO 2
  IF ~~ THEN REPLY #80073 /* ~The tower holds no interest for me today.  Not when I would rather explore your lovely village.~ */ GOTO 1
  IF ~~ THEN REPLY #80074 /* ~Perhaps it would be best if I did see a healer.  It has not been a gentle trip here.~ */ GOTO 12
  IF ~  InParty("montaron")
InMyArea("montaron")
!StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN EXTERN ~MONTAJ~ 62
END
