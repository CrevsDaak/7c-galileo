// -*- weidu-d -*-

BEGIN ~7cgembow~

IF ~~ BEGIN 1
  SAY @1 /* The gmebow has no gems watch wanna do u punk */
    IF ~~ REPLY @67 /* lemme pick a shiny 4 mah bow pls bruh */ GOTO 4
    IF ~~ REPLY @2 /* get me out u bieathc bug off u lil piss of shiet */ GOTO 2
END

IF ~~ BEGIN 2
  SAY @3 /* u put tha gamblo away */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 3
  SAY @35 /* u dip dat shiet into the gembu and shove it away */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 4
  SAY @67 /* whihc jnsknfkjdnfskdm u want to insert bhaal's deep in ur gemcuntblow */
    IF ~~ REPLY @69 GOTO 2
    IF ~PartyHasItemIdentified("MISC19")~ REPLY @4 /* attach a Turquoise Gem */
       DO ~TakePartyItemNum("MISC19",1) DestroyItem("MISC19") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw01",LastTalkedToBy(Myself),0,0,0)~ GOTO 5
    IF ~PartyHasItemIdentified("MISC16")~ REPLY @5 /* attach a Fire Agate Gem */
       DO ~TakePartyItemNum("MISC16",1) DestroyItem("MISC16") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw02",LastTalkedToBy(Myself),0,0,0)~ GOTO 6
    IF ~PartyHasItemIdentified("MISC17")~ REPLY @6 /* attach a Lynx Eye Gem */
       DO ~TakePartyItemNum("MISC17",1) DestroyItem("MISC17") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw03",LastTalkedToBy(Myself),0,0,0)~ GOTO 7
    IF ~PartyHasItemIdentified("MISC18")~ REPLY @7 /* attach a Sunstone Gem */
       DO ~TakePartyItemNum("MISC18",1) DestroyItem("MISC18") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw04",LastTalkedToBy(Myself),0,0,0)~ GOTO 8
    IF ~PartyHasItemIdentified("MISC22")~ REPLY @8 /* attach a Andar Gem */
       DO ~TakePartyItemNum("MISC22",1) DestroyItem("MISC22") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw05",LastTalkedToBy(Myself),0,0,0)~ GOTO 9
    IF ~PartyHasItemIdentified("MISC23")~ REPLY @9 /* attach a Jasper Gem */
       DO ~TakePartyItemNum("MISC23",1) DestroyItem("MISC23") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw06",LastTalkedToBy(Myself),0,0,0)~ GOTO 10
    IF ~PartyHasItemIdentified("MISC24")~ REPLY @10 /* attach a Tchazar Gem */
       DO ~TakePartyItemNum("MISC24",1) DestroyItem("MISC24") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw07",LastTalkedToBy(Myself),0,0,0)~ GOTO 11
    IF ~PartyHasItemIdentified("MISC26")~ REPLY @11 /* attach a Iol Gem */
       DO ~TakePartyItemNum("MISC26",1) DestroyItem("MISC26") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw08",LastTalkedToBy(Myself),0,0,0)~ GOTO 12
    IF ~PartyHasItemIdentified("MISC21")~ REPLY @12 /* attach a Skydrop Gem */
       DO ~TakePartyItemNum("MISC21",1) DestroyItem("MISC21") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw09",LastTalkedToBy(Myself),0,0,0)~ GOTO 13
    IF ~PartyHasItemIdentified("MISC25")~ REPLY @13 /* attach a Zircon Gem */
       DO ~TakePartyItemNum("MISC25",1) DestroyItem("MISC25") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw10",LastTalkedToBy(Myself),0,0,0)~ GOTO 14
    IF ~PartyHasItemIdentified("MISC20")~ REPLY @14 /* attach a Bloodstone Gem */
       DO ~TakePartyItemNum("MISC20",1) DestroyItem("MISC20") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw11",LastTalkedToBy(Myself),0,0,0)~ GOTO 15
    IF ~PartyHasItemIdentified("MISC27")~ REPLY @15 /* attach a Moonstone Gem */
       DO ~TakePartyItemNum("MISC27",1) DestroyItem("MISC27") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw12",LastTalkedToBy(Myself),0,0,0)~ GOTO 16
    IF ~PartyHasItemIdentified("MISC29")~ REPLY @16 /* attach a Ziose Gem */
       DO ~TakePartyItemNum("MISC29",1) DestroyItem("MISC29") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw13",LastTalkedToBy(Myself),0,0,0)~ GOTO 17
    IF ~PartyHasItemIdentified("MISC30")~ REPLY @17 /* attach a Chrysoberyl Gem */
       DO ~TakePartyItemNum("MISC30",1) DestroyItem("MISC30") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw14",LastTalkedToBy(Myself),0,0,0)~ GOTO 18
    IF ~PartyHasItemIdentified("MISC28")~ REPLY @18 /* attach a Waterstar Gem */
       DO ~TakePartyItemNum("MISC28",1) DestroyItem("MISC28") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw15",LastTalkedToBy(Myself),0,0,0)~ GOTO 19
    IF ~PartyHasItemIdentified("MISC32")~ REPLY @19 /* attach a Shandon Gem */
       DO ~TakePartyItemNum("MISC32",1) DestroyItem("MISC32") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw16",LastTalkedToBy(Myself),0,0,0)~ GOTO 20
    IF ~PartyHasItemIdentified("MISC31")~ REPLY @20 /* attach a Star Diopside Gem */
       DO ~TakePartyItemNum("MISC31",1) DestroyItem("MISC31") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw17",LastTalkedToBy(Myself),0,0,0)~ GOTO 21
    IF ~PartyHasItemIdentified("MISC35")~ REPLY @21 /* attach a Horn Coral Gem */
       DO ~TakePartyItemNum("MISC35",1) DestroyItem("MISC35") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw18",LastTalkedToBy(Myself),0,0,0)~ GOTO 22
    IF ~PartyHasItemIdentified("MISC33")~ REPLY @22 /* attach a Aquamarine Gem */
       DO ~TakePartyItemNum("MISC33",1) DestroyItem("MISC33") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw19",LastTalkedToBy(Myself),0,0,0)~ GOTO 23
2    IF ~PartyHasItemIdentified("MISC34")~ REPLY @23 /* attach a Garnet Gem */
       DO ~TakePartyItemNum("MISC34",1) DestroyItem("MISC34") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw20",LastTalkedToBy(Myself),0,0,0)~ GOTO 24
    IF ~PartyHasItemIdentified("MISC36")~ REPLY @24 /* attach a Pearl */
       DO ~TakePartyItemNum("MISC36",1) DestroyItem("MISC36") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw21",LastTalkedToBy(Myself),0,0,0)~ GOTO 25
    IF ~PartyHasItemIdentified("MISC37")~ REPLY @25 /* attach a Sphene Gem */
       DO ~TakePartyItemNum("MISC37",1) DestroyItem("MISC37") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw22",LastTalkedToBy(Myself),0,0,0)~ GOTO 26
    IF ~PartyHasItemIdentified("MISC38")~ REPLY @26 /* attach a Black Opal */
       DO ~TakePartyItemNum("MISC38",1) DestroyItem("MISC38") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw23",LastTalkedToBy(Myself),0,0,0)~ GOTO 27
    IF ~PartyHasItemIdentified("MISC39")~ REPLY @27 /* attach a Water Opal */
       DO ~TakePartyItemNum("MISC39",1) DestroyItem("MISC39") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw24",LastTalkedToBy(Myself),0,0,0)~ GOTO 28
    IF ~PartyHasItemIdentified("MISC40")~ REPLY @28 /* attach a Moonbar Gem */
       DO ~TakePartyItemNum("MISC40",1) DestroyItem("MISC40") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw25",LastTalkedToBy(Myself),0,0,0)~ GOTO 29
    IF ~PartyHasItemIdentified("MISC42")~ REPLY @29 /* attach a Diamond */
       DO ~TakePartyItemNum("MISC42",1) DestroyItem("MISC42") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw26",LastTalkedToBy(Myself),0,0,0)~ GOTO 30
    IF ~PartyHasItemIdentified("MISC43")~ REPLY @30 /* attach a Emerald */
       DO ~TakePartyItemNum("MISC43",1) DestroyItem("MISC43") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw27",LastTalkedToBy(Myself),0,0,0)~ GOTO 31
    IF ~PartyHasItemIdentified("MISC41")~ REPLY @31 /* attach a Star Sapphire */
       DO ~TakePartyItemNum("MISC41",1) DestroyItem("MISC41") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw28",LastTalkedToBy(Myself),0,0,0)~ GOTO 32
    IF ~PartyHasItemIdentified("MISC44")~ REPLY @32 /* attach a King's Tears */
       DO ~TakePartyItemNum("MISC44",1) DestroyItem("MISC44") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw29",LastTalkedToBy(Myself),0,0,0)~ GOTO 33
    IF ~PartyHasItemIdentified("MISC45")~ REPLY @33 /* attach a Rogue Stone */
       DO ~TakePartyItemNum("MISC45",1) DestroyItem("MISC45") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw30",LastTalkedToBy(Myself),0,0,0)~ GOTO 34
    IF ~PartyHasItemIdentified("MISC1J")~ REPLY @34 /* attach a Glittering Beljuril Gemstone */
       DO ~TakePartyItemNum("MISC1J",1) DestroyItem("MISC1J") TakePartyItem("7cgembow") DestroyItem("7cgembow") GiveItemCreate("7c#gbw31",LastTalkedToBy(Myself),0,0,0)~ GOTO 35
END

IF ~~ BEGIN 5
  SAY @36 /* Turquoise Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 6
  SAY @37 /* Fire Agate Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 7
  SAY @38 /* Lynx Eye Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 8
  SAY @39 /* Sunstone Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 9
  SAY @40 /* Andar Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 10
  SAY @41 /* Jasper Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 11
  SAY @42 /* Tchazar Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 12
  SAY @43 /* Iol Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 13
  SAY @44 /* Skydrop Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 14
  SAY @45 /* Zircon Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 15
  SAY @46 /* Bloodstone Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 16
  SAY @47 /* Moonstone Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 17
  SAY @48 /* Ziose Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 18
  SAY @49 /* Chrysoberyl Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 19
  SAY @50 /* Waterstar Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 20
  SAY @51 /* Shandon Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 21
  SAY @52 /* Star Diopside Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 22
  SAY @53 /* Horn Coral Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 23
  SAY @54 /* Aquamarine Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 24
  SAY @55 /* Garnet Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 25
  SAY @56 /* Pearl */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 26
  SAY @57 /* Sphene Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 27
  SAY @58 /* Black Opal */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 28
  SAY @59 /* Water Opal */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 29
  SAY @60 /* Moonbar Gem */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 30
  SAY @61 /* Diamond */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 31
  SAY @62 /* Emerald */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 32
  SAY @63 /* Star Sapphire */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 33
  SAY @64 /* King's Tears */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 34
  SAY @65 /* Rogue Stone */
    IF ~~ DO ~~ EXIT
END

IF ~~ BEGIN 35
  SAY @66 /* Glittering Beljuril Gemstone */
    IF ~~ DO ~~ EXIT
END

// eof