*** Settings ***
Documentation    Suite description
Library          SeleniumLibrary

*** Test Cases ***
Bij 45000 kilometer hoeft er geen servicebeurt uitgevoerd te worden
    Open Browser  https://robfl4.github.io/ITestMyCase/executeServicebeurt.html  Chrome
    Maximize Browser Window
    Input Text  id:kilometerstand  45000
    Click Button  id:check-button
    Element Text Should Be  id:message  De auto hoeft niet naar de garage voor een servicebeurt of vul alsnog de juiste kilometerstand in
    Close Browser

Bij 1500 kilometer hoeft er ook geen servicebeurt uitgevoerd te worden
    Open Browser  https://robfl4.github.io/ITestMyCase/executeServicebeurt.html  Chrome
    Maximize Browser Window
    Input Text  id:kilometerstand  1500
    Click Button  id:check-button
    Element Text Should Be  id:message  De auto hoeft niet naar de garage voor een servicebeurt of vul alsnog de juiste kilometerstand in.
    Close Browser

Bij 30000 kilometer kan er wel een servicebeurt uitgevoerd worden
    Open Browser  https://robfl4.github.io/ITestMyCase/executeServicebeurt.html  Chrome
    Maximize Browser Window
    Input Text  id:kilometerstand  60000
    Click Button  id:check-button
    Element Text Should Be  id:message  De afspraak wordt ingepland!
    Close Browser

Bij 120000 kilometer kan er ook een servicebeurt uitgevoerd worden
    Open Browser  https://robfl4.github.io/ITestMyCase/executeServicebeurt.html  Chrome
    Maximize Browser Window
    Input Text  id:kilometerstand  120000
    Click Button  id:check-button
    Element Text Should Be  id:message  De afspraak wordt ingepland!
    Close Browser