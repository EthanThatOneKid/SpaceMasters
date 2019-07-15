DIM image AS LONG
DIM x AS INTEGER
DIM y AS INTEGER
DIM Keypress AS STRING
DIM usercaptain AS STRING
DIM usercommander AS STRING
DIM SpaceMasters AS STRING
DIM energy AS INTEGER
DIM baseenergy AS INTEGER
DIM ship1health AS INTEGER
DIM ship2health AS INTEGER
DIM ship3health AS INTEGER
DIM ship4health AS INTEGER
DIM points AS INTEGER
DIM reenergize AS INTEGER
DIM blastsfire AS INTEGER
DIM torpsfire AS INTEGER
DIM sectorwarp AS STRING
DIM centeruniversedata AS STRING
DIM commanderenergyorig AS INTEGER
_TITLE "SpaceMasters"
_FULLSCREEN

GOTO startingLogo

ultistart:
PERSON = 1
ON ERROR GOTO EXCUSEME:
GOSUB REMEMBER_ME:
IF PERSON = 0 THEN
    CLS
    COLOR 15:
    PRINT
    PRINT
    PRINT
    PRINT
    PRINT "                         Who is Captain of the ship?"
    INPUT "                               ", usercaptain
    PRINT "                         Who is Commander of the ship?"
    INPUT "                               ", usercommander
END IF

SPACEMASTERSMENU:
CLS

COLOR 9:
PRINT "C = change __/ \__           S P A C E  M A S T E R S          __/ \__   "
PRINT "names      \_____/                                             \_____/"
PRINT "                                     M E N U            "
PRINT
COLOR 10: PRINT "                               1)    Play Game "
PRINT
COLOR 14: PRINT "                               2)       Shop"
PRINT
COLOR 12: PRINT "                               3)   Versus Mode"
COLOR 15:
PRINT
COLOR 7: IF bonuslevel1 = 1 THEN PRINT "                               4)    Bonus Level 1"
COLOR 5: IF bonuslevel2 = 1 THEN PRINT "                               5)    Bonus Level 2"
COLOR 15: PRINT "                                     [ESC] to END"
PRINT
PRINT "CAPTAIN = "; usercaptain
PRINT "COMMANDER = "; usercommander
PRINT "POINTS = "; points
PRINT "It is currently ";: PRINT Clock$
PRINT
IF asteroidbadge = 1 THEN PRINT "Obtained the Asteroid Badge!";: IF meteoroidbadge = 1 THEN PRINT "     Obtained the Meteoroid Badge!"
IF novabadge = 1 THEN PRINT "Obtained the Nova Badge!";: IF blackholebadge = 1 THEN PRINT "      Obtained the Black Hole Badge!"
IF spacemastersbadge = 1 THEN PRINT "Obtained the SpaceMasters Badge!";: IF asteroidbadge = 1 AND meteoroidbadge = 1 AND novabadge = 1 AND blackholebadge = 1 AND spacemastersbadge = 1 THEN PRINT "You have all of the badges!!!"
2
DO
    K$ = UCASE$(INKEY$)
    SELECT CASE K$
        CASE "1"
            GOTO gamestart
        CASE "2"
            GOTO Shop
        CASE "3"
            GOTO versusmode
        CASE "4"
            GOTO bonuslevel1start
        CASE "5"
            GOTO bonuslevel2start
        CASE "C"
            GOTO CHANGENAME
        CASE CHR$(27)
            GOTO SAVE_GAME
    END SELECT
LOOP


gamestart:
ship1health = 200
ship2health = 250
ship3health = 300
ship4health = 400
energy = 300
baseenergy = 2000

GOTO SECTOR0.5
SECTOR0.5:
PRINT "                         [SPACE] to innitiate battle"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN GOTO sector1


sector1:
CLS
IF ship1health < 1 THEN GOTO sector2
IF energy < 0 THEN GOTO gameoverscreen
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Sector: 1       Energy = "; energy; ""
PRINT "[W] = Warp Drive      [T] = Torpedos         Opposing Ship's Damage:"
PRINT "[B] = Blaster         [H] = Help                "; ship1health; " / 200 HP"
IF energy < 75 THEN COLOR 12: PRINT "STATUS:  Your energy is about to be DEPLETED!"
IF ship1health < 75 THEN COLOR 10: PRINT "STATUS:  The opposing ship is about to be DESTROYED! FINISH IT!"
IF energy > 300 THEN COLOR 10: PRINT "STATUS:  Your energy is high!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
PRINT "   *      *         *            ______________     *        *         *"
PRINT " *  *        *             *    /              \         *       *"
PRINT "                                \____      ____/"
PRINT "        *            *       *       \____/          *       *       *"
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W" OR K$ = "T" OR K$ = "B" OR K$ = "H"
IF K$ = "T" THEN GOTO TORPSMENU1
IF K$ = "W" THEN GOTO WARPDRIVEMENU
IF K$ = "B" THEN GOTO BLASTERMENU1
IF K$ = "H" THEN GOTO HELPMENU1


sector2:
CLS
IF ship2health < 1 THEN GOTO sector3
IF energy < 0 THEN GOTO gameoverscreen
CLS
COLOR 15:
PRINT "Sector: 2       Energy = "; energy; ""
PRINT "[W] = Warp Drive      [T] = Torpedos         Opposing Ship's Damage:"
PRINT "[B] = Blaster         [H] = Help                "; ship2health; " / 250 HP"
IF energy < 75 THEN COLOR 12: PRINT "STATUS:  Your energy is about to be DEPLETED!"
IF ship2health < 75 THEN COLOR 10: PRINT "STATUS:  The opposing ship is about to be DESTROYED! FINISH IT!"
IF energy > 300 THEN COLOR 10: PRINT "STATUS:  Your energy is high!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
PRINT "   *      *         *            ______________     *        *         *"
PRINT " *  *        *             *  /\/              \/\        *       *"
PRINT "                              \/\______________/\/"
PRINT "        *            *        | \\\\\\\///////// |     *       *       *"
PRINT "                              V                  V"
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
DO

    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W" OR K$ = "T" OR K$ = "B" OR K$ = "H"
IF K$ = "T" THEN GOTO TORPSMENU2
IF K$ = "W" THEN GOTO WARPDRIVEMENU
IF K$ = "B" THEN GOTO BLASTERMENU2
IF K$ = "H" THEN GOTO HELPMENU2

sector3:
CLS
IF ship3health < 1 THEN GOTO sector4
IF energy < 0 THEN GOTO gameoverscreen
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Sector: 3       Energy = "; energy; ""
PRINT "[W] = Warp Drive      [T] = Torpedos         Opposing Ship's Damage:"
PRINT "[B] = Blaster         [H] = Help                "; ship3health; " / 300 HP"
IF energy < 75 THEN COLOR 12: PRINT "STATUS:  Your energy is about to be DEPLETED!"
IF ship3health < 75 THEN COLOR 10: PRINT "STATUS:  The opposing ship is about to be DESTROYED! FINISH IT!"
IF energy > 300 THEN COLOR 10: PRINT "STATUS:  Your energy is high!"
LOCATE 5, 2: PRINT STRING$(78, 196)
COLOR 15:
PRINT ""
PRINT "                                 ______________"
PRINT "                                /              \"
PRINT "                                |              |"
PRINT "                                \____      ____/"
PRINT "                                 \ / \____/ \ /"
COLOR 12: PRINT "                                  0          0"
COLOR 15: PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W" OR K$ = "T" OR K$ = "B" OR K$ = "H"
IF K$ = "T" THEN GOTO TORPSMENU3
IF K$ = "W" THEN GOTO WARPDRIVEMENU
IF K$ = "B" THEN GOTO BLASTERMENU3
IF K$ = "H" THEN GOTO HELPMENU3



sector4:
CLS
IF ship4health < 1 THEN GOTO gamewinscreen
IF energy < 0 THEN GOTO gameoverscreen
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Sector: 4       Energy = "; energy; ""
PRINT "[W] = Warp Drive      [T] = Torpedos         Base's Energy:"
PRINT "[B] = Blaster         [H] = Help                "; ship4health; " / 400 HP"
IF energy < 75 THEN COLOR 12: PRINT "STATUS:  Your energy is about to be DEPLETED!"
IF ship4health < 75 THEN COLOR 10: PRINT "STATUS:  The opposing ship is about to be DESTROYED! FINISH IT!"
IF energy > 300 THEN COLOR 10: PRINT "STATUS:  Your energy is high!"
LOCATE 5, 2: PRINT STRING$(78, 196)
COLOR 15:
PRINT "   *      *         *            ______________     *        *         *"
PRINT " *  *        *             *    /              \         *       *"
PRINT "                            |===|              |===|          *       *       *"
PRINT "                             || \____      ____/ ||"
PRINT "                             \|      \____/      |/"
COLOR 12: PRINT "                             ::                  ::"
COLOR 15: PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
DO

    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W" OR K$ = "T" OR K$ = "B" OR K$ = "H"
IF K$ = "T" THEN GOTO TORPSMENU4
IF K$ = "W" THEN GOTO WARPDRIVEMENU
IF K$ = "B" THEN GOTO BLASTERMENU4
IF K$ = "H" THEN GOTO HELPMENU4


sector5:
IF baseenergy < 0 GOTO gameoverscreen
IF energy < 0 THEN GOTO gameoverscreen
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Points:   "; pointsgain; "      Sector: 5       Energy = "; energy
PRINT "[W] = Warp Drive               Base's Energy:            "
PRINT "[R] = Reenergize Ship         "; baseenergy; " / 2000        STATUS: DOCKED"
IF energy < 75 THEN COLOR 12: PRINT "STATUS:  Your energy is about to be DEPLETED!"
IF energy > 300 THEN COLOR 10: PRINT "STATUS:  Your energy is high!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
PRINT "                                 ______________"
PRINT "                                /              \"
PRINT "                                \ SPACESTATION /"
PRINT "                                 |____________|"
PRINT "                                    |     |"
PRINT "                                    |     |"
PRINT "                                     _____       "
PRINT "                                    /_   _\ "
PRINT "                                      \ /        "
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W" OR K$ = "R" OR K$ = "H"
IF K$ = "R" THEN GOTO REENERGIZESHIP
IF K$ = "W" THEN GOTO WARPDRIVEMENU
IF K$ = "H" THEN GOTO HELPMENU5


TORPSMENU1:
CLS
INPUT "Fire how many torps?      ", torpsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - (torpsfire * 5)
    ship1health = ship1health - torpsfire * 10
    energy = energy - 10
    GOTO sector1
END IF



TORPSMENU2:
CLS
INPUT "Fire how many torps?      ", torpsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - torpsfire * 5
    ship2health = ship2health - torpsfire * 10
    energy = energy - 15
    GOTO sector2:
END IF

TORPSMENU3:
CLS
INPUT "Fire how many torps?      ", torpsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - torpsfire * 5
    ship3health = ship3health - torpsfire * 10
    energy = energy - 20
    GOTO sector3:
END IF


TORPSMENU4:
CLS
INPUT "Fire how many torps?      ", torpsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - torpsfire * 5
    ship4health = ship4health - torpsfire * 10
    energy = energy - 30
    GOTO sector4:
END IF

WARPDRIVEMENU:
DO
    CLS
    PRINT "Which Sector would you like to warp to?"
    PRINT "1, 2, 3, or 4? The Space Station base = 5."
    INPUT sectorwarp

LOOP UNTIL sectorwarp = "1" OR sectorwarp = "2" OR sectorwarp = "3" OR sectorwarp = "4" OR sectorwarp = "5"
IF sectorwarp = "1" THEN GOTO WARP1
IF sectorwarp = "2" THEN GOTO WARP2
IF sectorwarp = "3" THEN GOTO WARP3
IF sectorwarp = "4" THEN GOTO WARP4
IF sectorwarp = "5" THEN GOTO WARP5


BLASTERMENU1:
CLS
INPUT "Fire how many blasts?      ", blastsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET energy = energy - blastsfire * 10
    LET energy = energy - 10
    LET ship1health = ship1health - blastsfire * 20
    GOTO sector1:
END IF

BLASTERMENU2:
CLS
INPUT "Fire how many blasts?      ", blastsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET energy = energy - blastsfire * 10
    LET energy = energy - 15
    LET ship2health = ship2health - blastsfire * 20
    GOTO sector2:
END IF
BLASTERMENU3:
CLS
INPUT "Fire how many blasts?      ", blastsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET energy = energy - blastsfire * 10
    LET energy = energy - 20
    LET ship3health = ship3health - blastsfire * 20
    GOTO sector3:
END IF
BLASTERMENU4:
CLS
INPUT "Fire how many blasts?      ", blastsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET energy = energy - blastsfire * 10
    LET energy = energy - 30
    LET ship4health = ship4health - blastsfire * 20
    GOTO sector4:
END IF

REENERGIZESHIP:
PRINT "How much energy would you like to take from the base?"
INPUT reenergize
CLS
PRINT "                          [SPACE] to REENERGIZE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET energy = energy + reenergize
    LET baseenergy = baseenergy - reenergize
    GOTO sector5
END IF


HELPMENU1:
CLS
PRINT ""
PRINT "                         [ESC] to end game"
PRINT "                         [R]esume to go back to game"
PRINT "                         [S]tart over to start game over"
PRINT ""
PRINT "                         Your energy:    "; energy
PRINT "                         Your Base's Energy: "; baseenergy
PRINT "                         Currently in Sector:    01"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "S" OR K$ = "R" OR K$ = CHR$(27)
IF K$ = "R" THEN GOTO sector1
IF K$ = "S" THEN GOTO gamestart
IF K$ = CHR$(27) THEN GOTO SPACEMASTERSMENU
HELPMENU2:
CLS
PRINT ""
PRINT "                         [ESC] to end game"
PRINT "                         [R]esume to go back to game"
PRINT "                         [S]tart over to start game over"
PRINT ""
PRINT "                         Your energy:    "; energy
PRINT "                         Your Base's Energy: "; baseenergy
PRINT "                         Currently in Sector:    02"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "S" OR K$ = "R" OR K$ = CHR$(27)
IF K$ = "R" THEN GOTO sector2
IF K$ = "S" THEN GOTO gamestart
IF K$ = CHR$(27) THEN GOTO SPACEMASTERSMENU
HELPMENU3:
CLS
PRINT ""
PRINT "                         [ESC] to end game"
PRINT "                         [R]esume to go back to game"
PRINT "                         [S]tart over to start game over"
PRINT ""
PRINT "                         Your energy:    "; energy
PRINT "                         Your Base's Energy: "; baseenergy
PRINT "                         Currently in Sector:    03"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "S" OR K$ = "R" OR K$ = CHR$(27)
IF K$ = "R" THEN GOTO sector3
IF K$ = "S" THEN GOTO gamestart
IF K$ = CHR$(27) THEN GOTO SPACEMASTERSMENU
HELPMENU4:
CLS
PRINT ""
PRINT "                         [ESC] to end game"
PRINT "                         [R]esume to go back to game"
PRINT "                         [S]tart over to start game over"
PRINT ""
PRINT "                         Your energy:    "; energy
PRINT "                         Your Base's Energy: "; baseenergy
PRINT "                         Currently in Sector:    04"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "S" OR K$ = "R" OR K$ = CHR$(27)
IF K$ = "R" THEN GOTO sector4
IF K$ = "S" THEN GOTO gamestart
IF K$ = CHR$(27) THEN GOTO SPACEMASTERSMENU
HELPMENU5:
CLS
PRINT ""
PRINT "                         [ESC] to end game"
PRINT "                         [R]esume to go back to game"
PRINT "                         [S]tart over to start game over"
PRINT ""
PRINT "                         Your energy:    "; energy
PRINT "                         Your Base's Energy: "; baseenergy
PRINT "                         Currently in Sector:    05"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "S" OR K$ = "R" OR K$ = CHR$(27)
IF K$ = "R" THEN GOTO sector5
IF K$ = "S" THEN GOTO gamestart
IF K$ = CHR$(27) THEN GOTO SPACEMASTERSMENU


gameoverscreen:
CLS
PRINT "                         LOSER"
IF energy < 0 THEN PRINT "You lost from loss of energy in your ship."
IF baseenergy < 0 THEN PRINT "You lost from loss of energy in Space Station."
PRINT ""
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    points = points + 10
    GOTO SPACEMASTERSMENU
END IF

gamewinscreen:
CLS
PRINT
PRINT
PRINT
PRINT "You have won a game of SpaceMasters, together,"
PRINT "Captain "; usercaptain; " and Commander "; usercommander;
PRINT "As a reward, you have earned 1000 point that you can use"
PRINT "in the shop on the main menu!    Press [SPACE] to"
PRINT "continue."
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    points = points + 1000
    GOTO SPACEMASTERSMENU
END IF

Shop:
CLS
PRINT "Welcome to the shop Captain "; usercaptain; " and Commander "; usercommander; "!"
PRINT "Would you like to buy anything with the points you earn for winning battles?"
PRINT
PRINT "                         1)  Astroid Badge           Price:  1000"
PRINT "                         2)  Meteoroid Badge         Price:  1000"
PRINT "                         3)  Nova Badge              Price:  1500"
PRINT "                         4)  Black Hole Badge        Price:  3000"
PRINT "                         5)  SpaceMasters Badge      Price:  5000"
PRINT
PRINT "                         6)  Bonus Level 1           Price:  1500"
PRINT "                         7)  Bonus Level 2           Price:  1500"
PRINT
PRINT "                             [ESC] to go back to main menu"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "1" OR K$ = "2" OR K$ = "3" OR K$ = "4" OR K$ = "5" OR K$ = "6" OR K$ = "7" OR K$ = CHR$(27)
IF K$ = "1" THEN GOTO asteroidbadgepurchase
IF K$ = "2" THEN GOTO meteoroidbadgepurchase
IF K$ = "3" THEN GOTO novabadgepurchase
IF K$ = "4" THEN GOTO blackholebadge
IF K$ = "5" THEN GOTO spacemastersbadgepurchase
IF K$ = "6" THEN GOTO bonuslevel1purchase
IF K$ = "7" THEN GOTO bonuslevel2purchase
IF K$ = CHR$(27) THEN GOTO SPACEMASTERSMENU

asteroidbadgepurchase:
IF points < 1000 THEN GOTO Shop
CLS
PRINT "So you want to purchase the Asteroid Badge for 1000 points?        (Y/N)"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "Y" OR K$ = "N"
IF K$ = "Y" THEN
    points = points - 1000
    asteroidbadge = 1
    GOTO SPACEMASTERSMENU
END IF
IF K$ = "N" THEN GOTO Shop

meteoroidbadgepurchase:
IF points < 1000 THEN GOTO Shop
CLS
PRINT "So you want to purchase the Meteoroid Badge for 1000 points?        (Y/N)"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "Y" OR K$ = "N"
IF K$ = "Y" THEN
    points = points - 1000
    meteoroidbadge = 1
    GOTO SPACEMASTERSMENU
END IF
IF K$ = "N" THEN GOTO Shop

novabadgepurchase:
IF points < 1500 THEN GOTO Shop
CLS
PRINT "So you want to purchase the Nova Badge for 1500 points?        (Y/N)"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "Y" OR K$ = "N"
IF K$ = "Y" THEN
    points = points - 1500
    novabadge = 1
    GOTO SPACEMASTERSMENU
END IF
IF K$ = "N" THEN GOTO Shop

blackholebadge:
IF points < 3000 THEN GOTO Shop
CLS
PRINT "So you want to purchase the Black Hole Badge for 3000 points?        (Y/N)"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "Y" OR K$ = "N"
IF K$ = "Y" THEN
    points = points - 3000
    blackholebadge = 1
    GOTO SPACEMASTERSMENU
END IF
IF K$ = "N" THEN GOTO Shop

spacemastersbadgepurchase:
IF points < 5000 THEN GOTO Shop
CLS
PRINT "So you want to purchase the SpaceMasters Badge for 5000 points?        (Y/N)"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "Y" OR K$ = "N"
IF K$ = "Y" THEN
    points = points - 5000
    asteroidbadge = 1
    GOTO SPACEMASTERSMENU
END IF
IF K$ = "N" THEN GOTO Shop

bonuslevel1purchase:
IF points < 1500 THEN GOTO Shop
CLS
PRINT "So you want to purchase Bonus Level 1 for 1500 points?        (Y/N)"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "Y" OR K$ = "N"
IF K$ = "Y" THEN
    points = points - 1500
    bonuslevel1 = 1
    GOTO SPACEMASTERSMENU
END IF
IF K$ = "N" THEN GOTO Shop

bonuslevel2purchase:
IF points < 1500 THEN GOTO Shop
CLS
PRINT "So you want to purchase Bonus Level 2 for 1500 points?        (Y/N)"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "Y" OR K$ = "N"
IF K$ = "Y" THEN
    points = points - 1500
    bonuslevel2 = 1
    GOTO SPACEMASTERSMENU
END IF
IF K$ = "N" THEN GOTO Shop





WARP1:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                      [SPACE] to ACTIVATE WARP DRIVE TO SECTOR 1!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - 50
    GOTO sector1:
END IF

WARP2:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                      [SPACE] to ACTIVATE WARP DRIVE TO SECTOR 2!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - 50
    GOTO sector2:
END IF

WARP3:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                      [SPACE] to ACTIVATE WARP DRIVE TO SECTOR 3!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - 50
    GOTO sector3:
END IF

WARP4:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                      [SPACE] to ACTIVATE WARP DRIVE TO SECTOR 4!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - 50
    GOTO sector4:
END IF

WARP5:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                      [SPACE] to ACTIVATE WARP DRIVE TO SPACE STATION!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - 50
    GOTO sector5:
END IF

bonuslevel1start:
blackholehealth = 1000
energy = 300
baseenergy = 2500
CLS
PRINT
PRINT
PRINT " Captain "; usercaptain; " and Commander "; usercommander; "! There is a Black Hole that has"
PRINT "entered a nearby sector by passing through a torn worm hole. It is up to you both to"
PRINT "eliminate this Black Hole immediately so that no one is harmed. Are you up to the challenge?"
PRINT "                                         (Y/N)"
DO: K$ = UCASE$(INKEY$)
LOOP UNTIL K$ = "Y" OR K$ = "N"
IF K$ = "Y" THEN GOTO bonuslevel1
IF K$ = "N" THEN GOTO SPACEMASTERSMENU

bonuslevel1:
CLS
IF baseenergy < 0 GOTO gameoverscreenbonus1
IF energy < 0 THEN GOTO gameoverscreenbonus1
IF blackholehealth < 1 THEN GOTO gamewinscreenbonus1
COLOR 15:
PRINT "Sector: Bonus 1       Energy = "; energy; ""
PRINT "[W] = Warp Drive      [T] = Torpedos         Black Hole's Damage:"
PRINT "[B] = Blaster         [H] = Help                "; blackholehealth; " / 1000 HP"
IF energy < 75 THEN COLOR 12: PRINT "STATUS:  Your energy is about to be DEPLETED!  Refill it at the base!"
IF blackholehealth < 75 THEN COLOR 10: PRINT "STATUS:  The Black Hole is about to be DESTROYED! FINISH IT!"
IF energy > 300 THEN COLOR 10: PRINT "STATUS:  Your energy is high!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
COLOR 24:
PRINT "                                 _________________"
PRINT "                                /  ________\____  \"
PRINT "                               /  /         \   \  \"
PRINT "                              /  /  _________\   \  \"
PRINT "                             /  /  / ________ \   \  \"
PRINT "                            |  |  |  \ \____/  |   |  |"
PRINT "                            \  \   \__\ ______/    /  /"
PRINT "                             \  \      \          /  /"
PRINT "                              \  \______\________/  /"
PRINT "                               \_________\_________/"
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
COLOR 15: PRINT "                                      "
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W" OR K$ = "T" OR K$ = "B" OR K$ = "H"
IF K$ = "T" THEN GOTO TORPSMENUBONUS1
IF K$ = "W" THEN GOTO WARPDRIVEMENUBONUS1
IF K$ = "B" THEN GOTO BLASTERMENUBONUS1
IF K$ = "H" THEN GOTO HELPMENUBONUS1

sector5bonus1:
IF baseenergy < 0 GOTO gameoverscreenbonus1
IF energy < 0 THEN GOTO gameoverscreenbonus1
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Sector: 5                      Energy = "; energy
PRINT "[W] = Warp Drive               Base's Energy:            "
PRINT "[R] = Reenergize Ship         "; baseenergy; " / 2500        STATUS: DOCKED"
IF energy < 75 THEN COLOR 12: PRINT "STATUS:  Your energy is about to be DEPLETED!  Refill it at the base!"
IF energy > 300 THEN COLOR 10: PRINT "STATUS:  Your energy is high!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
PRINT "                                 ______________"
PRINT "                                /              \"
PRINT "                                \ SPACESTATION /"
PRINT "                                 |____________|"
PRINT "                                    |     |"
PRINT "                                    |     |"
PRINT "                                     _____       "
PRINT "                                    /_   _\ "
PRINT "                                      \ /        "
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W" OR K$ = "R" OR K$ = "H"
IF K$ = "R" THEN GOTO REENERGIZESHIPb
IF K$ = "W" THEN GOTO WARPDRIVEMENUBONUS1
IF K$ = "H" THEN GOTO HELPMENUBONUS12


TORPSMENUBONUS1:
CLS
INPUT "Fire how many torps?      ", torpsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - torpsfire * 5
    blackholehealth = blackholehealth - torpsfire * 10
    energy = energy - 40
    GOTO bonuslevel1:
END IF

WARPDRIVEMENUBONUS1:
DO
    CLS
    PRINT "Which Sector would you like to warp to?"
    PRINT "Bonus Sector 1 or the Space Station sector 5."
    INPUT sectorwarp

LOOP UNTIL sectorwarp = "1" OR sectorwarp = "5"
IF sectorwarp = "1" THEN GOTO BONUSWARP1
IF sectorwarp = "5" THEN GOTO BONUSWARP2

BLASTERMENUBONUS1:
CLS
INPUT "Fire how many blasts?      ", blastsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET energy = energy - blastsfire * 10
    LET energy = energy - 10
    LET blackholehealth = blackholehealth - blastsfire * 20
    GOTO bonuslevel1
END IF

REENERGIZESHIPb:
PRINT "How much energy would you like to take from the base?"
INPUT reenergize
CLS
PRINT "                          [SPACE] to REENERGIZE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET energy = energy + reenergize
    LET baseenergy = baseenergy - reenergize
    GOTO sector5bonus1
END IF


HELPMENUBONUS1:
CLS
PRINT ""
PRINT "                         [ESC] to end game"
PRINT "                         [R]esume to go back to game"
PRINT "                         [S]tart over to start game over"
PRINT ""
PRINT "                         Your energy:    "; energy
PRINT "                         Your Base's Energy: "; baseenergy
PRINT "                         Currently in Sector:    B1"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "S" OR K$ = "R" OR K$ = CHR$(27)
IF K$ = "R" THEN GOTO bonuslevel1
IF K$ = "S" THEN GOTO bonuslevel1start
IF K$ = CHR$(27) THEN GOTO SPACEMASTERSMENU
HELPMENUBONUS12:
CLS
PRINT ""
PRINT "                         [ESC] to end game"
PRINT "                         [R]esume to go back to game"
PRINT "                         [S]tart over to start game over"
PRINT ""
PRINT "                         Your energy:    "; energy
PRINT "                         Your Base's Energy: "; baseenergy
PRINT "                         Currently in Sector:    5"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "S" OR K$ = "R" OR K$ = CHR$(27)
IF K$ = "R" THEN GOTO sector5bonus1
IF K$ = "S" THEN GOTO bonuslevel1start
IF K$ = CHR$(27) THEN GOTO SPACEMASTERSMENU


gameoverscreenbonus1:
CLS
PRINT "                         LOOSER"
IF energy < 0 THEN PRINT "  You lost from loss of energy in your ship."
IF baseenergy < 0 THEN PRINT "You lost from loss of energy in Space Station."
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN GOTO SPACEMASTERSMENU

gamewinscreenbonus1:
CLS
PRINT
PRINT
PRINT
PRINT " You have won a bonus level of SpaceMasters, together,"
PRINT "Captain "; usercaptain; " and Commander "; usercommander;
PRINT "As a reward, you have earned 2000 point that you can use"
PRINT "in the shop on the main menu!    Press [SPACE] to"
PRINT "continue."
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    points = points + 2000
    blackholebadge = 1
    GOTO SPACEMASTERSMENU
END IF

BONUSWARP1:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                      [SPACE] to ACTIVATE WARP DRIVE TO BONUS SECTOR 1!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - 50
    GOTO bonuslevel1:
END IF

BONUSWARP2:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                      [SPACE] to ACTIVATE WARP DRIVE TO BONUS SECTOR 5!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - 50
    GOTO sector5bonus1:
END IF



bonuslevel2start:
ASTEROID1 = 50
ASTEROID2 = 150
ASTEROID3 = 300
energy = 3000
CLS
PRINT
PRINT
PRINT " Captain "; usercaptain; " and Commander "; usercommander; "! You have been selected to run"
PRINT "a full expedition to the center of the Universe to collect data that can be used to fill in"
PRINT "the missing variable in physics and math. Are you up to the challenge?"
PRINT "                                         (Y/N)"
DO: K$ = UCASE$(INKEY$)
LOOP UNTIL K$ = "Y" OR K$ = "N"
IF K$ = "Y" THEN GOTO bonuslevel2
IF K$ = "N" THEN GOTO SPACEMASTERSMENU

bonuslevel2:

CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                  [SPACE] to ACTIVATE WARP DRIVE TO SECTOR "; CHR$(224); "!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - 50
    GOTO bonusASTEROIDFEILD1
END IF

bonusASTEROIDFEILD1:
CLS
IF ASTEROID1 < 1 THEN GOTO bonusasteroidfeild2
IF energy < 0 THEN GOTO gameoverscreen
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Sector: "; CHR$(224); "          Energy = "; energy;
PRINT "[T] = Torpedos                               Opposing Asteroid's Damage:"
PRINT "[B] = Blaster                                   "; ASTEROID1; " / 100 HP"
IF energy < 300 THEN COLOR 12: PRINT "STATUS:  Your energy is about to be DEPLETED!"
IF ASTEROID1 < 35 THEN COLOR 10: PRINT "STATUS:  The opposing Asteroid is about to be DESTROYED! FINISH IT!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
PRINT "   _________                                            _________"
PRINT "  / 0       \                   _________              / 0       \"
PRINT " /           \                 /      0  \            /           \"
PRINT "|         0   |               /  0        \          |         0   |"
PRINT "| 0           |              |             |         |       0     |"
PRINT " \     0     /               |       0     |          \ 0         /"
PRINT "  \_________/                 \ 0         /            \_________/"
PRINT "                               \_________/"
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "T" OR K$ = "B" OR K$ = "H"
IF K$ = "T" THEN GOTO TORPSMENUb2
IF K$ = "B" THEN GOTO BLASTERMENUb2

bonusasteroidfeild2:
CLS
IF ASTEROID2 < 1 THEN GOTO bonusasteroidfeild3
IF energy < 0 THEN GOTO gameoverscreen
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Sector: "; CHR$(224); "          Energy = "; energy;
PRINT "[T] = Torpedos                               Opposing Asteroid's Damage:"
PRINT "[B] = Blaster                                  "; ASTEROID2; " / 150 HP"
IF energy < 300 THEN COLOR 12: PRINT "STATUS:  Your energy is about to be DEPLETED!"
IF ASTEROID2 < 25 THEN COLOR 10: PRINT "STATUS:  The opposing Asteroid is about to be DESTROYED! FINISH IT!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
PRINT "                                                        _________"
PRINT "                                _________              / 0       \"
PRINT "                               /      0  \            /           \"
PRINT "                              /  0        \          |         0   |"
PRINT "                             |             |         |       0     |"
PRINT "                             |       0     |          \ 0         /"
PRINT "                              \ 0         /            \_________/"
PRINT "                               \_________/"
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "T" OR K$ = "B" OR K$ = "H"
IF K$ = "T" THEN GOTO TORPSMENUb3
IF K$ = "B" THEN GOTO BLASTERMENUb3

bonusasteroidfeild3:
CLS
IF ASTEROID3 < 1 THEN GOTO bonusasteroidfeilddone
IF energy < 0 THEN GOTO gameoverscreen
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Sector: "; CHR$(224); "          Energy = "; energy;
PRINT "[T] = Torpedos                               Opposing Asteroid's Damage:"
PRINT "[B] = Blaster                                   "; ASTEROID3; " / 300 HP"
IF energy < 300 THEN COLOR 12: PRINT "STATUS:  Your energy is about to be DEPLETED!"
IF ASTEROID3 < 25 THEN COLOR 10: PRINT "STATUS:  The opposing Asteroid is about to be DESTROYED! FINISH IT!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
PRINT ""
PRINT "                                   _________"
PRINT "                                  /      0  \"
PRINT "                                 /  0        \"
PRINT "                                |             |"
PRINT "                                |       0     |"
PRINT "                                 \ 0         /"
PRINT "                                  \_________/"
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "T" OR K$ = "B"
IF K$ = "T" THEN GOTO TORPSMENUb4
IF K$ = "B" THEN GOTO BLASTERMENUb4



bonusasteroidfeilddone:
PRINT "  Yaaay! We destroyed the asteroids that were about to hit us! Good work!"
PRINT
PRINT "Do you see that little sphere off behind where the asteroids were? Let's move closer . . ."
PRINT
PRINT "It's a worm hole! Maybe if we pass through it, we could get a lot "
PRINT "closer to the center of the Universe! We have nothing to lose! Full steam"
PRINT "ahead, Captain "; usercaptain; " and Commander "; usercommander; "!"
PRINT
PRINT "                         [SPACE] to enter WORM HOLE"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN GOTO bonuscenteroftheuniverse


bonuscenteroftheuniverse:
CLS
COLOR 15:
PRINT "Sector: "; CHR$(228); ""
PRINT "Energy = "; energy;
PRINT "[W] = Warp Drive"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
COLOR 12: PRINT "                                 _________________"
COLOR 6: PRINT "                                /  ________\____  \"
COLOR 14: PRINT "                               E = mc2      \   \  \"
COLOR 10: PRINT "                              /  /  _________\   \  \"
COLOR 9: PRINT "                             /  /  / ______2 + 2 = 5 \"
COLOR 1: PRINT "                            |  |  |  \ \____/  |   |  |"
COLOR 13: PRINT "                            \  \   \__\ ______/    /  /"
COLOR 12: PRINT "                             \  \     \a2 + b2 = c2/  /"
COLOR 6: PRINT "                              \  \______\________/  /"
COLOR 14: PRINT "                               \_________\_________/"
COLOR 15: PRINT ""
PRINT ""
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
PRINT
PRINT "      Do not forget, you need to record what data you are gathering from the"
PRINT "center of the Universe to contribute to science and math!"
INPUT centeruniversedata
GOTO BONUSCENTEROFTHEUNIVERSE2
BONUSCENTEROFTHEUNIVERSE2:
CLS
COLOR 15:
PRINT "Sector: "; CHR$(228); ""
PRINT "Energy = "; energy;
PRINT "[W] = Warp Drive"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
COLOR 12: PRINT "                                 _________________"
COLOR 6: PRINT "                                /  ________\____  \"
COLOR 14: PRINT "                               E = mc2      \   \  \"
COLOR 10: PRINT "                              /  /  _________\   \  \"
COLOR 9: PRINT "                             /  /  / ______2 + 2 = 5 \"
COLOR 1: PRINT "                            |  |  |  \ \____/  |   |  |"
COLOR 13: PRINT "                            \  \   \__\ ______/    /  /"
COLOR 12: PRINT "                             \  \     \a2 + b2 = c2/  /"
COLOR 6: PRINT "                              \  \______\________/  /"
COLOR 14: PRINT "                               \_________\_________/"
COLOR 15: PRINT ""
PRINT
PRINT
PRINT ""
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W"
IF K$ = "W" THEN GOTO WARPDRIVEMENUb9


WARPDRIVEMENUb9:
CLS
PRINT "Warp Drive back to the Space Station?     (Y/N)"
DO: K$ = UCASE$(INKEY$)
LOOP UNTIL K$ = "Y" OR K$ = "N"
IF K$ = "Y" THEN GOTO endbonuslevel2
IF K$ = "N" THEN GOTO bonuscenteroftheuniverse

endbonuslevel2:
CLS
PRINT "                         . . .     time passes     . . ."
PRINT "                               [SPACE] to continue"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
CLS
PRINT "      Welcome back from your long journey to the center of the Universe, Captain "
PRINT usercaptain; " and Commander "; usercommander; "! Congradulations on this giant step for mankind!"
PRINT "The data that you recorded there was very interesting and my team of scientists are evaluating "
PRINT "it as we speak! Once again, congradulations on completing your expedition successfully!"
PRINT "                          [SPACE] to go back to SpaceMasters menu"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    points = points + 5000
    spacemastersbadge = 1
    GOTO SPACEMASTERSMENU
END IF

TORPSMENUb2:
CLS
INPUT "Fire how many torps?      ", torpsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - torpsfire * 5
    ASTEROID1 = ASTEROID1 - torpsfire * 10
    energy = energy - 40
    GOTO bonusASTEROIDFEILD1
END IF
TORPSMENUb3:
CLS
INPUT "Fire how many torps?      ", torpsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - torpsfire * 5
    ASTEROID2 = ASTEROID2 - torpsfire * 10
    energy = energy - 40
    GOTO bonusasteroidfeild2
END IF
TORPSMENUb4:
CLS
INPUT "Fire how many torps?      ", torpsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    energy = energy - torpsfire * 5
    ASTEROID3 = ASTEROID3 - torpsfire * 10
    energy = energy - 40
    GOTO bonusasteroidfeild3
END IF


BLASTERMENUb2:
CLS
INPUT "Fire how many blasts?      ", blastsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET energy = energy - blastsfire * 10
    LET energy = energy - 10
    LET ASTEROID1 = ASTEROID1 - blastsfire * 20
    GOTO bonusASTEROIDFEILD1
END IF
BLASTERMENUb3:
CLS
INPUT "Fire how many blasts?      ", blastsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET energy = energy - blastsfire * 10
    LET energy = energy - 10
    LET ASTEROID2 = ASTEROID2 - blastsfire * 20
    GOTO bonusasteroidfeild2
END IF
BLASTERMENUb4:
CLS
INPUT "Fire how many blasts?      ", blastsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET energy = energy - blastsfire * 10
    LET energy = energy - 10
    LET ASTEROID3 = ASTEROID3 - blastsfire * 20
    GOTO bonusasteroidfeild3
END IF



versusmode:
CLS
PRINT "            Captain "; usercaptain; "   Vs  Commander "; usercommander
PRINT
PRINT
PRINT "                             [SPACE] to inniciate battle"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET COMMANDERenergy = 300
    LET CAPTAINENERGY = 300
    LET BASEENERGYCO = 2000
    LET BASEENERGYCa = 2000
    GOTO captainsturn
END IF



captainsturn:
CLS
IF COMMANDERenergy < 0 THEN GOTO endversuscreen
IF CAPTAINENERGY < 0 THEN GOTO endversuscreen
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Sector: V       Energy = "; CAPTAINENERGY; "    Status:  Captain's turn"
PRINT "[W] = Warp Drive      [T] = Torpedos       Commander "; usercommander; "'s Damage:"
PRINT "[B] = Blaster         [H] = Help                "; COMMANDERenergy; " / 300 HP"
IF COMMANDERenergy > CAPTAINENERGY THEN PRINT "Commander "; usercommander; " is winning!"
IF CAPTAINENERGY > COMMANDERenergy THEN PRINT "Captain "; usercaptain; " is winning!"
IF CAPTAINENERGY > 1000 THEN COLOR 10: PRINT "STATUS:  Your energy is high!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
COLOR 12: PRINT ""
PRINT "                                      _____       "
PRINT "                                     /_   _\ "
PRINT "                                       \ /        "
COLOR 9: PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W" OR K$ = "T" OR K$ = "B" OR K$ = "H"
IF K$ = "T" THEN GOTO VcaptainTORPSMENU
IF K$ = "W" THEN GOTO VcaptainWARPDRIVEMENU
IF K$ = "B" THEN GOTO VcaptainBLASTERMENU
IF K$ = "H" THEN GOTO VcaptainHELPMENU

commandersturn:
CLS
IF COMMANDERenergy < 0 THEN GOTO endversuscreen
IF CAPTAINENERGY < 0 THEN GOTO endversuscreen
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Sector: V       Energy = "; COMMANDERenergy; "    Status:  Commander's turn"
PRINT "[W] = Warp Drive      [T] = Torpedos       Captain "; usercaptain; "'s Damage:"
PRINT "[B] = Blaster         [H] = Help                "; CAPTAINENERGY; " / 300 HP"
IF COMMANDERenergy > CAPTAINENERGY THEN PRINT "Commander "; usercommander; " is winning!"
IF CAPTAINENERGY > COMMANDERenergy THEN PRINT "Captain "; usercaptain; " is winning!"
IF CAPTAINENERGY > 1000 THEN COLOR 10: PRINT "STATUS:  Your energy is high!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
COLOR 9: PRINT ""
PRINT "                                      _____       "
PRINT "                                     /_   _\ "
PRINT "                                       \ /        "
COLOR 12: PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
PRINT "                                     __/ \__"
PRINT "                                     \_____/"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W" OR K$ = "T" OR K$ = "B" OR K$ = "H"
IF K$ = "T" THEN GOTO VcommanderTORPSMENU
IF K$ = "W" THEN GOTO VcommanderWARPDRIVEMENU
IF K$ = "B" THEN GOTO VcommanderBLASTERMENU
IF K$ = "H" THEN GOTO VcommanderHELPMENU

sector5vCA:
IF BASEENERGYCa < 0 GOTO endversuscreen
IF CAPTAINENERGY < 0 THEN GOTO endversuscreen
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Sector: 5       Energy = "; CAPTAINENERGY
PRINT "[W] = Warp Drive               Base's Energy:            "
PRINT "[R] = Reenergize Ship         "; BASEENERGYCa; " / 2000        STATUS: DOCKED"
IF COMMANDERenergy > CAPTAINENERGY THEN PRINT "Commander "; usercommander; " is winning!"
IF CAPTAINENERGY > COMMANDERenergy THEN PRINT "Captain "; usercaptain; " is winning!"
IF CAPTAINENERGY > 1000 THEN COLOR 10: PRINT "STATUS:  Your energy is high!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
PRINT "                                 ______________"
PRINT "                                /              \"
PRINT "                                \ SPACESTATION /"
PRINT "                                 |____________|"
PRINT "                                    |     |"
PRINT "                                    |     |"
COLOR 12: PRINT "                                     _____       "
PRINT "                                    /_   _\ "
PRINT "                                      \ /        "
COLOR 15: PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W" OR K$ = "R"
IF K$ = "R" THEN GOTO REENERGIZESHIPCA
IF K$ = "W" THEN GOTO VcaptainWARPDRIVEMENU

sector5vCO:
IF BASEENERGYCO < 0 GOTO endversuscreen
IF COMMANDERenergy < 0 THEN GOTO endversuscreen
SCREEN 0, 0, 0
CLS
COLOR 15:
PRINT "Sector: 5       Energy = "; COMMANDERenergy
PRINT "[W] = Warp Drive               Base's Energy:            "
PRINT "[R] = Reenergize Ship         "; BASEENERGYCO; " / 2000        STATUS: DOCKED"
IF COMMANDERenergy > CAPTAINENERGY THEN PRINT "Commander "; usercommander; " is winning!"
IF CAPTAINENERGY > COMMANDERenergy THEN PRINT "Captain "; usercaptain; " is winning!"
IF CAPTAINENERGY > 1000 THEN COLOR 10: PRINT "STATUS:  Your energy is high!"
COLOR 15:
LOCATE 5, 2: PRINT STRING$(78, 196)
PRINT "                                 ______________"
PRINT "                                /              \"
PRINT "                                \ SPACESTATION /"
PRINT "                                 |____________|"
PRINT "                                    |     |"
PRINT "                                    |     |"
COLOR 9: PRINT "                                     _____       "
PRINT "                                    /_   _\ "
PRINT "                                      \ /        "
COLOR 15: PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "                                      "
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "W" OR K$ = "R"
IF K$ = "R" THEN GOTO REENERGIZESHIPCO
IF K$ = "W" THEN GOTO VcommanderWARPDRIVEMENU



VcaptainTORPSMENU:
CLS
INPUT "Fire how many torps?      ", torpsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    CAPTAINENERGY = CAPTAINENERGY - torpsfire * 5
    COMMANDERenergy = COMMANDERenergy - torpsfire * 10
    GOTO commandersturn
END IF
VcommanderTORPSMENU:
CLS
INPUT "Fire how many torps?      ", torpsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    COMMANDERenergy = COMMANDERenergy - torpsfire * 5
    CAPTAINENERGY = CAPTAINENERGY - torpsfire * 10
    GOTO captainsturn
END IF

VcaptainWARPDRIVEMENU:
DO
    CLS
    PRINT "Which Sector would you like to warp to, captain?"
    PRINT "Sector V or the Space Station sector 5."
    INPUT sectorwarp

LOOP UNTIL sectorwarp = "V" OR sectorwarp = "5"
IF sectorwarp = "V" THEN GOTO warpvCa
IF sectorwarp = "5" THEN GOTO warp5VCa

warp5VCa:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                      [SPACE] to ACTIVATE WARP DRIVE TO SPACE STATION BASE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    CAPTAINENERGY = CAPTAINENERGY - 50
    GOTO sector5vCA:
END IF
warpvCa:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                      [SPACE] to ACTIVATE WARP DRIVE TO SECTOR V!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    CAPTAINENERGY = CAPTAINENERGY - 50
    GOTO commandersturn
END IF

VcommanderWARPDRIVEMENU:
DO
    CLS
    PRINT "Which Sector would you like to warp to, captain?"
    PRINT "Sector V or the Space Station sector 5."
    INPUT sectorwarp

LOOP UNTIL sectorwarp = "V" OR sectorwarp = "5"
IF sectorwarp = "V" THEN GOTO warpvCO
IF sectorwarp = "5" THEN GOTO warp5VCO
warp5VCO:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                      [SPACE] to ACTIVATE WARP DRIVE TO SPACE STATION BASE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    CAPTAINENERGY = CAPTAINENERGY - 50
    GOTO sector5vCO:
END IF
warpvCO:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                      [SPACE] to ACTIVATE WARP DRIVE TO SECTOR V!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    COMMANDERenergy = COMMANDERenergy - 50
    GOTO captainsturn
END IF
REENERGIZESHIPCA:
PRINT "How much energy would you like to take from the base?"
INPUT reenergize
CLS
PRINT "                          [SPACE] to REENERGIZE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET CAPTAINENERGY = CAPTAINENERGY + reenergize
    LET BASEENERGYCa = BASEENERGYCa - reenergize
    GOTO sector5vCA
END IF



VcaptainBLASTERMENU:
CLS
INPUT "Fire how many blasts?      ", blastsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET COMMANDERenergy = COMMANDERenergy - blastsfire * 10
    LET CAPTAINENERGY = CAPTAINENERGY - blastsfire * 20
    GOTO commandersturn
END IF

VcommanderBLASTERMENU:
CLS
INPUT "Fire how many blasts?      ", blastsfire
CLS
PRINT "                          [SPACE] to FIRE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET CAPTAINENERGY = CAPTAINENERGY - blastsfire * 10
    LET COMMANDERenergy = COMMANDERenergy - blastsfire * 20
    GOTO captainsturn
END IF

VcaptainHELPMENU:
CLS
PRINT ""
PRINT "                         [ESC] to end game"
PRINT "                         [R]esume to go back to game"
PRINT "                         [S]tart over to start game over"
PRINT ""
PRINT "                         Your energy:    "; CAPTAINENERGY
PRINT "                         Commander's Energy: "; COMMANDERenergy
PRINT ""
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "S" OR K$ = "R" OR K$ = CHR$(27)
IF K$ = "R" THEN GOTO captainsturn
IF K$ = "S" THEN GOTO versusmode
IF K$ = CHR$(27) THEN GOTO SPACEMASTERSMENU
VcommanderHELPMENU:
CLS
PRINT ""
PRINT "                         [ESC] to end game"
PRINT "                         [R]esume to go back to game"
PRINT "                         [S]tart over to start game over"
PRINT ""
PRINT "                         Your energy:    "; COMMANDERenergy
PRINT "                         Captain's Energy: "; CAPTAINENERGY
PRINT ""
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = "S" OR K$ = "R" OR K$ = CHR$(27)
IF K$ = "R" THEN GOTO commandersturn
IF K$ = "S" THEN GOTO versusmode
IF K$ = CHR$(27) THEN GOTO SPACEMASTERSMENU



REENERGIZESHIPCO:
PRINT "How much energy would you like to take from the base?"
INPUT reenergize
CLS
PRINT "                          [SPACE] to REENERGIZE!"
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    LET COMMANDERenergy = COMMANDERenergy + reenergize
    LET BASEENERGYCO = BASEENERGYCO - reenergize
    GOTO sector5vCO
END IF

endversuscreen:
CLS
IF CAPTAINENERGY < 0 AND COMMANDERenergy > 0 THEN PRINT "Commander "; usercommander; " W O N ! ! !"
IF COMMANDERenergy < 0 AND CAPTAINENERGY > 0 THEN PRINT "Captain "; usercaptain; " W O N ! ! !"
IF comanderenergy < 0 AND CAPTAINENERGY < 0 THEN PRINT "I T  W A S  A  T I E ! ! !"
PRINT "     [SPACE] to continue . . ."
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    points = points + 500
    GOTO SPACEMASTERSMENU
END IF


CHANGENAME:
CLS
COLOR 15:
PRINT
PRINT
PRINT
PRINT
PRINT "                         Who is Captain of the ship?"
INPUT "                               ", usercaptain
PRINT "                         Who is Commander of the ship?"
INPUT "                               ", usercommander
GOTO SPACEMASTERSMENU

startingLogo:
CLS
COLOR 15:
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
color30: PRINT "                      W E L C O M E  T O  S P A C E M A S T E R S"
PRINT
PRINT
PRINT
color15: PRINT "                              S P A C E M A S T E R S "
PRINT
PRINT "                                 by Ethan Davidson"
PRINT
PRINT
PRINT "                                 [SPACE]  to start"
PRINT
DO
    K$ = INKEY$
    K$ = UCASE$(K$)
LOOP UNTIL K$ = CHR$(32)
IF K$ = CHR$(32) THEN
    points = points + 100
    GOTO ultistart
END IF

SAVE_GAME:
OPEN "SAVE\SPACEMASTER.TXT" FOR OUTPUT AS #1
PRINT #1, points
PRINT #1, asteroidbadge
PRINT #1, metoroidbadge
PRINT #1, novabadge
PRINT #1, blackholebadge
PRINT #1, spacemastersbadge
PRINT #1, bonuslevel1
PRINT #1, bonuslevel2
PRINT #1, usercaptain
PRINT #1, usercommander
CLOSE #1
CLS
PRINT "SAVING ."
BEEP
CLS
PRINT "SAVING . . ."
BEEP
CLS
PRINT "SAVING . . . . ."
CLS
BEEP
END

REMEMBER_ME:
OPEN "SAVE\SPACEMASTER.TXT" FOR INPUT AS #1
IF PERSON = 1 THEN
    INPUT #1, points
    INPUT #1, asteroidbadge
    INPUT #1, metoroidbadge
    INPUT #1, novabadge
    INPUT #1, blackholebadge
    INPUT #1, spacemastersbadge
    INPUT #1, bonuslevel1
    INPUT #1, bonuslevel2
    INPUT #1, usercaptain
    INPUT #1, usercommander
END IF
CLOSE #1
RETURN

EXCUSEME:
CLOSE #1
PERSON = 0
RESUME NEXT

FUNCTION Clock$
    hour$ = LEFT$(TIME$, 2): H% = VAL(hour$)
    min$ = MID$(TIME$, 3, 3)
    IF H% >= 12 THEN ampm$ = " PM" ELSE ampm$ = " AM"
    IF H% > 12 THEN
        IF H% - 12 < 10 THEN hour$ = STR$(H% - 12) ELSE hour$ = LTRIM$(STR$(H% - 12))
    ELSEIF H% = 0 THEN hour$ = "12" ' midnight hour
    ELSE: IF H% < 10 THEN hour$ = STR$(H%) ' eliminate leading zeros
    END IF
    Clock$ = hour$ + min$ + ampm$
END FUNCTION

