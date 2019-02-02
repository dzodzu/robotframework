*** Variables ***
${informacja}   Szkoda :<

*** Test Cases ***

Moj Pierwszy Przypadek Testowy
   Log To Console   Dokad noca tupta jez?

Moj Drugi Przypadek Testowy
   Moje Slowo Kluczowe   Nie wiem :/

Moj Trzeci Przypadek Testowy
   Moje Drugie Slowo Kluczowe

*** Keywords ***

Moje Slowo Kluczowe
   [Arguments]   ${wiadomosc}
   Log To Console   ${wiadomosc}

Moje Drugie Slowo Kluczowe
   Log To Console   ${informacja}
