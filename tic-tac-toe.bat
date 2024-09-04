@echo off
title morpion
color 09

set/A VP1=0
set/A VP2=0

set/A game=1


:restart
set/A turn=1
set/A round=-1

set A1=.
set A2=.
set A3=.
set/A _A1 = 0
set/A _A2 = 0
set/A _A3 = 0


set B1=.
set B2=.
set B3=.
set/A _B1 = 0
set/A _B2 = 0
set/A _B3 = 0


set C1=.
set C2=.
set C3=.
set/A _C1 = 0
set/A _C2 = 0
set/A _C3 = 0

GOTO try

:start
if %turn%==2 GOTO t1
if %turn%==1 GOTO t2

:t1
set/A turn=1
GOTO try

:t2
set/A turn=2
GOTO try

set/a turn=2

:try
set/A round=%round%+1
:retry
CLS
echo.
echo    Rules:
echo     - Like the original game
echo     - Enter your choice following the example (ex: A1) or close game
echo.
echo.
echo.
echo example:                         the game:
echo               #      #                           #       #            Game(s): %game%
echo           A1  #  A2  #  A3                   %A1%   #   %A2%   #   %A3%        Rounds(s): %round%
echo               #      #                           #       #            P1: %VP1%
echo          ####################               ###################       P2: %VP2%
echo               #      #                           #       #
echo           B1  #  B2  #  B3                   %B1%   #   %B2%   #   %B3%
echo               #      #                           #       #
echo          ####################               ###################
echo               #      #                           #       #
echo           C1  #  C2  #  C3                   %C1%   #   %C2%   #   %C3%
echo               #      #                           #       #
echo.
echo.
echo.
echo.


set/A win= %_A1%+%_A2%+%_A3%
if %win%==3 GOTO P1win
set/A win= %_B1%+%_B2%+%_B3%
if %win%==3 GOTO P1win
set/A win= %_C1%+%_C2%+%_C3%
if %win%==3 GOTO P1win
set/A win= %_A1%+%_B1%+%_C1%
if %win%==3 GOTO P1win
set/A win= %_A2%+%_B2%+%_C2%
if %win%==3 GOTO P1win
set/A win= %_A3%+%_B3%+%_C3%
if %win%==3 GOTO P1win
set/A win= %_A1%+%_B2%+%_C3%
if %win%==3 GOTO P1win
set/A win= %_A3%+%_B2%+%_C1%
if %win%==3 GOTO P1win

set/A win= %_A1%+%_A2%+%_A3%
if %win%==30 GOTO P2win
set/A win= %_B1%+%_B2%+%_B3%
if %win%==30 GOTO P2win
set/A win= %_C1%+%_C2%+%_C3%
if %win%==30 GOTO P2win
set/A win= %_A1%+%_B1%+%_C1%
if %win%==30 GOTO P2win
set/A win= %_A2%+%_B2%+%_C2%
if %win%==30 GOTO P2win
set/A win= %_A3%+%_B3%+%_C3%
if %win%==30 GOTO P2win
set/A win= %_A1%+%_B2%+%_C3%
if %win%==30 GOTO P2win
set/A win= %_A3%+%_B2%+%_C1%
if %win%==30 GOTO P2win


if %turn%==1 GOTO P1
if %turn%==2 GOTO P2

:P1

set/p "action=player 1 choose point: "
GOTO %action%

:A1
if %_A1%==0 GOTO P1A1
GOTO error
:P1A1
set/A _A1=1
set A1=x
GOTO start

:A2
if %_A2%==0 GOTO P1A2
GOTO error
:P1A2
set/A _A2=1
set A2=x
GOTO start

:A3
if %_A3%==0 GOTO P1A3
GOTO error
:P1A3
set/A _A3=1
set A3=x
GOTO start

:B1
if %_B1%==0 GOTO P1AB1
GOTO error
:P1B1
set/A _B1=1
set B1=x
GOTO start

:B2
if %_B2%==0 GOTO P1B2
GOTO error
:P1B2
set/A _B2=1
set B2=x
GOTO start

:B3
if %_B3%==0 GOTO P1B3
GOTO error
:P1B3
set/A _B3=1
set B3=x
GOTO start

:C1
if %_C1%==0 GOTO P1C1
GOTO error
:P1C1
set/A _C1=1
set C1=x
GOTO start

:C2
if %_C2%==0 GOTO P1C2
GOTO error
:P1C2
set/A _C2=1
set C2=x
GOTO start

:C3
if %_C3%==0 GOTO P1C3
GOTO error
:P1C3
set/A _C3=1
set C3=x
GOTO start


:P2
set/p "action=player 2 choose point: "
goto %action%


:A1
if %_A1%==0 GOTO P2A1
GOTO error
:P2A1
set/A _A1=10
set A1=o
GOTO start

:A2
if %_A3%==0 GOTO P2A2
GOTO error
:P2A2
set/A _A1=10
set A2=o
GOTO start

:A3
if %_A3%==0 GOTO P2A3
GOTO error
:P2A3
set/A _A3=10
set A3=o
GOTO start

:B1
if %_B1%==0 GOTO P2B1
GOTO error
:P2B1
set/A _B1=10
set B1=o
GOTO start

:B2
if %_B2%==0 GOTO P2B2
GOTO error
:P2B2
set/A _B2=10
set B2=o
GOTO start

:B3
if %_B3%==0 GOTO P2B3
GOTO error
:P2B3
set/A _B3=10
set B3=o
GOTO start

:C1
if %_C1%==0 GOTO P2C1
GOTO error
:P2C1
set/A _C1=10
set C1=o
GOTO start

:C2
if %_C2%==0 GOTO P2C2
GOTO error
:P2C2
set/A _C2=10
set C2=o
GOTO start

:C3
if %_C3%==0 GOTO P2C3
GOTO error
:P2C3
set/A _C3=10
set C3=o
GOTO start


:P1win
echo.
echo Player 1 win !
echo type "end" to close the game.
set/A VP1=%VP1%+1
pause
set/A game=%game%+1
GOTO restart

:P2win
echo.
echo Player 2 win !
echo type "end" to close the game.
set/A VP2=%VP2%+1
pause
set/A game=%game%+1
GOTO restart

:error
echo.
echo.
echo Place already taken... Please retry !
timeout/t 03 /nobreak
GOTO retry

:end
echo.
echo.
echo Thank to playing at the game made by Rouyoute !
pause