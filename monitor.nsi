# name installation
!define file_version "22.12.13.1"
!define product_version "4.1.2.1"

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

# default section start; every NSIS script has at least one section.
Section
  SetOutPath $TEMP\whelmon
  File *.exe

  ExecWait '"$OUTDIR\whelmon\heluinst.exe"'

# default section end
SectionEnd
