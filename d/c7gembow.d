// -*- weidu-d -*-

BEGIN ~c7gembow~

IF ~!CombatCounter(0)~ BEGIN worthless
  SAY @70 /* You pause to admire your Gem Bow for a moment before remembering you’re in the middle of combat, and that’s a rather pressing matter. */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 1
  SAY @1 /* The Gem Bow is currently uncharged with no gem affixed to its indentation. */
    IF ~~ REPLY @67 /* Affix a gem. */ GOTO 4
    IF ~~ REPLY @2 /* Do nothing. */ GOTO 2
END

IF ~CombatCounter(0)~ BEGIN 2
  SAY @3 /* You put the Gem Bow away. */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 3
  SAY @35 /* u dip dat shiet into the gembu and shove it away ... bitch */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 4
  SAY @67 /* Which gem would you like to equip? */
    IF ~~ REPLY @69 GOTO 2
    IF ~PartyHasItemIdentified("MISC19")~ REPLY @4 /* Affix a Turquoise Gem to the indentation. */
       DO ~TakePartyItemNum("MISC19",1) DestroyItem("MISC19") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw01",LastTalkedToBy(Myself),0,0,0)~ GOTO 5
    IF ~PartyHasItemIdentified("MISC16")~ REPLY @5 /* Affix a Fire Agate Gem to the indentation. */
       DO ~TakePartyItemNum("MISC16",1) DestroyItem("MISC16") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw02",LastTalkedToBy(Myself),0,0,0)~ GOTO 6
    IF ~PartyHasItemIdentified("MISC17")~ REPLY @6 /* Affix a Lynx Eye Gem to the indentation. */
       DO ~TakePartyItemNum("MISC17",1) DestroyItem("MISC17") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw03",LastTalkedToBy(Myself),0,0,0)~ GOTO 7
    IF ~PartyHasItemIdentified("MISC18")~ REPLY @7 /* Affix a Sunstone Gem to the indentation. */
       DO ~TakePartyItemNum("MISC18",1) DestroyItem("MISC18") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw04",LastTalkedToBy(Myself),0,0,0)~ GOTO 8
    IF ~PartyHasItemIdentified("MISC22")~ REPLY @8 /* Affix a Andar Gem to the indentation. */
       DO ~TakePartyItemNum("MISC22",1) DestroyItem("MISC22") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw05",LastTalkedToBy(Myself),0,0,0)~ GOTO 9
    IF ~PartyHasItemIdentified("MISC23")~ REPLY @9 /* Affix a Jasper Gem to the indentation. */
       DO ~TakePartyItemNum("MISC23",1) DestroyItem("MISC23") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw06",LastTalkedToBy(Myself),0,0,0)~ GOTO 10
    IF ~PartyHasItemIdentified("MISC24")~ REPLY @10 /* Affix a Tchazar Gem to the indentation. */
       DO ~TakePartyItemNum("MISC24",1) DestroyItem("MISC24") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw07",LastTalkedToBy(Myself),0,0,0)~ GOTO 11
    IF ~PartyHasItemIdentified("MISC26")~ REPLY @11 /* Affix a Iol Gem to the indentation. */
       DO ~TakePartyItemNum("MISC26",1) DestroyItem("MISC26") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw08",LastTalkedToBy(Myself),0,0,0)~ GOTO 12
    IF ~PartyHasItemIdentified("MISC21")~ REPLY @12 /* Affix a Skydrop Gem to the indentation. */
       DO ~TakePartyItemNum("MISC21",1) DestroyItem("MISC21") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw09",LastTalkedToBy(Myself),0,0,0)~ GOTO 13
    IF ~PartyHasItemIdentified("MISC25")~ REPLY @13 /* Affix a Zircon Gem to the indentation. */
       DO ~TakePartyItemNum("MISC25",1) DestroyItem("MISC25") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw10",LastTalkedToBy(Myself),0,0,0)~ GOTO 14
    IF ~PartyHasItemIdentified("MISC20")~ REPLY @14 /* Affix a Bloodstone Gem to the indentation. */
       DO ~TakePartyItemNum("MISC20",1) DestroyItem("MISC20") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw11",LastTalkedToBy(Myself),0,0,0)~ GOTO 15
    IF ~PartyHasItemIdentified("MISC27")~ REPLY @15 /* Affix a Moonstone Gem to the indentation. */
       DO ~TakePartyItemNum("MISC27",1) DestroyItem("MISC27") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw12",LastTalkedToBy(Myself),0,0,0)~ GOTO 16
    IF ~PartyHasItemIdentified("MISC29")~ REPLY @16 /* Affix a Ziose Gem to the indentation. */
       DO ~TakePartyItemNum("MISC29",1) DestroyItem("MISC29") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw13",LastTalkedToBy(Myself),0,0,0)~ GOTO 17
    IF ~PartyHasItemIdentified("MISC30")~ REPLY @17 /* Affix a Chrysoberyl Gem to the indentation. */
       DO ~TakePartyItemNum("MISC30",1) DestroyItem("MISC30") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw14",LastTalkedToBy(Myself),0,0,0)~ GOTO 18
    IF ~PartyHasItemIdentified("MISC28")~ REPLY @18 /* Affix a Waterstar Gem to the indentation. */
       DO ~TakePartyItemNum("MISC28",1) DestroyItem("MISC28") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw15",LastTalkedToBy(Myself),0,0,0)~ GOTO 19
    IF ~PartyHasItemIdentified("MISC32")~ REPLY @19 /* Affix a Shandon Gem to the indentation. */
       DO ~TakePartyItemNum("MISC32",1) DestroyItem("MISC32") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw16",LastTalkedToBy(Myself),0,0,0)~ GOTO 20
    IF ~PartyHasItemIdentified("MISC31")~ REPLY @20 /* Affix a Star Diopside Gem to the indentation. */
       DO ~TakePartyItemNum("MISC31",1) DestroyItem("MISC31") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw17",LastTalkedToBy(Myself),0,0,0)~ GOTO 21
    IF ~PartyHasItemIdentified("MISC35")~ REPLY @21 /* Affix a Horn Coral Gem to the indentation. */
       DO ~TakePartyItemNum("MISC35",1) DestroyItem("MISC35") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw18",LastTalkedToBy(Myself),0,0,0)~ GOTO 22
    IF ~PartyHasItemIdentified("MISC33")~ REPLY @22 /* Affix a Aquamarine Gem to the indentation. */
       DO ~TakePartyItemNum("MISC33",1) DestroyItem("MISC33") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw19",LastTalkedToBy(Myself),0,0,0)~ GOTO 23
    IF ~PartyHasItemIdentified("MISC34")~ REPLY @23 /* Affix a Garnet Gem to the indentation. */
       DO ~TakePartyItemNum("MISC34",1) DestroyItem("MISC34") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw20",LastTalkedToBy(Myself),0,0,0)~ GOTO 24
    IF ~PartyHasItemIdentified("MISC36")~ REPLY @24 /* Affix a Pearl to the indentation. */
       DO ~TakePartyItemNum("MISC36",1) DestroyItem("MISC36") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw21",LastTalkedToBy(Myself),0,0,0)~ GOTO 25
    IF ~PartyHasItemIdentified("MISC37")~ REPLY @25 /* Affix a Sphene Gem to the indentation. */
       DO ~TakePartyItemNum("MISC37",1) DestroyItem("MISC37") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw22",LastTalkedToBy(Myself),0,0,0)~ GOTO 26
    IF ~PartyHasItemIdentified("MISC38")~ REPLY @26 /* Affix a Black Opal to the indentation. */
       DO ~TakePartyItemNum("MISC38",1) DestroyItem("MISC38") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw23",LastTalkedToBy(Myself),0,0,0)~ GOTO 27
    IF ~PartyHasItemIdentified("MISC39")~ REPLY @27 /* Affix a Water Opal to the indentation. */
       DO ~TakePartyItemNum("MISC39",1) DestroyItem("MISC39") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw24",LastTalkedToBy(Myself),0,0,0)~ GOTO 28
    IF ~PartyHasItemIdentified("MISC40")~ REPLY @28 /* Affix a Moonbar Gem to the indentation. */
       DO ~TakePartyItemNum("MISC40",1) DestroyItem("MISC40") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw25",LastTalkedToBy(Myself),0,0,0)~ GOTO 29
    IF ~PartyHasItemIdentified("MISC42")~ REPLY @29 /* Affix a Diamond to the indentation. */
       DO ~TakePartyItemNum("MISC42",1) DestroyItem("MISC42") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw26",LastTalkedToBy(Myself),0,0,0)~ GOTO 30
    IF ~PartyHasItemIdentified("MISC43")~ REPLY @30 /* Affix a Emerald to the indentation. */
       DO ~TakePartyItemNum("MISC43",1) DestroyItem("MISC43") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw27",LastTalkedToBy(Myself),0,0,0)~ GOTO 31
    IF ~PartyHasItemIdentified("MISC41")~ REPLY @31 /* Affix a Star Sapphire to the indentation. */
       DO ~TakePartyItemNum("MISC41",1) DestroyItem("MISC41") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw28",LastTalkedToBy(Myself),0,0,0)~ GOTO 32
    IF ~PartyHasItemIdentified("MISC44")~ REPLY @32 /* Affix a King's Tears to the indentation. */
       DO ~TakePartyItemNum("MISC44",1) DestroyItem("MISC44") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw29",LastTalkedToBy(Myself),0,0,0)~ GOTO 33
    IF ~PartyHasItemIdentified("MISC45")~ REPLY @33 /* Affix a Rogue Stone to the indentation. */
       DO ~TakePartyItemNum("MISC45",1) DestroyItem("MISC45") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw30",LastTalkedToBy(Myself),0,0,0)~ GOTO 34
    IF ~PartyHasItemIdentified("MISC1J")~ REPLY @34 /* Affix a Glittering Beljuril Gemstone to the indentation. */
       DO ~TakePartyItemNum("MISC1J",1) DestroyItem("MISC1J") TakePartyItem("c7gembow") DestroyItem("c7gembow") GiveItemCreate("c7#gbw31",LastTalkedToBy(Myself),0,0,0)~ GOTO 35
END

IF ~CombatCounter(0)~ BEGIN 5
  SAY @36 /* Turquoise Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 6
  SAY @37 /* Fire Agate Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 7
  SAY @38 /* Lynx Eye Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 8
  SAY @39 /* Sunstone Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 9
  SAY @40 /* Andar Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 10
  SAY @41 /* Jasper Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 11
  SAY @42 /* Tchazar Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 12
  SAY @43 /* Iol Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 13
  SAY @44 /* Skydrop Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 14
  SAY @45 /* Zircon Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 15
  SAY @46 /* Bloodstone Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 16
  SAY @47 /* Moonstone Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 17
  SAY @48 /* Ziose Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 18
  SAY @49 /* Chrysoberyl Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 19
  SAY @50 /* Waterstar Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 20
  SAY @51 /* Shandon Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 21
  SAY @52 /* Star Diopside Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 22
  SAY @53 /* Horn Coral Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 23
  SAY @54 /* Aquamarine Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 24
  SAY @55 /* Garnet Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 25
  SAY @56 /* Pearl */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 26
  SAY @57 /* Sphene Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 27
  SAY @58 /* Black Opal */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 28
  SAY @59 /* Water Opal */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 29
  SAY @60 /* Moonbar Gem */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 30
  SAY @61 /* Diamond */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 31
  SAY @62 /* Emerald */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 32
  SAY @63 /* Star Sapphire */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 33
  SAY @64 /* King's Tears */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 34
  SAY @65 /* Rogue Stone */
    IF ~~ DO ~~ EXIT
END

IF ~CombatCounter(0)~ BEGIN 35
  SAY @66 /* Glittering Beljuril Gemstone */
    IF ~~ DO ~~ EXIT
END

// eof
