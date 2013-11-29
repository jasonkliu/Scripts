REM      This command would work if you don't have UAC (Vista or higher)
:: runas /user:administrator "mmc secpol.msc"

REM      Shorter Windows 8 version! (Right click and run as administrator)
mmc secpol.msc

REM      I implemented some policies from this website to prevent Cryptolocker
:: http://www.bleepingcomputer.com/virus-removal/cryptolocker-ransomware-information