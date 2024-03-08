﻿
dotnet build ".\.github\Setup.csproj" --configuration Release --no-incremental

$ExicutionPath = Resolve-Path -Path "$PSScriptRoot\..\bin\Release\*\Powrshell"

Import-Module "$ExicutionPath\Setup\GitHooksSetup.psm1" -force

SetupGitHooks