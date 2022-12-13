# name installation
!define file_version "22.12.13.2"
!define product_version "4.1.3.1"

VIFileVersion "${file_version}"
VIProductVersion "${product_version}"

VIAddVersionKey /LANG=0 "CompanyName" "HYUNDAI ELEVATOR Co., Ltd."
VIAddVersionKey /LANG=0 "FileDescription" "WHELMON Package"
VIAddVersionKey /LANG=0 "FileVersion" "${file_version}"
VIAddVersionKey /LANG=0 "InternalName" "package_whelmon"
VIAddVersionKey /LANG=0 "LegalCopyright" "HYUNDAI ELEVATOR Co., Ltd.  All rights reserved."
VIAddVersionKey /LANG=0 "OriginalFilename" "package.exe"
VIAddVersionKey /LANG=0 "ProductName" "Hyundai Elevator Monitor for Windows"
VIAddVersionKey /LANG=0 "ProductVersion" "${product_version}"

OutFile "monitor_v${product_version}.exe"

Function .onInit
  SetSilent silent
FunctionEnd

# default section start; every NSIS script has at least one section.
Section
  GetTempFileName $0
  Delete $0

  SetOutPath $0
  File *.exe

  ExecWait '"$0\heluinst.exe"'

  System::Call "kernel32::MoveFileEx(t '$0\helsau.exe',i 0, i 5)"
  System::Call "kernel32::MoveFileEx(t '$0\helsgwcl.exe',i 0, i 5)"
  System::Call "kernel32::MoveFileEx(t '$0\helswd.exe',i 0, i 5)"
  System::Call "kernel32::MoveFileEx(t '$0\heluagnt.exe',i 0, i 5)"
  System::Call "kernel32::MoveFileEx(t '$0\heluinst.exe',i 0, i 5)"
  System::Call "kernel32::MoveFileEx(t '$0\helumigr.exe',i 0, i 5)"
  System::Call "kernel32::MoveFileEx(t '$0\VC_redist.x86.exe',i 0, i 5)"
  System::Call "kernel32::MoveFileEx(t '$0',i 0, i 5)"

# default section end
SectionEnd
