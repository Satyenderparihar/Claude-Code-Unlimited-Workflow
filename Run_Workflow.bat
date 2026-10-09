@echo off
setlocal enabledelayedexpansion
title Claude Code Free Alternatives & Unlimited Workflow Launcher
color 0B
cd /d "%~dp0"

:MENU
cls
echo ===============================================================================
echo       5 FREE CLAUDE CODE ALTERNATIVES - UNLIMITED WORKFLOW LAUNCHER
echo ===============================================================================
echo.
echo   Project Directory: %~dp0
echo   Active Stack: AstroJS + Tailwind CSS v4 + Vercel DESIGN.md
echo   Skills Loaded: astro, tailwind-4-docs, web-design-guidelines
echo.
echo   -----------------------------------------------------------------------------
echo   [1] Start Astro Dev Server (Local Preview at http://localhost:4321)
echo   [2] Launch OpenCode CLI (Claude Code Free Alternative in Terminal)
echo   [3] Connect OpenCode to Zen Network (Minimax M3, MiMo V2.5, Nemotron)
echo   [4] Install / Update Global Skills (npx skills)
echo   [5] Build Astro Project (Production Verification)
echo   [6] Git Status & Quick Commit
echo   [0] Exit
echo   -----------------------------------------------------------------------------
echo.
set /p choice="Enter your choice [0-6]: "

if "%choice%"=="1" goto DEV_SERVER
if "%choice%"=="2" goto LAUNCH_OPENCODE
if "%choice%"=="3" goto ZEN_CONNECT
if "%choice%"=="4" goto UPDATE_SKILLS
if "%choice%"=="5" goto BUILD_PROJECT
if "%choice%"=="6" goto GIT_OPS
if "%choice%"=="0" exit /b 0

echo Invalid selection. Please try again.
pause
goto MENU

:DEV_SERVER
cls
echo Starting Astro Dev Server...
echo Press Ctrl+C in terminal when you want to stop the server.
echo.
start "" http://localhost:4321
call npm.cmd run dev
pause
goto MENU

:LAUNCH_OPENCODE
cls
echo Launching OpenCode CLI in workspace directory...
echo.
call opencode.cmd
pause
goto MENU

:ZEN_CONNECT
cls
echo ===============================================================================
echo                     CONNECTING TO OPENCODE ZEN (FREE TIER)
echo ===============================================================================
echo.
echo Step 1: Open https://opencode.ai in your browser to sign in or get your API token.
echo Step 2: OpenCode will launch below.
echo         Type: /connect zen
echo         Paste your API Key when prompted.
echo         Then type: /model Minimax M3 (or Nemotron-3 Ultra / Xiaomi MiMo V2.5)
echo.
start "" https://opencode.ai
call opencode.cmd
pause
goto MENU

:UPDATE_SKILLS
cls
echo Updating Agent Skills via npx skills...
echo.
call npx.cmd skills add vercel-labs/agent-skills --skill web-design-guidelines -y
call npx.cmd skills add https://github.com/Lombiq/Tailwind-Agent-Skills --skill tailwind-4-docs -y
call npx.cmd skills add https://github.com/astrolicious/agent-skills --skill astro -y
echo.
echo Skills updated successfully!
pause
goto MENU

:BUILD_PROJECT
cls
echo Running production build...
echo.
call npm.cmd run build
pause
goto MENU

:GIT_OPS
cls
echo ===============================================================================
echo                            GIT STATUS & COMMIT
echo ===============================================================================
echo.
git status
echo.
set /p commit_msg="Enter commit message (or press ENTER to skip): "
if not "%commit_msg%"=="" (
    git add .
    git commit -m "%commit_msg%"
    echo Changes committed successfully!
)
pause
goto MENU
