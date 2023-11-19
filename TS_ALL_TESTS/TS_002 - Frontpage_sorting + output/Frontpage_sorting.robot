*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.reddit.com/

*** Test Cases ***
TC_002-001: Country Picker Test
    [Documentation]  Tests the functionality of the country picker button
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='CountrySort--CountrySortPicker']
    Click Element  xpath://button[@id='CountrySort--CountrySortPicker']
    Execute JavaScript  document.evaluate("//span[normalize-space()='United States']", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()
    Wait Until Page Contains Element    xpath://button[@id='CountrySort--CountrySortPicker']
    Element Text Should Be  xpath://button[@id='CountrySort--CountrySortPicker']  United States
    Capture Page Screenshot
    Close Browser

TC_002-002: Top Sort Test
    [Documentation]  Tests the functionality of the top sort button
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Click Element  xpath://div[contains(@class,'_2pUO1Sfe7WlIHvq6goN3Pz')]//a[3]
    Wait Until Page Contains Element    xpath://h3[normalize-space()='Best. Country. In the world.']
    Location Should Be    https://www.reddit.com/top/
    Capture Page Screenshot
    Close Browser

TC-002-003: Top Sort All test
    [Documentation]  Tests the functionality of the top sort button
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Click Element  xpath://div[contains(@class,'_2pUO1Sfe7WlIHvq6goN3Pz')]//a[3]
    Click Element  xpath://button[@id='TimeSort--SortPicker']
    Execute JavaScript  document.evaluate("//span[normalize-space()='All Time']", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()
    Wait Until Page Contains Element    xpath://h3[contains(text(),'I’ve found a few funny memories during lockdown. T')]
    Location Should Be    https://www.reddit.com/top/?t=all
    Capture Page Screenshot
    Close Browser

TC-002-004: New Sort test
    [Documentation]  Tests the functionality of the new sort button
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Click Element  xpath://div[contains(@class,'_2pUO1Sfe7WlIHvq6goN3Pz')]//a[2]
    Location Should Be    https://www.reddit.com/new/
    Capture Page Screenshot
    Close Browser

TC-002-005: Hot Sort test
    [Documentation]  Tests the functionality of the hot sort button
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Click Element  xpath://div[contains(@class,'_2pUO1Sfe7WlIHvq6goN3Pz')]//a[2]
    Location Should Be    https://www.reddit.com/new/
    Click Element    xpath://div[contains(@class,'_2pUO1Sfe7WlIHvq6goN3Pz')]//a[1]
    Location Should Be    https://www.reddit.com/hot/
    Wait Until Page Contains Element    xpath://h3[contains(text(),'Našli jsme v lese, je možné, že to je z uranových ')]
    Capture Page Screenshot
    Close Browser

TC-002-006: Rising Sort test
    [Documentation]  Tests the functionality of the rising sort button
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='ListingSort--Overflow']
    Click Element  xpath://button[@id='ListingSort--Overflow']
    Click Element  xpath://div[contains(@role,'menu')]//span[contains(@class,'_2-cXnP74241WI7fpcpfPmg')][normalize-space()='Rising']
    Location Should Be    https://www.reddit.com/rising/
    Wait Until Page Contains Element    xpath://h3[normalize-space()='Hanging Out With Me, Myself, and I']
    Capture Page Screenshot
    Close Browser

TC-002-007: Classic layout test
    [Documentation]  Tests the functionality of the Classic layout button
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='LayoutSwitch--picker']
    Click Element  xpath://button[@id='LayoutSwitch--picker']
    Wait Until Page Contains Element    xpath://body/div/div[contains(@role,'menu')]/button[2]
    Click Element  xpath://body/div/div[contains(@role,'menu')]/button[2]
    Wait Until Page Contains Element  xpath://div[@class='rpBJOHq2PR60pnwJlUyP0']
    Capture Page Screenshot
    Close Browser

TC-002-007: Comapact layout test
    [Documentation]  Tests the functionality of the Compact layout button
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='LayoutSwitch--picker']
    Click Element  xpath://button[@id='LayoutSwitch--picker']
    Wait Until Page Contains Element    xpath://body/div/div[contains(@role,'menu')]/button[3]
    Click Element  xpath://body/div/div[contains(@role,'menu')]/button[3]
    Wait Until Page Contains Element  xpath://div[contains(@class,'rpBJOHq2PR60pnwJlUyP0')]
    Capture Page Screenshot
    Close Browser

TC-002-009: Card layout test
    [Documentation]  Tests the functionality of the card layout button
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='LayoutSwitch--picker']
    Click Element  xpath://button[@id='LayoutSwitch--picker']
    Wait Until Page Contains Element    xpath://body/div/div[contains(@role,'menu')]/button[3]
    Click Element  xpath://body/div/div[contains(@role,'menu')]/button[3]
    Wait Until Page Contains Element  xpath://div[contains(@class,'rpBJOHq2PR60pnwJlUyP0')]
    Wait Until Page Contains Element    xpath://button[@id='LayoutSwitch--picker']//i[contains(@class,'icon icon-caret_down _1oxgVV3q47KbjEKqP5CHuM')]
    Click Element  xpath://button[@id='LayoutSwitch--picker']//i[contains(@class,'icon icon-caret_down _1oxgVV3q47KbjEKqP5CHuM')]
    Wait Until Page Contains Element    xpath://body/div/div[contains(@role,'menu')]/button[1]
    Click Element  xpath://body/div/div[contains(@role,'menu')]/button[1]
    Wait Until Page Contains Element  xpath://div[contains(@class,'rpBJOHq2PR60pnwJlUyP0')]
    Capture Page Screenshot
    Close Browser
