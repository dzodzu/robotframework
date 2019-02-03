*** Settings ***
Library   SSHLibrary
Library   Selenium2Library

*** Variables ***
${informacja}   Szkoda :<
${REMOTE_HOST}   localhost
${REMOTE_USERNAME}   tester
${REMOTE_PASSWORD}   tester
${WP_USERNAME}   testerwsb_t1
${WP_PASSWORD}   adam1234
${USERNAME_FIELD}   //*[@id="login"]
${PASSWORD_FIELD}   //*[@id="password"]
${LOGIN_BUTTON}   //*[@id="btnSubmit"]

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

Test Logwania Na WP Z Wykorzystaniem Biblioteki Selenium2
   Otwieram Przegladarke Firefox I Przechodze Do Strony Logowania
   Wprowadzam Nazwe Uzytkownika
   Wprowadzam Haslo Uzytkownika
   Sprawdzam Czy Uzytkownik Jest Zalogowany
   Wylaczam Przegladarke

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

Otwieram Przegladarke Firefox I Przechodze Do Strony Logowania
   Open Browser    https://profil.wp.pl/login.html?zaloguj=poczta    ff

Wprowadzam Nazwe Uzytkownika
   Input Text   ${USERNAME_FIELD}   ${WP_USERNAME}

Wprowadzam Haslo Uzytkownika
   Input Text   ${PASSWORD_FIELD}   ${WP_PASSWORD}
   
Sprawdzam Czy Uzytkownik Jest Zalogowany
   Click Button   ${LOGIN_BUTTON}
   Page Should Contain   Odebrane

Wylaczam Przegladarke
   Close All Browsers
