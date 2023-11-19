*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.reddit.com/

*** Test Cases ***
TC_005-001: Topics_Test - Gaming - Minecraft
   [Documentation]  Tests clicking on the Dropdown menu and functionality -Minecraft
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://div[contains(@role,'menu')]//button[1]
    Click Element    xpath://div[contains(@role,'menu')]//button[1]
    Wait Until Page Contains Element    xpath://span[normalize-space()='Minecraft']
    Click Element    xpath://span[normalize-space()='Minecraft']
    Wait Until Page Contains Element    xpath://div[@class='_3xUDHcNgeNVz7fD8H1kUy7']
    Location Should Be    https://www.reddit.com/t/minecraft/
    Click Element    xpath://h3[contains(text(),'[OC] Visualization of livestock being slaughtered ')]
    Wait Until Page Contains Element    xpath://faceplate-tracker[contains(@class,'visible')]//a[contains(@class,'a')][normalize-space()='datekram']
    Location Should Be    https://www.reddit.com/r/dataisbeautiful/comments/124keay/oc_visualization_of_livestock_being_slaughtered/
    Capture Page Screenshot
    Close Browser

TC_005-002: Topics_Test - Sport- nfl
   [Documentation]  Tests clicking on the Dropdown menu and functionality -nfl
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://div[contains(@role,'menu')]//button[2]
    Click Element    xpath://div[contains(@role,'menu')]//button[2]
    Wait Until Page Contains Element    xpath://a[contains(@href,'/t/nfl/')]
    Click Element    xpath://a[contains(@href,'/t/nfl/')]
    Wait Until Page Contains Element    xpath://div[@class='_3xUDHcNgeNVz7fD8H1kUy7']
    Location Should Be    https://www.reddit.com/t/nfl/
    Wait Until Page Contains Element    xpath://div[normalize-space()='Communities']
    Click Element    xpath://div[normalize-space()='Communities']
    Wait Until Page Contains Element    xpath://div[normalize-space()='r/nfl']
    Click Element    xpath://div[normalize-space()='r/nfl']
    Location Should Be    https://www.reddit.com/r/nfl/
    Wait Until Page Contains Element    xpath://h2[@class='_33aRtz9JtW0dIrBNKFAl0y']
    Capture Page Screenshot
    Close Browser

TC_005-003: Topics_Test - Business, Economics, and Finance - GameStop
   [Documentation]  Tests clicking on the Dropdown menu and functionality -Moderator Code of Conduct
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://div[contains(@role,'menu')]//button[3]
    Click Element    xpath://div[contains(@role,'menu')]//button[3]
    Wait Until Page Contains Element    xpath://span[normalize-space()='GameStop']
    Click Element    xpath://span[normalize-space()='GameStop']
    Location Should Be    https://www.reddit.com/t/gamestop/
    Wait Until Page Contains Element    xpath://div[normalize-space()='Related Topics']
    Click Element    xpath://div[normalize-space()='Related Topics']
    Wait Until Page Contains Element    xpath://span[contains(text(),'GameStop NFT marketplace')]
    Wait Until Page Contains Element    xpath://div[contains(@class,'_34EJPxBGGouPQbmc0Z-LmB')][normalize-space()='r/GameStop']
    Capture Page Screenshot
    Close Browser

TC_005-004: Topics_Test - Crypto - bitcoin
   [Documentation]  Tests clicking on the Dropdown menu and functionality -bitcoin
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://div[contains(@role,'menu')]//button[4]
    Click Element    xpath://div[contains(@role,'menu')]//button[4]
    Wait Until Page Contains Element    xpath://span[contains(@class,'yloKeyD8bfd8UJ_Gi9rsR')][normalize-space()='Bitcoin']
    Click Element    xpath://span[contains(@class,'yloKeyD8bfd8UJ_Gi9rsR')][normalize-space()='Bitcoin']
    Location Should Be    https://www.reddit.com/t/bitcoin/
    Wait Until Page Contains Element    xpath://h3[contains(text(),'White House proposes 30% tax on electricity used f')]
    Capture Page Screenshot
    Close Browser

TC_005-005: Topics_Test - Television - The Bachelor
   [Documentation]  Tests clicking on the Dropdown menu and functionality -The Bachelor
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://div[contains(@role,'menu')]//button[5]
    Click Element    xpath://div[contains(@role,'menu')]//button[5]
    Wait Until Page Contains Element    xpath://a[contains(@href,'/t/the_bachelor/')]
    Click Element    xpath://a[contains(@href,'/t/the_bachelor/')]
    Location Should Be    https://www.reddit.com/t/the_bachelor/
    Wait Until Page Contains Element    xpath://div[contains(@class,'_3xUDHcNgeNVz7fD8H1kUy7')]
    Wait Until Page Contains Element    xpath://div[normalize-space()='Communities']
    Click Element    xpath://div[normalize-space()='Communities']
    Wait Until Page Contains Element    xpath://a[contains(@href,'/r/thebachelor/')][normalize-space()='Visit']
    Click Element    xpath://a[contains(@href,'/r/thebachelor/')][normalize-space()='Visit']
    Location Should Be    https://www.reddit.com/r/thebachelor/
    Wait Until Page Contains Element    xpath://h1[normalize-space()='The Bachelor']
    Capture Page Screenshot
    Close Browser

TC_005-006: Topics_Test - Celebrity - Henry Cavill
   [Documentation]  Tests clicking on the Dropdown menu and functionality -Henry Cavill
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://div[contains(@role,'menu')]//button[6]
    Click Element    xpath://div[contains(@role,'menu')]//button[6]
    Wait Until Page Contains Element    xpath://span[normalize-space()='Henry Cavill']
    Click Element    xpath://span[normalize-space()='Henry Cavill']
    Location Should Be    https://www.reddit.com/t/henry_cavill/
    Wait Until Page Contains Element    xpath://div[contains(@class,'_3xUDHcNgeNVz7fD8H1kUy7')]
    Wait Until Page Contains Element    xpath://div[normalize-space()='Communities']
    Click Element    xpath://div[normalize-space()='Communities']
    Wait Until Page Contains Element    xpath://a[contains(@href,'/r/gayforcavill/')][normalize-space()='Visit']
    Click Element    xpath://a[contains(@href,'/r/gayforcavill/')][normalize-space()='Visit']
    Location Should Be    https://www.reddit.com/r/gayforcavill/
    Wait Until Page Contains Element    xpath://h2[@class='_33aRtz9JtW0dIrBNKFAl0y']
    Capture Page Screenshot
    Close Browser

TC_005-008: Topics_Test - More Topics - Animals and Pets
   [Documentation]  Tests clicking on the Dropdown menu and functionality -Animals and Pets
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://div[contains(@role,'menu')]//button[7]
    Click Element    xpath://div[contains(@role,'menu')]//button[7]
    Wait Until Page Contains Element    xpath://span[normalize-space()='Animals and Pets']
    Click Element    xpath://span[normalize-space()='Animals and Pets']
    Location Should Be    https://www.reddit.com/t/animals_and_pets/
    Wait Until Page Contains Element    xpath://div[@class='_3xUDHcNgeNVz7fD8H1kUy7']
    Wait Until Page Contains Element    xpath://div[normalize-space()='Communities']
    Click Element    xpath://div[normalize-space()='Communities']
    Wait Until Page Contains Element    xpath://a[contains(@href,'/r/Pets/')][normalize-space()='Visit']
    Click Element    xpath://a[contains(@href,'/r/Pets/')][normalize-space()='Visit']
    Location Should Be    https://www.reddit.com/r/Pets/
    Wait Until Page Contains Element    xpath://h2[@class='_33aRtz9JtW0dIrBNKFAl0y']
    Capture Page Screenshot
    Close Browser

TC_005-008: Topics_Test - Popular button
   [Documentation]  Tests clicking on the Dropdown menu and functionality - Popular button
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://div[contains(@role,'menu')]//button[7]
    Click Element    xpath://div[contains(@role,'menu')]//button[7]
    Wait Until Page Contains Element    xpath://span[normalize-space()='Animals and Pets']
    Click Element    xpath://span[normalize-space()='Animals and Pets']
    Location Should Be    https://www.reddit.com/t/animals_and_pets/
    Wait Until Page Contains Element    xpath://div[@class='_3xUDHcNgeNVz7fD8H1kUy7']
    Wait Until Page Contains Element    xpath://div[normalize-space()='Communities']
    Click Element    xpath://div[normalize-space()='Communities']
    Wait Until Page Contains Element    xpath://a[contains(@href,'/r/Pets/')][normalize-space()='Visit']
    Click Element    xpath://a[contains(@href,'/r/Pets/')][normalize-space()='Visit']
    Location Should Be    https://www.reddit.com/r/Pets/
    Wait Until Page Contains Element    xpath://h2[@class='_33aRtz9JtW0dIrBNKFAl0y']
    Wait Until Page Contains Element    xpath://a[@id='focus-Popular']
    Click Element    xpath://a[@id='focus-Popular']
    Location Should Be    https://www.reddit.com/r/popular/
    Wait Until Page Contains Element    xpath://div[@class='_3ioMyxiI-wWgZFqBDVBh6r otZ2uDhYTr1YmgF32ArRm']
    Capture Page Screenshot
    Close Browser
