*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.reddit.com/

*** Test Cases ***
TC_001 - Test the login page
    [Documentation]  Tests the login page functionality of the site
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://a[normalize-space()='Log In']
    Click Element  xpath://a[normalize-space()='Log In']
    Select Frame    xpath://iframe[@class='_25r3t_lrPF3M6zD2YkWvZU']
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Log In']
    Wait Until Page Contains Element    xpath://input[@id='loginUsername']
    Wait Until Page Contains Element    xpath://input[@id='loginPassword']
    Unselect Frame
    Capture Page Screenshot
    Close Browser

TC_001-002: Forgot username
    [Documentation]  Tests the Forgot username functionality of the site
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://a[normalize-space()='Log In']
    Click Element  xpath://a[normalize-space()='Log In']
    Select Frame    xpath://iframe[@class='_25r3t_lrPF3M6zD2YkWvZU']
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Log In']
    Wait Until Page Contains Element    xpath://input[@id='loginUsername']
    Wait Until Page Contains Element    xpath://input[@id='loginPassword']
    Wait Until Page Contains Element    xpath://a[normalize-space()='username']
    Click Element  xpath://a[normalize-space()='username']
    Unselect Frame
    Select Frame    xpath://iframe[@class='_25r3t_lrPF3M6zD2YkWvZU']
    Wait Until Page Contains Element    xpath://input[@id='email']
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Recover your username']
    Unselect Frame
    Capture Page Screenshot
    Close Browser

TC_001-003: Forgot password
    [Documentation]  Tests the Forgot password functionality of the site
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://a[normalize-space()='Log In']
    Click Element  xpath://a[normalize-space()='Log In']
    Select Frame    xpath://iframe[@class='_25r3t_lrPF3M6zD2YkWvZU']
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Log In']
    Wait Until Page Contains Element    xpath://input[@id='loginUsername']
    Wait Until Page Contains Element    xpath://input[@id='loginPassword']
    Wait Until Page Contains Element    xpath://a[contains(@class,'BottomLink m-secondary-text lower')][normalize-space()='password']
    Click Element  xpath://a[contains(@class,'BottomLink m-secondary-text lower')][normalize-space()='password']
    Unselect Frame
    Select Frame    xpath://iframe[@class='_25r3t_lrPF3M6zD2YkWvZU']
    Wait Until Page Contains Element    xpath://input[@id='username']
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Reset your password']
    Unselect Frame
    Capture Page Screenshot
    Close Browser

TC_001-004: Sign up
    [Documentation]  Tests the Sign up page functionality of the site
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://a[normalize-space()='Log In']
    Click Element  xpath://a[normalize-space()='Log In']
    Select Frame    xpath://iframe[@class='_25r3t_lrPF3M6zD2YkWvZU']
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Log In']
    Wait Until Page Contains Element    xpath://input[@id='loginUsername']
    Wait Until Page Contains Element    xpath://input[@id='loginPassword']
    Wait Until Page Contains Element    xpath://a[contains(@class,'BottomLink BottomLink__switchLink m-secondary-text')]
    Click Element  xpath://a[contains(@class,'BottomLink BottomLink__switchLink m-secondary-text')]
    Unselect Frame
    Select Frame    xpath://iframe[@class='_25r3t_lrPF3M6zD2YkWvZU']
    Wait Until Page Contains Element    xpath://input[@id='regEmail']
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Sign Up']
    Unselect Frame
    Capture Page Screenshot
    Close Browser

TC_001-005: Sign up button
    [Documentation]  Tests the  Sign up button functionality of the site
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[normalize-space()='Join Reddit']
    Click Element    xpath://button[normalize-space()='Join Reddit']
    Select Frame    xpath://iframe[contains(@class,'_25r3t_lrPF3M6zD2YkWvZU')]
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Sign Up']
    Wait Until Page Contains Element    xpath://input[@id='regEmail']
    Unselect Frame
    Capture Page Screenshot
    Close Browser

TC_001-005: Login
    [Documentation]  Tests the login page functionality of the site, Login
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://a[normalize-space()='Log In']
    Click Element  xpath://a[normalize-space()='Log In']
    Select Frame    xpath://iframe[@class='_25r3t_lrPF3M6zD2YkWvZU']
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Log In']
    Wait Until Page Contains Element    xpath://input[@id='loginUsername']
    Wait Until Page Contains Element    xpath://input[@id='loginPassword']
    Input Text  xpath://input[@id='loginUsername']  DisciplineTotal7010
    Input Text  xpath://input[@id='loginPassword']  147test147
    Click Element  xpath://button[normalize-space()='Log In']
    Unselect Frame
    Wait Until Page Contains Element    xpath://div[contains(@class,'efdkOLo3oigH_95whTYCp _1zyV-XmoYeSNGWjfZiXbPc')]//img[contains(@alt,'User avatar')]
    Wait Until Page Contains Element    xpath://div[@class='_1zPvgKHteTOub9dKkvrOl4']
    Capture Page Screenshot
    Close Browser



