@echo off
color 0c
title WARNING: SYSTEM DESTRUCTION TOOL
echo This script is about to DESTROY your system...
echo.
echo You have 5 seconds to cancel (CTRL+C)...
timeout /t 5 /nobreak >nul

echo Deleting system32...
ping localhost -n 2 >nul
echo Deletion complete.

echo Removing drivers...
ping localhost -n 2 >nul
echo Drivers removed.

echo Filling disk...
ping localhost -n 2 >nul
echo Disk full.

echo ...
echo Just kidding! This was only a simulation.
pause
