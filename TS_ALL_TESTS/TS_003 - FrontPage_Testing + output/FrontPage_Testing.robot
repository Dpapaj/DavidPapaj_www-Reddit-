*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.reddit.com/

*** Test Cases ***
TC_003-001: Get mobile app
    [Documentation]  Tests the functionality of Get mobile app button
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[normalize-space()='Get App']
    Click Element  xpath://button[normalize-space()='Get App']
    Wait Until Page Contains Element    xpath://h3[normalize-space()='Get the Reddit app']
    Wait Until Page Contains Element    xpath://span[normalize-space()='Scan this QR code to download the app now']
    Wait Until Page Contains Element    xpath://div[contains(@class,'text-center p-md')]
    Capture Page Screenshot
    Close Browser

TC_003-002: Search test
    [Documentation]  Tests the search functionality of Reddit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://input[@id='header-search-bar'] 
    Input Text    xpath://input[@id='header-search-bar']    dogs
    Press Key    xpath://input[@name='q']    \\13
    Wait Until Page Contains    dogs
    Capture Page Screenshot
    Close Browser

TC_003-003: Policy test
    [Documentation]  Tests the policy functionality of Reddit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://a[normalize-space()='User Agreement']
    Click Element    xpath://a[normalize-space()='User Agreement']
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Reddit User Agreement']
    Location Should Be  https://www.redditinc.com/policies/user-agreement
    Capture Page Screenshot
    Close Browser

TC_003-004: Policy test
    [Documentation]  Tests the policy functionality of Reddit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://a[normalize-space()='Content policy']
    Click Element    xpath://a[normalize-space()='Content policy']
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Reddit Content Policy']
    Location Should Be  https://www.redditinc.com/policies/content-policy
    Capture Page Screenshot
    Close Browser

TC_003-005: Popular comunities test - askreddit
    [Documentation]  Tests the functionality of Popular comunities on Reddit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://a[normalize-space()='AskReddit']
    Click Element    xpath://a[normalize-space()='AskReddit']
    Wait Until Page Contains Element    xpath://h2[@class='_33aRtz9JtW0dIrBNKFAl0y']
    Location Should Be  https://www.reddit.com/r/AskReddit/
    Capture Page Screenshot
    Close Browser

TC_003-006: Popular comunities test - NoStupidQuestions
    [Documentation]  Tests the functionality of Popular comunities on Reddit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://a[normalize-space()='NoStupidQuestions']
    Click Element    xpath://a[normalize-space()='NoStupidQuestions']
    Wait Until Page Contains Element    xpath://h2[@class='_33aRtz9JtW0dIrBNKFAl0y']
    Location Should Be  https://www.reddit.com/r/NoStupidQuestions/
    Capture Page Screenshot
    Close Browser

TC_003-007: Popular comunities test - OutOfTheLoop
    [Documentation]  Tests the functionality of see more button Popular comunities on Reddit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@role='button'][normalize-space()='See more']
    Click Element    xpath://button[@role='button'][normalize-space()='See more']
    Wait Until Page Contains Element    xpath://a[normalize-space()='OutOfTheLoop']
    Click Element    xpath://a[normalize-space()='OutOfTheLoop']
    Location Should Be  https://www.reddit.com/r/OutOfTheLoop/
    Wait Until Page Contains Element    xpath://h1[normalize-space()='OutOfTheLoop']
    Capture Page Screenshot
    Close Browser

TC_003-008: ClickRedditLogoTest
   [Documentation]  Tests clicking on the Reddit logo at the top left
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://a[normalize-space()='NoStupidQuestions']
    Click Element    xpath://a[normalize-space()='NoStupidQuestions']
    Wait Until Page Contains Element    xpath://h2[@class='_33aRtz9JtW0dIrBNKFAl0y']
    Location Should Be  https://www.reddit.com/r/NoStupidQuestions/
    Wait Until Page Contains Element    xpath://a[@aria-label='Home']
    Click Element    xpath://a[@aria-label='Home']
    Wait Until Page Contains Element    xpath://a[@aria-label='Home']
    Click Element    xpath://a[@aria-label='Home']
    Location Should Be   https://www.reddit.com/
    Capture Page Screenshot
    Close Browser

