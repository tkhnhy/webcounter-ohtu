*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When entered specific number, the counter changes to that
   Go To  ${HOME_URL}
   Click Button  Nollaa
   Page Should Contain  nappia painettu 0 kertaa
   Input Text  number  15
   Click Button  Aseta
   Page Should Contain  nappia painettu 0 kertaa