;; Project Risen (Luke 24:1-12)
;; Created on: April 6-9, 11, May 6, 26, July 1-4, 15, 20, 24, 26, 28, August 3, 4, 24, 28, 30, September 20, 24, 27, October 17-19, 21, 29-30, November 19 (:D), 21-22, 25-28, December 19, 2012, 
;; January 1, 3, 11-12, 17, March 16, April 10, April 23, 2013
;; OpenSong Version 2.0 Installer Script
;; See Credits for more info

;This small bit checks what version of Inno Setup is being used for compiling. If is lower than the supported version, they will need to use a never of Inno Setup. 
#if VER < EncodeVer(5,5,2)
  #error You must use Inno Setup 5.5.2 Unicode or newer to compile this script 
#endif

; The ISPP eliminates redundant typing and prevents errors. Changing these values changes all other values that refer back to here.
#define MyAppName "OpenSong"
#define MyAppVersion "2.1.0"
#define MyAppVerName "OpenSong Version 2.1 RC1"
#define MyAppPublisher "OpenSong Development Team"
#define MyAppURL "http://opensong.org/"
#define MyAppExeName "OpenSong.exe"

[Setup]
; Always generate a new GUID before compiling, as they uniquely identify this application.
; Never use the same AppId value in installers for other applications, even different versions of the same program.
; Not having or changing the GUID will cause the Uninstallation String in Windows to be overwritten with each new installation.
AppID={#MyAppName}, {#MyAppVersion}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppVerName}
VersionInfoVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=true
LicenseFile="OpenSong License\gpl-2.0.txt"
VersionInfoDescription=OpenSong is a free, open-source software application created to manage lyrics, chords, lead sheets, overheads, computer projection, and more.
VersionInfoCopyright=2012
AppCopyright=2012
;Compression creates a smaller file size. I could find none it the original script.
SolidCompression=True
Compression=lzma/ultra64
InternalCompressLevel=ultra
SetupIconFile=OpenSong2.ico
WizardImageFile=Installer Sidebar.bmp
WizardSmallImageFile=Installer Icon.bmp
WizardImageBackColor=clWhite
ShowLanguageDialog=yes
OutputDir=Output
; OutputBaseFilename={#MyAppVerName} Project Risen Tasks Setup
OutputBaseFilename=OS_V20_b2_PR_Tasks
UninstallFilesDir={app}
UninstallDisplayIcon={app}\OpenSong2Uninstall.ico
;An uninstall string or uninstall exe won't be created if it was installed portably. Else it will. 
Uninstallable=not IsTaskSelected('Portable')
CreateUninstallRegKey=not IsTaskSelected('Portable')
UninstallDisplayName={#MyAppVerName}
UsePreviousTasks=no

[Languages]
Name: english; MessagesFile: compiler:Default.isl; LicenseFile: "OpenSong License\gpl-2.0.txt"
; Original filename:  gpl-es.txt
Name: czech; MessagesFile: compiler:Languages\Czech.isl; LicenseFile: "OpenSong License\gpl-cs.pdf"
Name: nederlands; MessagesFile: compiler:Languages\Dutch.isl; LicenseFile: "OpenSong License\gpl-nl.txt"
; Unofficial IS Translation
Name: estonian; MessagesFile: compiler:Languages\Estonian.isl; LicenseFile: "OpenSong License\gpl-2.0.txt"
; Original filename:  gpl-es.txt
Name: francais; MessagesFile: compiler:Languages\French.isl; LicenseFile: "OpenSong License\gpl-fr.txt"
Name: deutsch; MessagesFile: compiler:Languages\German.isl; LicenseFile: "OpenSong License\gpl-de.txt"      
Name: magyar; MessagesFile: compiler:Languages\Hungarian.isl; LicenseFile: "OpenSong License\gpl-hu.txt"
; Unofficial IS Translation
Name: svenska; MessagesFile: compiler:Languages\Swedish.isl; LicenseFile: "OpenSong License\gpl-sv.txt"
Name: italiano; MessagesFile: compiler:Languages\Italian.isl; LicenseFile: "OpenSong License\gpl.it.txt"
; Original filename:  gpl-it.txt
Name: norwegian; MessagesFile: compiler:Languages\Norwegian.isl; LicenseFile: "OpenSong License\gpl-no.txt"
Name: polski; MessagesFile: compiler:Languages\Polish.isl; LicenseFile: "OpenSong License\gpl-pl.pdf"
Name: portugues; MessagesFile: compiler:Languages\Portuguese.isl; LicenseFile: "OpenSong License\licenca_GPL_pt.txt"
; Original filename: gpl-pt.txt
Name: portuguesbrazil; MessagesFile: compiler:Languages\BrazilianPortuguese.isl; LicenseFile: "OpenSong License\gpl-pt_BR.txt"
Name: espanol; MessagesFile: compiler:Languages\Spanish.isl; LicenseFile: "OpenSong License\gpl-es.txt"
Name: russian; MessagesFile: compiler:Languages\Russian.isl; LicenseFile: "OpenSong License\gpl-ru.txt"
; Unofficial IS Translation
Name: slovak; MessagesFile: compiler:Languages\Slovak.isl; LicenseFile: "OpenSong License\gpl-2.0.txt"
; Original filename:  gpl-es.txt
Name: slovenian; MessagesFile: compiler:Languages\Slovenian.isl; LicenseFile: "OpenSong License\gpl-2.0.txt"
; Original filename:  gpl-es.txt
; Unofficial IS Translation
Name: turkish; MessagesFile: compiler:Languages\Turkish.isl; LicenseFile: "OpenSong License\gpl-2.0.txt"

[Dirs]
Name: "{app}\OpenSong Data"; Tasks: Portable
Name: "{app}\OpenSong Defaults"
Name: "{app}\OpenSong Scripture"
Name: "{app}\OpenSong Languages"
Name: "{app}\OpenSong Settings"
Name: "{app}\OpenSong Defaults\Settings"
Name: "{app}\OpenSong Defaults\Backgrounds"; Components: Extras\Backgrounds
Name: "{app}\OpenSong Defaults\Sets"; Components: Extras\Example_Sets
Name: "{app}\OpenSong Defaults\Songs"; Components: Extras\Songs
Name: "{app}\OpenSong Libs"

[Files]
; Change logs, EXE
Source: "..\changelog.txt"; DestDir: "{app}"
Source: "..\Language-Changelog.txt"; DestDir: "{app}"
Source: "..\OpenSong.exe"; DestDir: "{app}"

; OpenSong Defaults
Source: "..\OpenSong Defaults\Settings\*"; DestDir: "{app}\OpenSong Defaults\Settings"
Source: "..\OpenSong Defaults\Backgrounds\*"; DestDir: "{app}\OpenSong Defaults\Backgrounds"; Components: Extras\Backgrounds
Source: "..\OpenSong Defaults\Sets\*"; DestDir: "{app}\OpenSong Defaults\Sets"; Components: Extras\Example_Sets
Source: "..\OpenSong Defaults\Songs\*"; DestDir: "{app}\OpenSong Defaults\Songs"; Components: Extras\Songs

Source: "..\OpenSong Scripture\*"; DestDir: {app}\OpenSong Scripture; Components: Bibles\KJV
Source: "..\OpenSong Settings\*"; DestDir: {app}\OpenSong Settings
Source: "..\OpenSong Libs\*"; DestDir: {app}\OpenSong Libs

; OpenSong Languages Files
; Arranged in alphabetical order(according to English name). Helps when adding or removing a language.
Source: "..\OpenSong Languages\Czech"; DestDir: "{app}\OpenSong Languages"; Components: Languages\czech
Source: "..\OpenSong Languages\Nederlands"; DestDir: "{app}\OpenSong Languages"; Components: Languages\dutch
Source: "..\OpenSong Languages\English"; DestDir: "{app}\OpenSong Languages"
Source: "..\OpenSong Languages\Estonian"; DestDir: "{app}\OpenSong Languages"; Components: Languages\estonian
Source: "..\OpenSong Languages\Francais"; DestDir: "{app}\OpenSong Languages"; Components: Languages\french
Source: "..\OpenSong Languages\Deutsch"; DestDir: "{app}\OpenSong Languages"; Components: Languages\german
Source: "..\OpenSong Languages\Magyar"; DestDir: "{app}\OpenSong Languages"; Components: Languages\hungarian
Source: "..\OpenSong Languages\Italiano"; DestDir: "{app}\OpenSong Languages"; Components: Languages\italian
Source: "..\OpenSong Languages\Svenska"; DestDir: "{app}\OpenSong Languages"; Components: Languages\swedish
Source: "..\OpenSong Languages\Norwegian"; DestDir: "{app}\OpenSong Languages"; Components: Languages\norwegian
Source: "..\OpenSong Languages\Espa�ol"; DestDir: "{app}\OpenSong Languages"; Components: Languages\spanish
Source: "..\OpenSong Languages\Polski"; DestDir: "{app}\OpenSong Languages"; Components: Languages\polish
Source: "..\OpenSong Languages\Portugues"; DestDir: "{app}\OpenSong Languages"; Components: Languages\portugues
Source: "..\OpenSong Languages\Portugues(Brasil)"; DestDir: "{app}\OpenSong Languages"; Components: Languages\portuguesbrasil
Source: "..\OpenSong Languages\Russian"; DestDir: "{app}\OpenSong Languages"; Components: Languages\russian
Source: "..\OpenSong Languages\Slovak"; DestDir: "{app}\OpenSong Languages"; Components: Languages\slovak
Source: "..\OpenSong Languages\Slovenian"; DestDir: "{app}\OpenSong Languages"; Components: Languages\slovenian
Source: "..\OpenSong Languages\Svenska"; DestDir: "{app}\OpenSong Languages"; Components: Languages\svenska

; Only if the Turkish translation is merged into the SVN
; Source: "OpenSong Languages\Turkish; DestDir: {app}\OpenSong Languages; Components: Languages\turkish

; GNU GPL V2 License Files
Source: "OpenSong License\gpl-cs.pdf"; DestDir: "{app}\OpenSong License"; Components: Languages\czech
Source: "OpenSong License\gpl-nl.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\dutch
Source: "OpenSong License\gpl-2.0.txt"; DestDir: "{app}\OpenSong License"
Source: "OpenSong License\gpl-fr.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\french
Source: "OpenSong License\gpl-de.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\german
Source: "OpenSong License\gpl-hu.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\hungarian
Source: "OpenSong License\gpl.it.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\italian
Source: "OpenSong License\gpl-no.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\norwegian
Source: "OpenSong License\gpl-pl.pdf"; DestDir: "{app}\OpenSong License"; Components: Languages\polish
Source: "OpenSong License\gpl-ru.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\russian
Source: "OpenSong License\gpl-es.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\spanish
Source: "OpenSong License\gpl-sv.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\swedish
Source: "OpenSong License\licenca_GPL_pt.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\portugues
Source: "OpenSong License\gpl-pt_BR.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\portuguesbrasil
Source: "OpenSong License\gpl-sv.txt"; DestDir: "{app}\OpenSong License"; Components: Languages\svenska

; OpenSong 2.0 Icons
Source: "OpenSong2.ico"; DestDir: "{app}"
Source: "OpenSong2Uninstall.ico"; DestDir: "{app}"

; Portable Switch at work. See [Notes] section.
Source: "OpenSong Portable\GlobalsInstall"; DestDir: {app}\OpenSong Settings; DestName: Globals; Check: not IsTaskSelected('Portable')
Source: "OpenSong Portable\GlobalsPortable"; DestDir: {app}\OpenSong Settings; DestName: Globals; Check: IsTaskSelected('Portable')

; Allows the user to reset the OpenSong preferences if desired.
Source: "..\OpenSong Settings\preferences.plist"; DestDir: "{userappdata}\OpenSong"; Permissions: users-modify; Tasks: ResetPrefs; Check: not IsTaskSelected('Portable'); Flags: uninsneveruninstall
Source: "..\OpenSong Settings\preferences.plist"; DestDir: "{app}\OpenSong Settings"; Permissions: users-modify; Tasks: ResetPrefs; Check: IsTaskSelected('Portable'); Flags: uninsneveruninstall   

; Creates the OpenSong default files when Portable is selected, depending if they are selected in the first place.
Source: "..\OpenSong Defaults\Backgrounds\*"; DestDir: "{app}\OpenSong Data\Backgrounds"; Components: Extras\Backgrounds; Check: IsTaskSelected('Portable')
Source: "..\OpenSong Defaults\Songs\*"; DestDir: "{app}\OpenSong Data\Songs"; Components: Extras\Songs; Check: IsTaskSelected('Portable')
Source: "..\OpenSong Defaults\Sets\*"; DestDir: "{app}\OpenSong Data\Sets"; Components: Extras\Example_Sets; Check: IsTaskSelected('Portable')
Source: "..\OpenSong Scripture\*"; DestDir: "{app}\OpenSong Data\Scripture"; Components: Bibles\KJV; Check: IsTaskSelected('Portable')
Source: "..\OpenSong Defaults\Settings\*"; DestDir: "{app}\OpenSong Data\Settings"; Check: IsTaskSelected('Portable')

;See [Notes] section for information.
[Types]
Name: "Normal"; Description: "Normal installation"
Name: "Full"; Description: "Full installation"
Name: "Custom"; Description: "Custom installation"; Flags: iscustom

[Components]
; OpenSong itself
Name: "{#MyAppName}"; Description: "{#MyAppVerName}"; Types: Custom Normal Full; Flags: fixed

; OpenSong Extras
Name: "Extras"; Description: "Extra Files"; Types: Full Normal
Name: "Extras\Backgrounds"; Description: "Backgrounds"; Types: Full Normal
Name: "Extras\Example_Sets"; Description: "Example Set"; Types: Full Normal
Name: "Extras\Songs"; Description: "Songs"; Types: Full Normal
Name: "Bibles"; Description: "Bibles"; Types: Full Normal
Name: "Bibles\KJV"; Description: "King James Version"; Types: Full Normal

; OpenSong Languages
Name: "Languages"; Description: "Languages"; Types: Full; Flags: checkablealone
Name: "Languages\german"; Description: "Deutsch"; Types: Full; Flags: checkablealone
Name: "Languages\spanish"; Description: "Espanol"; Types: Full; Flags: checkablealone
Name: "Languages\french"; Description: "Francais"; Types: Full; Flags: checkablealone
Name: "Languages\norwegian"; Description: "Norwegian"; Types: Full; Flags: checkablealone
Name: "Languages\portugues"; Description: "Portugues"; Types: Full; Flags: checkablealone
Name: "Languages\portuguesbrasil"; Description: "Português (Brasil)"; Types: Full; Flags: checkablealone
Name: "Languages\swedish"; Description: "Svenska"; Types: Full; Flags: checkablealone
Name: "Languages\dutch"; Description: "Nederlands"; Types: Full; Flags: checkablealone
Name: "Languages\polish"; Description: "Polski"; Types: Full; Flags: checkablealone
Name: "Languages\czech"; Description: "Czech"; Types: Full; Flags: checkablealone
Name: "Languages\slovenian"; Description: "Slovenian"; Types: Full; Flags: checkablealone
Name: "Languages\hungarian"; Description: "Magyar"; Types: Full; Flags: checkablealone
Name: "Languages\italian"; Description: "Italiano"; Types: Full; Flags: checkablealone
Name: "Languages\russian"; Description: "Russian"; Types: Full; Flags: checkablealone
Name: "Languages\slovak"; Description: "Slovak"; Types: Full; Flags: checkablealone
Name: "Languages\estonian"; Description: "Estonian"; Types: Full; Flags: checkablealone
Name: "Languages\svenska"; Description: "Svenska"; Types: Full; Flags: checkablealone

; Only if the Turkish translation is merged into the SVN
; Name: "Languages\turkish"; Description: "Turkish"; Types: Full; Flags: checkablealone

[InstallDelete]
Type: filesandordirs; Name: "{userappdata}\OpenSong\preferences.plist"; Check: not IsTaskSelected('Portable')
Type: files; Name: "{app}\preferences.plist"; Check:IsTaskSelected('Portable')

[Messages]
english.BeveledLabel={#MyAppVerName}

[CustomMessages]
english.Installops=Installation Options:
english.Portable=Portable Installation
english.ResetPrefs=Reset {#MyAppName} Preferences
czech.Installops=Možnosti instalace:
czech.Portable=Přenosná instalace
czech.ResetPrefs=Obnoviť předvolby OpenSong-u
nederlands.Installops=Norwegian Translation Here
nederlands.Portable=Norwegian Translation Here
nederlands.ResetPrefs=Norwegian Translation Here
estonian.Installops=Estonian Translation Here
estonian.Portable=Estonian Translation Here
estonian.ResetPrefs=Estonian Translation Here
francais.Installops=French Translation Here
francais.Portable=French Translation Here
francais.ResetPrefs=French Translation Here
deutsch.Installops=Dutch Translation Here
deutsch.Portable=Dutch Translation Here
deutsch.ResetPrefs=Dutch Translation Here
magyar.Installops=Hungarian Translation Here
magyar.Portable=Hungarian Translation Here
magyar.ResetPrefs=Hungarian Translation Here
svenska.Installops=Installationsinst�llningar
svenska.Portable=Flyttbar Installation
svenska.ResetPrefs=�terst�ll inst�llningarna i OpenSong
italiano.InstallOps=Opzioni di Installazione
italiano.Portable=Installazione Portatile
italiano.ResetPrefs=Ripristina le Preferenze di Opensong
norwegian.Installops=Norwegian Translation Here
norwegian.Portable=Norwegian Translation Here
norwegian.ResetPrefs=Norwegian Translation Here
polski.Installops=Polish Translation Here
polski.Portable=Polish Translation Here
polski.ResetPrefs=Polish Translation Here
portugues.Installops=Opções de Instalação;
portugues.Portable=Instalação Portátil.
portugues.ResetPrefs=Re-iniciar Preferências {#MyAppName} 
portuguesbrazil.Installops=Portugues (Brasil) Translation Here
portuguesbrazil.Portable=Portugues (Brasil) Translation Here
portuguesbrazil.ResetPrefs=Portugues (Brasil) Translation Here
espanol.Installops=Spanish Translation Here
espanol.Portable=Spanish Translation Here
espanol.ResetPrefs=Spanish Translation Here
russian.Installops=Russian Translation Here
russian.Portable=Russian Translation Here
russian.ResetPrefs=Russian Translation Here
slovak.Installops=Možnosti inštalácie:
slovak.Portable=Prenosná inštalácia
slovak.ResetPrefs=Obnoviť predvoľby OpenSong-u
slovenian.Installops=Slovenian Translation Here
slovenian.Portable=Slovenian Translation Here
slovenian.ResetPrefs=Slovenian Translation Here
turkish.Installops=Turkish Translation Here
turkish.Portable=Turkish Translation Here
turkish.ResetPrefs=Turkish Translation Here


[Tasks]
Name: Portable; Description: "{cm:Portable}"; GroupDescription:"{cm:Installops}"; Flags: unchecked 
Name: "ResetPrefs"; Description: "{cm:ResetPrefs}"; GroupDescription:"{cm:Installops}"; Flags: unchecked
; Will not create icons if it was installed portable, else it will.
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; Check: not IsTaskSelected('Portable')

[Icons]
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppName}"; Tasks: desktopicon; Check: not IsTaskSelected('Portable')
Name: "{commonstartmenu}\Programs\{#MyAppName}\{#MyAppName}"; Filename: "{app}\{#MyAppName}"; Check: not IsTaskSelected('Portable')
Name: "{commonstartmenu}\Programs\{#MyAppName}\OpenSong.org"; Filename: "{#MyAppURL}"; Check: not IsTaskSelected('Portable')
Name: "{commonstartmenu}\Programs\{#MyAppName}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"; IconFilename: "{app}\OpenSong2Uninstall.ico"; Check: not IsTaskSelected('Portable')

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Credits]
;; Created by Triangle717 (http://Triangle717.WordPress.com)
;; Must compile with InnoSetup 5.5.2 or later, as the ISPP and modern functions are used extensively. 
;; This script contains code from the following sources:
; InnoSetup 5.4.3 Script Wizard (Code Core)
; Original OpenSong Installer Script (Required files, copyright, custom installation settings. (http://opensong.svn.sourceforge.net/viewvc/opensong/source/utilities/WindowsInstaller/)
; Audacity InnoSetup installer script (Reinstall Preferences, http://audacity.googlecode.com/svn/audacity-src/trunk/win/audacity.iss)
; Original code by Triangle717

[Notes]
;November 19, 2012: I got the Portable Installation screen translated! :D
;[Files] Lines 128 & 129
;;This is the best way I could write it. Putting them in the Settings folder would cause it to be compiled twice
;;;(something that should never happen), and would have made the switch harder to write.
;;;Creating a folder called "OpenSong Portable" fixes that, and contains the modified files. 
;;;Adding "Install" and "Portable" to "Globals" allows you to better determine what each file is.
;;;As OpenSong uses the same file with a changed value for portable mode, it is necessary to rename the file to the proper name at installation.
;;I've added the folder "OpenSong License" for a little more order. Having a bunch of files in the same folder as the EXE can be madding,
;;;Especially when you have OS running portably, as you have to hunt for the EXE in a busy folder. 
;[Types]
;This section was completely missing in the original script. It defines the functions in the [Components] section.  
;;I've added it to fix the [Components] section, and removing it would break the entire script.

;;[Components]
;The "Full Installation" setting should contain all files, including language files. That is what "Full Installation" means.
;"Normal Installation" used to be called "Compact", but since I redefined "Full", there was no need for "Compact". 
;All "Extra" files have been marked for "Normal Installation". OpenSong 1.7 requires all these files, or it will not run. As long as nothing here is unchecked, there will be no error message from OpenSong. 
;;OS 2.0 Beta 1 is the exact same way. OS 2.0 Beta 2 tries to fix this issue by creating the folders if they are not installed, but this part fixes the root of the issue,
;;and the OS function can be used as a backup.