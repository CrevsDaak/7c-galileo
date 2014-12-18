// creator  : weidu (version 23700)
// argument : GANDOL.DLG
// game     : .
// source   : ./DATA/DIALOG.BIF
// dialog   : ./lang/en_us/dialog.tlk
// dialogF  : (none)

BEGIN ~GANDOL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 19 23 24 even though they appear after this state */
~  Global("CDNumTimesTalkedTo","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY #2037 /* ~Well met, traveler. Gandolar Luckyfoot, at your disposal. To what does our little village owe the pleasure of your visit? Off to Durlag's Tower? Or have you already been, and now ye need your breaks and bruises healed? Many a wanderer comes to town nearly bled to death.~ */
  IF ~~ THEN REPLY #2038 /* ~It is no concern of yours where I've been or where I go. Just point the way to Firewine.~ */ DO ~SetGlobal("CDNumTimesTalkedTo","LOCALS",1)
~ GOTO 2
  IF ~~ THEN REPLY #2039 /* ~It is not a day for Durlag's Tower. Today I'm interested in your Firewine ruins, and I'd be grateful if you'd show the best way.~ */ DO ~SetGlobal("CDNumTimesTalkedTo","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY #2040 /* ~The tower holds no interest for me today. Not when I would rather explore your lovely village.~ */ DO ~SetGlobal("CDNumTimesTalkedTo","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY #2041 /* ~Perhaps it would be best if I did see a healer. It has not been a gentle trip here.~ */ DO ~SetGlobal("CDNumTimesTalkedTo","LOCALS",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #2042 /* ~By all the means you have. We welcome visitors with tales to tell, and extend our hospitality.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #2043 /* ~Suit yourself. The ruin is not a moment south, but that knowledge will not help you. You could wear your arms to stumps digging and not break through to the chambers below.~ */
  IF ~~ THEN REPLY #2044 /* ~Then my journey is for naught. Prithee tell me if I might pass some other way?~ */ GOTO 5
  IF ~~ THEN REPLY #2045 /* ~Is there an easier means for entry? Speak!~ */ GOTO 3
  IF ~~ THEN REPLY #2046 /* ~Your opinions are yours, but I would just as soon try myself.~ */ GOTO 4
  IF ~~ THEN REPLY #2047 /* ~I must try. It would be a shame to have come all this way, only to have to return empty handed.~ */ GOTO 5
  IF ~~ THEN REPLY #2048 /* ~Feh! Back to Beregost then, I've no time for this!~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 7.2 6.1 5.1 2.1
  SAY #2049 /* ~Perhaps, perhaps not. A more polite tone may yield an answer.~ */
  IF ~~ THEN REPLY #2077 /* ~Then my journey is for naught. Prithee tell if I might pass some other way?~ */ GOTO 5
  IF ~~ THEN REPLY #2079 /* ~Your opinions are yours, but I would just as soon try myself.~ */ GOTO 4
  IF ~~ THEN REPLY #2080 /* ~I must try. 'Twould be a shame to have come all this way, only to have to return empty handed.~ */ GOTO 5
  IF ~~ THEN REPLY #2081 /* ~Feh! Back to Beregost then, I've no time for this!~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 18.3 16.3 15.3 14.3 13.3 7.3 6.3 5.3 3.3 3.1 2.4 2.2
  SAY #2050 /* ~It's your day to do with as you please.~ */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 3.0 2.3 2.0
  SAY #2051 /* ~The only way into the ruin I know, is a secret door in one of our burrows. You'll get quite the hairy eye from everyone if you expect to search them all.~ */
  IF ~~ THEN REPLY #2052 /* ~My apologies for my manner, but it has been a long quest. Could you direct me to the proper home?~ */ UNSOLVED_JOURNAL #27114 /* ~Firewine Bridge and Gullykin
Gandolar Luckyfoot says there is a secret entrance to the Firewine Bridge ruins in one of the halfling burrows of Gullykin.~ */ GOTO 7
  IF ~~ THEN REPLY #2053 /* ~You would do well to tell me which is the correct home!~ */ UNSOLVED_JOURNAL #27114 /* ~Firewine Bridge and Gullykin
Gandolar Luckyfoot says there is a secret entrance to the Firewine Bridge ruins in one of the halfling burrows of Gullykin.~ */ GOTO 3
  IF ~~ THEN REPLY #2054 /* ~Mayhaps I'll raze them to the ground, and make my task all the simpler!~ */ UNSOLVED_JOURNAL #27114 /* ~Firewine Bridge and Gullykin
Gandolar Luckyfoot says there is a secret entrance to the Firewine Bridge ruins in one of the halfling burrows of Gullykin.~ */ GOTO 6
  IF ~~ THEN REPLY #2055 /* ~I have spent enough time here already. Have your ruins, I am done!~ */ UNSOLVED_JOURNAL #27114 /* ~Firewine Bridge and Gullykin
Gandolar Luckyfoot says there is a secret entrance to the Firewine Bridge ruins in one of the halfling burrows of Gullykin.~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 16.2 7.1 6.2 5.2
  SAY #2056 /* ~Harm a hair on a single foot and you'll feel the bite of our archers' arrows! No need for that from either of us.~ */
  IF ~~ THEN REPLY #2087 /* ~My apologies for my manner, but it has been a long quest. Could you direct me to the proper home?~ */ GOTO 7
  IF ~~ THEN REPLY #2088 /* ~You would do well to tell me which is the correct home!~ */ GOTO 3
  IF ~~ THEN REPLY #2089 /* ~Mayhaps I'll raze them to the ground, and make my task all the simpler!~ */ GOTO 6
  IF ~~ THEN REPLY #2090 /* ~I have spent enough time here already. Have your ruins, I am done!~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 16.0 8.0 6.0 5.0
  SAY #2057 /* ~A small gift for the owners and they may allow entry. Mayhaps the gold to buy a good blade, a fine cloak, or some other item of use. 100 should cover.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #2058 /* ~That is fair enough for my intrusion on their privacy.~ */ DO ~TakePartyGold(100)
~ GOTO 10
  IF ~~ THEN REPLY #2059 /* ~I've a good blade for the lot of you if you don't show me now!~ */ GOTO 6
  IF ~~ THEN REPLY #2060 /* ~I'll not pay to visit one of your dirty little holes! Just take me there!~ */ GOTO 3
  IF ~~ THEN REPLY #2061 /* ~I'll find it myself without paying your little fee! Goodbye!~ */ GOTO 4
  IF ~  PartyGoldGT(49)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY #2333 /* ~I'll gladly pay, though 100 is too much. Would you take 50?~ */ GOTO 8
  IF ~  PartyGoldGT(49)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY #2334 /* ~I'll gladly pay, though 100 is too much. Would you take 50?~ */ DO ~TakePartyGold(50)
~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 18.4 7.4
  SAY #2062 /* ~Not to be rude, but I figure their privacy to be worth a bit more than that.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 9 // from:
  SAY #2063 /* ~Perhaps you are not familiar with my peoples' respect for tact, so I bear you no grudge. However, even with every opportunity to be polite, you have still managed to insult me. 'Tis for the best that we begin again as strangers, lest I learn to dislike you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 18.5 18.0 7.5 7.0
  SAY #2064 /* ~It's a fair trade. I will show you, and you may come and go as you please. Whatever you do with this boon is your own business, but please try not to scare up any beasties in our fair village. Just go to the basement of the winery, there you will find a secret door.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #27114 /* ~Firewine Bridge and Gullykin
Gandolar Luckyfoot says there is a secret entrance to the Firewine Bridge ruins in one of the halfling burrows of Gullykin.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 17.0 15.2 14.2 13.2 0.1
  SAY #2065 /* ~Aye, I can point the way to you, and gladly so, but I must warn you as well. There be many an odd thing that roam through there, and I hear tell they be a touch more organized than your normal critters, but I hear many things. Just go to the basement of the winery, there you will find a secret door.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #27114 /* ~Firewine Bridge and Gullykin
Gandolar Luckyfoot says there is a secret entrance to the Firewine Bridge ruins in one of the halfling burrows of Gullykin.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.3
  SAY #2066 /* ~You look a bit the worse for wear. You'll find Alvanhendar in the winery. A more skilled cleric you'll not find hereabout. Rates are fairly reasonable too.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 23 24 even though they appear after this state */
~  Global("CDNumTimesTalkedTo","LOCALS",1)
~ THEN BEGIN 13 // from:
  SAY #2067 /* ~If I might pull on your coattail a moment more, I have a proposition for you. It's usually nature-quiet by the Firewine ruins, even with its violent bygone. Those who died and did not sleep have mostly found their rest over time. It's a live threat that comes now, with a band of kobolds that moved in. Perhaps we could prevail upon you to rid us of this menace, and in return, a gift from us you shall receive. Keep whatever you find as well.~ */
  IF ~~ THEN REPLY #2068 /* ~Have you no brave halflings up to the task? It cannot be so.~ */ DO ~SetGlobal("CDNumTimesTalkedTo","LOCALS",2)
~ UNSOLVED_JOURNAL #27115 /* ~The Firewine Ruins
There are kobolds in the Firewine ruins.~ */ GOTO 14
  IF ~~ THEN REPLY #2069 /* ~Cross my palm with 100 gold and I'll consider it.~ */ DO ~SetGlobal("CDNumTimesTalkedTo","LOCALS",2)
~ UNSOLVED_JOURNAL #27115 /* ~The Firewine Ruins
There are kobolds in the Firewine ruins.~ */ GOTO 15
  IF ~~ THEN REPLY #2070 /* ~I'll gladly aid you small folk as best I can. Lead on.~ */ DO ~SetGlobal("CDNumTimesTalkedTo","LOCALS",2)
~ UNSOLVED_JOURNAL #27115 /* ~The Firewine Ruins
There are kobolds in the Firewine ruins.~ */ GOTO 11
  IF ~~ THEN REPLY #2071 /* ~I've no interest in your offer. Keep your problems to yourself.~ */ DO ~SetGlobal("CDNumTimesTalkedTo","LOCALS",2)
~ UNSOLVED_JOURNAL #27115 /* ~The Firewine Ruins
There are kobolds in the Firewine ruins.~ */ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 15.0 14.0 13.0
  SAY #2072 /* ~We've a number of hearty tunnel rats, but they're off hunting with a band of goblinstickers and not due back for a time or two. It's better if the creatures in the ruin are expelled before they dig in tight and deep. Help us will you?~ */
  IF ~  False()
~ THEN REPLY #2335 /* ~Have you no brave halflings up to the task? It cannot be so.~ */ GOTO 14
  IF ~~ THEN REPLY #2336 /* ~Cross my palm with 100 gold and I'll consider it.~ */ GOTO 15
  IF ~~ THEN REPLY #2337 /* ~I'll gladly aid you small folk as best I can. Lead on.~ */ GOTO 11
  IF ~~ THEN REPLY #2338 /* ~I've no interest in your offer. Keep your problems to yourself.~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 15.1 14.1 13.1
  SAY #2073 /* ~We have but what Dallillia provides and little more. The gift you receive will be appropriate, to your task and our means.~ */
  IF ~~ THEN REPLY #2339 /* ~Have you no brave halflings up to the task? It cannot be so.~ */ GOTO 14
  IF ~  False()
~ THEN REPLY #2340 /* ~Cross my palm with 100 gold and I'll consider it.~ */ GOTO 15
  IF ~~ THEN REPLY #2341 /* ~I'll gladly aid you small folk as best I can. Lead on.~ */ GOTO 11
  IF ~~ THEN REPLY #2342 /* ~I've no interest in your offer. Keep your problems to yourself.~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 16.1
  SAY #2082 /* ~Perhaps, perhaps not. A more polite tone may yield an answer.~ */
  IF ~~ THEN REPLY #2083 /* ~My apologies for my manner, but it has been a long quest. Could you direct me to the proper home?~ */ GOTO 7
  IF ~~ THEN REPLY #2084 /* ~You would do well to tell me which is the correct home!~ */ GOTO 16
  IF ~~ THEN REPLY #2085 /* ~Mayhaps I'll raze them to the ground, and make my task all the simpler!~ */ GOTO 6
  IF ~~ THEN REPLY #2086 /* ~I have spent enough time here already. Have your ruins, I am done!~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 18.1 17.1
  SAY #2091 /* ~Harm a hair on a single foot and you'll feel the bite of our archers' arrows! No need for that from either of us.~ */
  IF ~~ THEN REPLY #2092 /* ~That is fair enough for my intrusion on their privacy.~ */ GOTO 11
  IF ~~ THEN REPLY #2093 /* ~I've a good blade for the lot of you if you don't show me now!~ */ GOTO 17
  IF ~~ THEN REPLY #2094 /* ~I'll not pay to visit one of your dirty little holes! Just take me there!~ */ EXIT
  IF ~~ THEN REPLY #2095 /* ~I'll find it myself without paying your little fee! Goodbye!~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 18.2
  SAY #2096 /* ~Perhaps, perhaps not. A more polite tone may yield an answer.~ */
  IF ~~ THEN REPLY #2097 /* ~That is fair enough for my intrusion on their privacy.~ */ GOTO 10
  IF ~~ THEN REPLY #2098 /* ~I've a good blade for the lot of you if you don't show me now!~ */ GOTO 17
  IF ~~ THEN REPLY #2099 /* ~I'll not pay to visit one of your dirty little holes! Just take me there!~ */ GOTO 18
  IF ~~ THEN REPLY #2100 /* ~I'll find it myself without paying your little fee! Goodbye!~ */ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
~ THEN REPLY #2343 /* ~I'll gladly pay, though 100 is too much. Would you take 50?~ */ GOTO 8
  IF ~  PartyGoldGT(49)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN REPLY #2344 /* ~I'll gladly pay, though 100 is too much. Would you take 50?~ */ DO ~TakePartyGold(50)
~ GOTO 10
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 19 // from:
  SAY #9031 /* ~You are such a likeable <MANWOMAN>, let's begin again as though we have never met. This way I can go through the pleasure of meeting you all over again.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #9032 /* ~I would just as soon forget that I have ever met you! This way I can meet you again as though for the first time. It will save me having to dislike you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #9033 /* ~Not to be rude, but I'd rather you left immediately. You have not proven to be trustworthy.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 23 24 even though they appear after this state */
~  True()
~ THEN BEGIN 22 // from:
  SAY #9034 /* ~I trust you have found the populous of our little village to be amiable? We do so like to welcome strangers.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Dead("DICK")
~ THEN BEGIN 23 // from:
  SAY #11873 /* ~<CHARNAME>! I have received news that you have cleared out the Firewine Bridge ruins! No longer will kobolds plague our tiny village. I must congratulate you on a job well done. Everyone is grateful for your help. Take this small amount of money as a show of our gratitude.~ */
  IF ~~ THEN DO ~GiveGoldForce(250)
EraseJournalEntry(27114)
EraseJournalEntry(27115)
EraseJournalEntry(27064)
EraseJournalEntry(27116)
EraseJournalEntry(27117)
EraseJournalEntry(27118)
EscapeArea()
~ SOLVED_JOURNAL #27119 /* ~The Firewine Ruins
Gandolar was pleased that I dispatched the ogre mage that sent kobolds to harass the people of Gullykin.~ */ EXIT
END

IF WEIGHT #2 ~  Global("CDNumTimesTalkedTo","LOCALS",2)
!Dead("DICK")
~ THEN BEGIN 24 // from:
  SAY #395 /* ~We've stuck a few kobolds before, but in Firewine they seem more organized, not like their kind at all. Still stink like kobolds, though.~ */
  IF ~~ THEN EXIT
END
