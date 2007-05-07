############################################################################################
#      NSIS Installation Script created by NSIS Quick Setup Script Generator v1.09.18
#               Entirely Edited with NullSoft Scriptable Installation System                
#              by Vlasis K. Barkas aka Red Wine red_wine@freemail.gr Sep 2006               
############################################################################################

!define APP_NAME "OpenSong"
!define COMP_NAME "OpenSong.org"
!define WEB_SITE "http://www.opensong.org"
!define VERSION "01.00.002.18"
!define COPYRIGHT ""
!define DESCRIPTION "Application"
!define LICENSE_TXT "GPL2.txt"
!define INSTALLER_NAME "Setup.exe"
!define MAIN_APP_EXE "OpenSong.exe"
!define INSTALL_TYPE "SetShellVarContext all"
!define REG_ROOT "HKLM"
!define REG_APP_PATH "Software\Microsoft\Windows\CurrentVersion\App Paths\${MAIN_APP_EXE}"
!define UNINSTALL_PATH "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}"

!define REG_START_MENU "Start Menu Folder"

var SM_Folder
var fname

######################################################################

VIProductVersion  "${VERSION}"
VIAddVersionKey "ProductName"  "${APP_NAME}"
VIAddVersionKey "CompanyName"  "${COMP_NAME}"
VIAddVersionKey "LegalCopyright"  "${COPYRIGHT}"
VIAddVersionKey "FileDescription"  "${DESCRIPTION}"
VIAddVersionKey "FileVersion"  "${VERSION}"

######################################################################

SetCompressor bzip2
Name "${APP_NAME}"
Caption "${APP_NAME}"
OutFile "${INSTALLER_NAME}"
BrandingText "${APP_NAME}"
XPStyle on
InstallDirRegKey "${REG_ROOT}" "${REG_APP_PATH}" ""
InstallDir "$PROGRAMFILES\OpenSong"
#ShowInstDetails hide
ShowInstDetails show

######################################################################

!include "MUI.nsh"
!include "LogicLib.nsh"
!include "Sections.nsh"
!include "FileFunc.nsh"
!insertmacro GetFileVersion
!include "WordFunc.nsh"
!insertMacro VersionConvert
!insertMacro VersionCompare

!define MUI_ABORTWARNING
!define MUI_UNABORTWARNING
!define MUI_ICON "OpenSongInstall.ICO"
!define MUI_UNICON "OpenSongUninstall.ICO"
!define MUI_COMPONENTSPAGE_NODESC 

!insertmacro MUI_PAGE_WELCOME

!ifdef LICENSE_TXT
!insertmacro MUI_PAGE_LICENSE "${LICENSE_TXT}"
!endif

!insertmacro MUI_PAGE_DIRECTORY

!ifdef REG_START_MENU
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "OpenSong"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${REG_ROOT}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${UNINSTALL_PATH}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${REG_START_MENU}"
!insertmacro MUI_PAGE_STARTMENU Application $SM_Folder
!endif
!define MUI_PAGE_CUSTOMFUNCTION_PRE componentInitDefaults
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_INSTFILES

!define MUI_FINISHPAGE_RUN "$INSTDIR\${MAIN_APP_EXE}"

!define MUI_FINISHPAGE_NOAUTOCLOSE

!define MUI_FINISHPAGE_NOREBOOTSUPPORT

!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_CONFIRM

!insertmacro MUI_UNPAGE_INSTFILES

!define MUI_UNFINISHPAGE_NOAUTOCLOSE

!insertmacro MUI_UNPAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

######################################################################

Section -MainProgram
${INSTALL_TYPE}
SetOverwrite ifnewer
SetOutPath "$INSTDIR"
File "OpenSong.exe"
File "changelog.txt"
File "Language-Changelog.txt"
SetOverwrite ifnewer
#
#StrCpy $0 "Deutsch"
#Call RenameExistingFile
#File "OpenSong Languages\Deutsch"
#
#
#StrCpy $0 "DeutschNeutral"
#Call RenameExistingFile
#File "OpenSong Languages\DeutschNeutral"
#
#StrCpy $0 "Espa¤ol"
#Call RenameExistingFile
#File "OpenSong Languages\Espa¤ol"
#
#StrCpy $0 "Fran‡ais"
#Call RenameExistingFile
#File "OpenSong Languages\Fran‡ais"
#
#StrCpy $0 "Norwegian"
#Call RenameExistingFile
#File "OpenSong Languages\Norwegian"
#
#StrCpy $0 "Portuguˆs"
#Call RenameExistingFile
#File "OpenSong Languages\Portuguˆs"
#
#StrCpy $0 "PortuguˆsBrasil"
#Call RenameExistingFile
#File "OpenSong Languages\PortuguˆsBrasil"
#
#StrCpy $0 "Svenska"
#Call RenameExistingFile
#File "OpenSong Languages\Svenska"
#

CreateDirectory "$INSTDIR\OpenSong Defaults\Backgrounds"
CreateDirectory "$INSTDIR\OpenSong Defaults\Sets"
CreateDirectory "$INSTDIR\OpenSong Defaults\Songs"
DetailPrint " "
DetailPrint "**** Please notice messages for renamed files before continuing."
SectionEnd

############################################################
# RenameExistingFile
# If the specified file exists, it is renamed to 'file'.old
############################################################
Function RenameExistingFile
# Filename is in $0
IfFileExists "$0.old" 0 +2
Delete "$0.old"
IfFileExists $0 0 +3
Rename $0 "$0.old"
DetailPrint "Renamed $0 to $0.old"
FunctionEnd

############################################################
# ValidateAndRenameFile
# New file is already available as 'file'.$$$
# If a file with the basename already exists, compare the
#   MD5sums.  If different, ask the user if the file can be
#   overwritten.  If not, leave the old file in place and
#   rename the file from the installer to 'file'.new.
############################################################
Function ValidateAndRenameFile
# Filename is in $0
# New file is $0.$$$
Strcpy $fname $0 
${If} ${FileExists} "$fname"
    md5dll::GetMD5File "$fname"
    Pop $1
    md5dll::GETMD5File "$fname.$$$$$$"
    Pop $2
    DetailPrint "File $fname: MD5Sum $1"
    DetailPrint "File $fname.$$$$$$: MD5Sum $2"
    ${If} $1 <> $2 # Files are not the same
        GetFullPathName $3 $fname
        MessageBox MB_YESNO|MB_ICONQUESTION|MB_DEFBUTTON2 \
            "File $3 already exists. Overwrite?" IDYES replace IDNO saveasnew
    replace:
        DetailPrint "Renamed $fname to $fname.old."
        Rename "$3" "$3.old"
        Rename "$fname.$$$$$$" "$3"
        Goto endcmp
    saveasnew:
        DetailPrint "New file saved as $fname.new"
        DetailPrint "  and the old file left in place."
        Delete "$fname.new"
        Rename "$fname.$$$$$$" "$fname.new"
    endcmp:
    ${Else}
        # Existing file and new file are the same, cleanup
        Delete "fname.$$$$$$"
    ${EndIf}
${Else} # There is no previous file, put the new one in place
    Rename "$fname.$$$$$$" "$fname"
${EndIf}
FunctionEnd

######################################################################
# Dump the log file to a temporary file
######################################################################
!define LVM_GETITEMCOUNT 0x1004
!define LVM_GETITEMTEXT 0x102D

Function DumpLog
  Exch $5
  Push $0
  Push $1
  Push $2
  Push $3
  Push $4
  Push $6

  FindWindow $0 "#32770" "" $HWNDPARENT
  GetDlgItem $0 $0 1016
  StrCmp $0 0 error
  FileOpen $5 $5 "w"
  StrCmp $5 0 error
    SendMessage $0 ${LVM_GETITEMCOUNT} 0 0 $6
    System::Alloc ${NSIS_MAX_STRLEN}
    Pop $3
    StrCpy $2 0
    System::Call "*(i, i, i, i, i, i, i, i, i) i \
      (0, 0, 0, 0, 0, r3, ${NSIS_MAX_STRLEN}) .r1"
    loop: StrCmp $2 $6 done
      System::Call "User32::SendMessageA(i, i, i, i) i \
        ($0, ${LVM_GETITEMTEXT}, $2, r1)"
      System::Call "*$3(&t${NSIS_MAX_STRLEN} .r4)"
      FileWrite $5 "$4$\r$\n"
      IntOp $2 $2 + 1
      Goto loop
    done:
      FileClose $5
      System::Free $1
      System::Free $3
      Goto exit
  error:
    MessageBox MB_OK error
  exit:
    Pop $6
    Pop $4
    Pop $3
    Pop $2
    Pop $1
    Pop $0
    Exch $5
FunctionEnd

######################################################################
Section "English Language File" Language
SetOutPath "$INSTDIR\OpenSong Languages"
SetOverwrite on
File "/oname=English.$$$$$$" "OpenSong Languages\English"
StrCpy $0 "English"
Call ValidateAndRenameFile
SectionEnd

Section "Global Files" Globals
SetOutPath "$INSTDIR\OpenSong Settings"
StrCpy $0 "style.css"
Call ValidateAndRenameFile
File "OpenSong Settings\style.css"

StrCpy $0 "bnames.xml"
Call ValidateAndRenameFile
File "OpenSong Settings\bnames.xml"

StrCpy $0 "Globals"
Call ValidateAndRenameFile
File "OpenSong Settings\Globals"
SectionEnd

######################################################################
Section "Default files for new users" UserDefaults
SetOutPath "$INSTDIR\OpenSong Defaults\Settings"
StrCpy $0 "Globals"
Call ValidateAndRenameFile
File "OpenSong Defaults\Settings\Globals"

StrCpy $0 "MainSettings"
Call ValidateAndRenameFile
File "OpenSong Defaults\Settings\MainSettings"

StrCpy $0 "PresentSettings"
Call ValidateAndRenameFile
File "OpenSong Defaults\Settings\PresentSettings"

StrCpy $0 "PrintSettings"
Call ValidateAndRenameFile
File "OpenSong Defaults\Settings\PrintSettings"
SectionEnd

######################################################################

Section "Sample Songs" Songs
SetOverwrite off
SetOutPath "$INSTDIR\OpenSong Defaults\Songs"
File "OpenSong Defaults\Songs\*"

SectionEnd
######################################################################
Section "Sample Sets" Sets
SetOverwrite off
SetOutPath "$INSTDIR\OpenSong Defaults\Sets"
File "OpenSong Defaults\Sets\*"
SectionEnd
######################################################################
Section "Backgrounds" Backgrounds
SetOverwrite off
SetOutPath "$INSTDIR\OpenSong Defaults\Backgrounds"
File "OpenSong Defaults\Backgrounds\*"
SectionEnd
######################################################################
Section "King James Bible" KJV
SetOutPath "$INSTDIR\OpenSong Scripture"
File "OpenSong Scripture\KJV"
SectionEnd
######################################################################
Section /o "Experimental Version" RB2007
SetOutPath "$INSTDIR"
SetOverwrite IfNewer
File "OpenSong2007.exe"
SectionEnd
######################################################################
Section /o "Desktop Shortcuts" Shortcut
SetOutPath "$DESKTOP"
CreateShortCut "OpenSong.lnk" "$INSTDIR\OpenSong.exe"
${If} ${SectionIsSelected} ${RB2007}
CreateShortCut "OpenSong2007.lnk" "$INSTDIR\OpenSong2007.exe"
${EndIf}
SectionEnd
######################################################################


Section -Icons_Reg
SetOutPath "$INSTDIR"
WriteUninstaller "$INSTDIR\uninstall.exe"

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_WRITE_BEGIN Application
CreateDirectory "$SMPROGRAMS\$SM_Folder"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
${If} ${SectionIsSelected} ${RB2007}
CreateShortCut "$SMPROGRAMS\$SM_Folder\OpenSong2007.lnk" "$INSTDIR\OpenSong2007.exe"
${EndIf}
!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!insertmacro MUI_STARTMENU_WRITE_END
!endif

!ifndef REG_START_MENU
CreateDirectory "$SMPROGRAMS\OpenSong"
CreateShortCut "$SMPROGRAMS\OpenSong\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\OpenSong\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!endif

WriteRegStr ${REG_ROOT} "${REG_APP_PATH}" "" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayName" "${APP_NAME}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "UninstallString" "$INSTDIR\uninstall.exe"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayIcon" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayVersion" "${VERSION}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "Publisher" "${COMP_NAME}"

!ifdef WEB_SITE
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "URLInfoAbout" "${WEB_SITE}"
!endif
SectionEnd

######################################################################

Section Uninstall
SetDetailsView show
SetDetailsPrint listonly
${INSTALL_TYPE}
Delete "$INSTDIR\${MAIN_APP_EXE}"
Delete "$INSTDIR\uninstall.exe"
!ifdef WEB_SITE
Delete "$INSTDIR\${APP_NAME} website.url"
!endif
MessageBox MB_YESNO|MB_DEFBUTTON2 "Delete application data files?" IDNO +2
RmDir /r $INSTDIR

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_GETFOLDER "Application" $SM_Folder
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk"
!endif
RmDir "$SMPROGRAMS\$SM_Folder"
!endif

!ifndef REG_START_MENU
Delete "$SMPROGRAMS\OpenSong\${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\OpenSong\${APP_NAME} Website.lnk"
!endif
RmDir "$SMPROGRAMS\OpenSong"
!endif

DeleteRegKey ${REG_ROOT} "${REG_APP_PATH}"
DeleteRegKey ${REG_ROOT} "${UNINSTALL_PATH}"
SectionEnd

######################################################################
Function componentInitDefaults
${If} ${FileExists} "$INSTDIR\OpenSong.exe"
	${GetFileVersion} "$INSTDIR\OpenSong.exe" $0
	${VersionConvert} $0 "-" $1
	${VersionCompare} "1.0.0.16" $1 $2
	${If} $2 < 2 # Version is older than BL16
		!insertmacro SelectSection ${Language}
		!insertmacro SetSectionFlag ${Language} ${SF_RO}
	${Else}
		!insertmacro UnselectSection ${UserDefaults}
		!insertmacro UnselectSection ${Globals}
		!insertmacro UnselectSection ${Language}
	${EndIf}
	!insertmacro UnselectSection ${Songs}
	!insertmacro UnselectSection ${Sets}
	!insertmacro UnselectSection ${Backgrounds}
	!insertmacro UnselectSection ${KJV}
${Else}
!insertmacro SelectSection ${Language}
!insertmacro SetSectionFlag ${Language} ${SF_RO}
!insertmacro SelectSection ${UserDefaults}
!insertmacro SetSectionFlag ${UserDefaults} ${SF_RO}
!insertmacro SelectSection ${Globals}
!insertmacro SetSectionFlag ${Globals} ${SF_RO}
!insertmacro SelectSection ${KJV}
!insertmacro SetSectionFlag ${KJV} ${SF_RO}
${EndIf}
FunctionEnd
#vim:ts=2:nohls:noincsearch
