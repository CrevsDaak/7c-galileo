BEGIN "7C#GAL01"

IF ~NumTimesTalkedTo(0)
!Global("7C#DoneFirewineRuins","GLOBAL",1)~ BEGIN 7c#meeting.1
  SAY @1 /* Greetings, I am called Galileo; bard, servant of Finder Wyvernspur, and I am at your service. */
    IF ~~ REPLY @2 /* Hello there my small friend, I am <CHARNAME> */ GOTO 7c#meeting.2
    IF ~~ REPLY @3 /* No, I do not like you. */ GOTO 7c#end.angry.1
    IF ~~ REPLY @4 /* Yes, I would appreciate your help. */ GOTO 7c#joins.1
    IF ~~ REPLY @5 /* Please excuse me, I haven't the time to speak with you. */ GOTO 7c#happy.bye.1
END

IF ~~ BEGIN 7c#meeting.2
  SAY @6 /* Pleased to meet you! Aye so, I assume you've talked to Gan [...] */
    IF ~~ REPLY @7 /* Well that rules you out. */ GOTO 7c#end.angry.2
    IF ~~ REPLY @8 /* That depends. How can you assist my party? */ GOTO 7c#answers.1
END

IF ~~ BEGIN 7c#end.angry.1
  SAY @9 /* Oh. */
    IF ~~ DO ~SetGlobal("7C#GalileoHappiness1","GLOBAL",5)~ EXIT
END

IF ~~ BEGIN 7c#joins.1
  SAY @10 /* Excellent. To the Firewine then. Let us be off! */
    IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ BEGIN 7c#happy.bye.1
  SAY @11 /* No trouble at all, good sir. Come back if you need me, I likely won't be going anywhere. */
    IF ~~ DO ~SetGlobal("7C#GalileoHappiness1","GLOBAL",15)~ EXIT
END

IF ~~ BEGIN 7c#end.angry.2
  SAY @12 /* Well that was uncalled for. Bugger off, rude one. */
    IF ~~ DO ~SetGlobal("7C#GalileoHappiness1","GLOBAL",5)~ EXIT
END

IF ~~ BEGIN 7c#answers.1
  SAY @13 /* Aye now, I'm glad you asked! See I'm a Jester. I'm like a Bard [...] */
    IF ~~ REPLY @14 /* Why would I want that? */ GOTO 7c#answers.2
    IF ~~ REPLY	@15 /* Sounds good to me! */ GOTO 7c#joins.sarcasm.1
END

IF ~~ BEGIN 7c#answers.2
  SAY @16 /* I like adventuring and stuff! Do you want my help or not? */
    IF ~!Global("7C#DoneFirewineRuins","GLOBAL",1)~ REPLY @17 /* Okay, let's go investigate these ruins. */ GOTO 7c#marvelous.joins.1
    IF ~Global("7C#DoneFirewineRuins","GLOBAL",1)~ REPLY @50 /* Okay, why not. */ GOTO 7c#marvelous.joins.1
    IF ~~ REPLY @18 /* No thank you. Good-bye. */ GOTO 7c#happy.good.bye.1 
END

IF ~~ BEGIN 7c#joins.sarcasm.1
  SAY @19 /* I hope you are not being sarcastic, my friend. */
    IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ BEGIN 7c#marvelous.joins.1
  SAY @20 /* Oh marvelous, just mah-velous! */
    IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ BEGIN 7c#happy.good.bye.1
  SAY @21 /* You make me sad. So be it. */
    IF ~~ DO ~SetGlobal("7C#GalileoHappiness1","GLOBAL",15)~ EXIT
END

IF ~!NumTimesTalkedTo(0)
GlobalGT("7C#GalileoHappiness1","GLOBAL",9)
!Global("7C#DoneFirewineRuins","GLOBAL",1)~ BEGIN 7c#meet.2.happy
  SAY @22 /* Looking to have a helper for exploring the Firewine Ruins? */
    IF ~~ REPLY @23 /* Yes, I would be pleased to have you join me. */ GOTO 7c#meet.2.happy.join.1
    IF ~~ REPLY @3 /* No, I do not like you */ GOTO 7c#end.angry.1
    IF ~~ REPLY @24 /* Could you tell me what your abilities are? */ GOTO 7c#answers.1
    IF ~~ REPLY @25 /* Not at this time, sorry. */ GOTO 7c#happy.bye.again.1
END

IF ~~ BEGIN 7c#meet.2.happy.join.1
  SAY @26 /* Joyous day! Most excellent! */
    IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ BEGIN 7c#happy.bye.again.1
  SAY @27 /* No trouble. */
    IF ~~ DO ~SetGlobal("7C#GalileoHappiness1","GLOBAL",15)~ EXIT
END

IF ~!NumTimesTalkedTo(0)
GlobalLT("7C#GalileoHappiness1","GLOBAL",10)
!Global("7C#DoneFirewineRuins","GLOBAL",1)~ BEGIN 7c#meet.angry.1
  SAY @28 /* Hmm? Oh, what do you want? */
    IF ~~ REPLY @29 /* I was wondering if you could join my group in our venture in the Firewine Ruins. */ GOTO 7c#meet.angry.joins.1
    IF ~~ REPLY @30 /* I just wanted to say that I'm sorry for what I said before. */ GOTO 7c#sorry.bro.1
    IF ~~ REPLY @31 /* I came to let you know that you are a failure and no one loves you. */ GOTO 7c#kill.u.r.mom
END

IF ~~ BEGIN 7c#meet.angry.joins.1
  SAY @32 /* Just like that? Here I thought you were not nice at all. All right then, let us be off. */
    IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ BEGIN 7c#sorry.bro.1
  SAY @33 /* Oh, that's alright. I understand, adventuring must [...] */
    IF ~~ REPLY @34 /* No, that was all. */ GOTO 7c#meet.angry.happy.bye.1
    IF ~~ REPLY @35 /* Yes, I would appreciate your help */ GOTO 7c#meet.2.happy.join.1
    IF ~~ REPLY @36 /* That would depend on your skill set. */ GOTO 7c#answers.1
END

IF ~~ BEGIN 7c#kill.u.r.mom
  SAY @37 /* I ... What?! What did I ever do to you? */
    IF ~~ REPLY @38 /* You exist. */ GOTO 7c#fuck.you
    IF ~~ REPLY @39 /* You are an ugly butt, and your butt is stupid. */ GOTO 7c#fuck.you
    IF ~~ REPLY @40 /* No, I was only joking. I didn't mean all that. */ GOTO 7c#oh.sorry
END

IF ~~ BEGIN 7c#fuck.you
  SAY @41 /* Well, I never! */
    IF ~~ DO ~SetGlobal("7C#GalileoHappiness1","GLOBAL",0)~ EXIT
END

IF ~~ BEGIN 7c#oh.sorry
  SAY @42 /* Erm ... I see. Well, that's not exactly my type of humor, but okay. */
    IF ~~ DO ~SetGlobal("7C#GalileoHappiness1","GLOBAL",15)~ EXIT
END

IF ~!NumTimesTalkedTo(0)
GlobalLT("7C#GalileoHappiness1","GLOBAL",5)~ BEGIN 7c#very.angry
  SAY @43 /* Bugger off. */
    IF ~~ DO ~~ EXIT
END

IF ~NumTimesTalkedTo(0)
Global("7C#DoneFirewineRuins","GLOBAL",1)~ BEGIN 7c#meet.firewine.done.1
  SAY @44 /* Well, it's nice to finally meet the savior of our little town! */
    IF ~~ REPLY @45 /* Hello there my small friend. */ GOTO 7c#hey.there.shorty
    IF ~~ REPLY @5 /* Please excuse me, I haven't the time to speak with you. */ GOTO 7c#happy.bye.1
END

IF ~~ BEGIN 7c#hey.there.shorty
  SAY @46 /* Aye so, it's a bit forward ... but are you not adventurers? This place [...] */
    IF ~~ REPLY @8 /* That depends. How can you assist my party? */ GOTO 7c#answers.1
    IF ~NumInPartyGT(5)~ REPLY @47 /* No, I do not have room for you at the moment. */ GOTO 7c#no.place.4.ya
    IF ~~ REPLY @48 /* No thank you. */ GOTO 7c#no.prob.bob.bye
END

IF ~~ BEGIN 7c#no.place.4.ya
  SAY @49 /* What? How? Oi, I'm this small! Oh ... fine. */
    IF ~~ DO ~SetGlobal("7C#GalileoHappiness1","GLOBAL",15)~ EXIT
END

IF ~~ BEGIN 7c#meet.angry.happy.bye.1
  SAY @51 /* No trouble at all, good sir. Come back if you need me, I likely won't be going anywhere. */
    IF ~~ DO ~SetGlobal("7C#GalileoHappiness1","GLOBAL",15)~ EXIT
END

IF ~~ BEGIN 7c#no.prob.bob.bye
  SAY @52 /* That's no problem. Let me know if'n you change your mind, I'm bored. */
    IF ~~ DO ~SetGlobal("7C#GalileoHappiness1","GLOBAL",15)~ EXIT
END
