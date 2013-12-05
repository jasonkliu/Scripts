ECHO OFF 
:: CMD will no longer show us what command it's executing (cleaner)
ECHO Check if there is an Internet connection quickly.

IPCONFIG /ALL 
PAUSE 

PING www.google.com 
ECHO All done pinging Google. 
PAUSE 
:: Program will exit and the command window will close once this line finishes.
