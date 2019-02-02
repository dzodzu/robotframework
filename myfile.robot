*** Settings ***
Library   SSHLibrary

*** Variables ***
${informacja}   Szkoda :<
${REMOTE_HOST}   localhost
${REMOTE_USERNAME}   tester
${REMOTE_PASSWORD}   tester

*** Test Cases ***

Moj Pierwszy Przypadek Testowy
   Log To Console   Dokad noca tupta jez?

Moj Drugi Przypadek Testowy
   Moje Slowo Kluczowe   Nie wiem :/

Moj Trzeci Przypadek Testowy
   Moje Drugie Slowo Kluczowe

Super Nazwa Przypadku Testowego Lepszej Nie Ma
   Otwieram Polaczenie Ze Zdalnym Komputerem Przez SSH
   Podaje Dane Logowania
   Wykonuje Polecenie I Sprawdzam
   Zamykam Wszystko

*** Keywords ***

Moje Slowo Kluczowe
   [Arguments]   ${wiadomosc}
   Log To Console   ${wiadomosc}

Moje Drugie Slowo Kluczowe
   Log To Console   ${informacja}

Otwieram Polaczenie Ze Zdalnym Komputerem Przez SSH
   Open Connection   ${REMOTE_HOST}

Podaje Dane Logowania
   Login   ${REMOTE_USERNAME}   ${REMOTE_PASSWORD}

Wykonuje Polecenie I Sprawdzam
   ${result}=   Execute Command   uname -a
   Should Contain    ${result}   tester-m

Zamykam Wszystko
   Close All Connections
