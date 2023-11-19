*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.reddit.com/

*** Test Cases ***
TC_007-001: After_Login_Test - Create a post
   [Documentation]  Tests creating a post functionality  after login 
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
    Wait Until Page Contains Element    xpath://a[normalize-space()='Create Post']
    Click Element  xpath://a[normalize-space()='Create Post']
    Wait Until Page Contains Element    xpath://div[@class='_3M6BmdyQcCEQZu-MylN14']
    Input Text  xpath://textarea[@placeholder='Title']   test
    Input Text  xpath://div[@role='textbox']    1test1
    Wait Until Page Contains    test
    Wait Until Page Contains    test1
    Capture Page Screenshot
    Close Browser

TC_007-002: After_Login_Test - Notifications
   [Documentation]  Tests  Notifications functionality  after login 
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
    Wait Until Page Contains Element    xpath://i[@class='_3uVYL9qgX3QSEa_F4F-DPv icon icon-notification']
    Click Element  xpath://i[@class='_3uVYL9qgX3QSEa_F4F-DPv icon icon-notification'] 
    Wait Until Page Contains Element    xpath://span[@class='wdFbe8PT7DInxaiHo2Me1']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://i[@class='_3pDOQfbIbQuT4PBwPGp85E icon icon-settings']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Click Element  xpath://i[@class='_3pDOQfbIbQuT4PBwPGp85E icon icon-settings']
    Location Should Be    https://www.reddit.com/settings/notifications
    Wait Until Page Contains Element    xpath://h3[normalize-space()='User settings']
    Capture Page Screenshot
    Close Browser

TC_007-003: After_Login_Test - Profile
   [Documentation]  Tests   Profile functionality  after login 
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
    Wait Until Page Contains Element    xpath://button[@id='USER_DROPDOWN_ID']
    Click Element  xpath://button[@id='USER_DROPDOWN_ID']
    Wait Until Page Contains Element    xpath://div[@class='_3SDj_IT6ZaqCbKfC4eTjb2']//a[1]
    Click Element   xpath://div[@class='_3SDj_IT6ZaqCbKfC4eTjb2']//a[1]
    Location Should Be    https://www.reddit.com/user/DisciplineTotal7010
    Wait Until Page Contains Element    xpath://h1[@class='_3LM4tRaExed4x1wBfK1pmg']
    Wait Until Page Contains Element    xpath://a[normalize-space()='Posts']
    Click Element  xpath://a[normalize-space()='Posts']
    Wait Until Page Contains Element    xpath://div[@class='_2nAClDbEIBvjhmrBuWTQ4V']
    Capture Page Screenshot
    Close Browser

TC_007-004: After_Login_Test - User Settings
   [Documentation]  Tests  User Settings functionality  after login
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
    Wait Until Page Contains Element    xpath://button[@id='USER_DROPDOWN_ID']
    Click Element  xpath://button[@id='USER_DROPDOWN_ID']
    Wait Until Page Contains Element    xpath://span[normalize-space()='User Settings']
    Click Element   xpath://span[normalize-space()='User Settings']
    Location Should Be    https://www.reddit.com/settings
    Wait Until Page Contains Element    xpath://h2[normalize-space()='Account settings']
    Wait Until Page Contains Element    xpath://a[normalize-space()='Profile']
    Click Element  xpath://a[normalize-space()='Profile']
    Wait Until Page Contains Element    xpath://h2[normalize-space()='Customize profile']
    Location Should Be    https://www.reddit.com/settings/profile
    Capture Page Screenshot
    Close Browser

TC_007-005: After_Login_Test - DarkMode
   [Documentation]  Tests  DarkMode functionality after login
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
    Wait Until Page Contains Element    xpath://button[@id='USER_DROPDOWN_ID']
    Click Element  xpath://button[@id='USER_DROPDOWN_ID']
    Wait Until Page Contains Element    xpath://span[normalize-space()='Dark Mode']
    Click Element   xpath://span[normalize-space()='Dark Mode']
    Wait Until Element Is Visible    xpath://button[@class='_2e2g485kpErHhJQUiyvvC2 _1asGWL2_XadHoBuUlNArOq _3kUvbpMbR21zJBboDdBH7D']
    Wait Until Page Contains Element    xpath://span[normalize-space()='Dark Mode']
    Click Element   xpath://span[normalize-space()='Dark Mode']
    Wait Until Element Is Visible    xpath:(//button[@role='switch'])[2]
    Close Browser

TC_007-006: After_Login_Test - Selecting Post
   [Documentation]  Tests  Selecting Post functionality after login 
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
    Wait Until Page Contains Element    xpath://a[@id='focus-Popular']
    Click Element  xpath://a[@id='focus-Popular']
    Wait Until Page Contains Element    xpath://div[contains(@class,'_2pUO1Sfe7WlIHvq6goN3Pz')]//a[3]
    Click Element  xpath://div[contains(@class,'_2pUO1Sfe7WlIHvq6goN3Pz')]//a[3]
    Wait Until Page Contains Element    xpath://h3[normalize-space()='Best. Country. In the world.']
    Click Element  xpath://h3[normalize-space()='Best. Country. In the world.']
    Wait Until Page Contains Element    xpath://div[contains(@class,'_2SdHzo12ISmrC8H86TgSCp _29WrubtjAcKqzJSPdQqQ4h')]//h1[@class='_eYtD2XCVieq6emjKBH3m'][normalize-space()='Best. Country. In the world.']
    Location Should Be   https://www.reddit.com/r/WhitePeopleTwitter/comments/13b5ka2/best_country_in_the_world/
    Capture Page Screenshot
    Close Browser

TC_007-007: After_Login_Test - Post Notifications
   [Documentation]  Tests  Subscribe to Post Notifications functionality after login 
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
    Wait Until Page Contains Element    xpath://a[@id='focus-Popular']
    Click Element  xpath://a[@id='focus-Popular']
    Wait Until Page Contains Element    xpath://div[contains(@class,'_2pUO1Sfe7WlIHvq6goN3Pz')]//a[3]
    Click Element  xpath://div[contains(@class,'_2pUO1Sfe7WlIHvq6goN3Pz')]//a[3]
    Wait Until Page Contains Element    xpath://h3[normalize-space()='Best. Country. In the world.']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Click Element  xpath://h3[normalize-space()='Best. Country. In the world.']
    Wait Until Page Contains Element    xpath://div[contains(@class,'_2SdHzo12ISmrC8H86TgSCp _29WrubtjAcKqzJSPdQqQ4h')]//h1[@class='_eYtD2XCVieq6emjKBH3m'][normalize-space()='Best. Country. In the world.']
    Location Should Be   https://www.reddit.com/r/WhitePeopleTwitter/comments/13b5ka2/best_country_in_the_world/
    Wait Until Page Contains Element    xpath://button[@class='_3KTYozwt91D81Yub-OQ4S3']
    Click Element  xpath://button[@class='_3KTYozwt91D81Yub-OQ4S3']
    Wait Until Page Contains Element    xpath://i[@aria-label='Follow post to stay updated']
    Capture Page Screenshot
    Close Browser

TC_007-008: After_Login_Test - Subscribe to Subreddit
   [Documentation]  Tests  Subscribe to Subreddit functionality after login 
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
    Wait Until Page Contains Element    xpath://a[@id='focus-Popular']
    Click Element  xpath://a[@id='focus-Popular']
    Wait Until Page Contains Element    xpath://div[contains(@class,'_2pUO1Sfe7WlIHvq6goN3Pz')]//a[3]
    Click Element  xpath://div[contains(@class,'_2pUO1Sfe7WlIHvq6goN3Pz')]//a[3]
    Wait Until Page Contains Element    xpath://h3[normalize-space()='Best. Country. In the world.']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Click Element  xpath://h3[normalize-space()='Best. Country. In the world.']
    Wait Until Page Contains Element    xpath://div[contains(@class,'_2SdHzo12ISmrC8H86TgSCp _29WrubtjAcKqzJSPdQqQ4h')]//h1[@class='_eYtD2XCVieq6emjKBH3m'][normalize-space()='Best. Country. In the world.']
    Location Should Be   https://www.reddit.com/r/WhitePeopleTwitter/comments/13b5ka2/best_country_in_the_world/
    Wait Until Page Contains Element    xpath://span[@title='r/WhitePeopleTwitter']
    Click Element  xpath://span[@title='r/WhitePeopleTwitter']
    Wait Until Page Contains Element    xpath://h2[@class='_33aRtz9JtW0dIrBNKFAl0y']
    Location Should Be   https://www.reddit.com/r/WhitePeopleTwitter/
    Wait Until Page Contains Element    xpath://button[@class='_1LHxa-yaHJwrPK8kuyv_Y4 _2iuoyPiKHN3kfOoeIQalDT _10BQ7pjWbeYP63SAPNS8Ts HNozj_dKjQZ59ZsfEegz8 _34mIRHpFtnJ0Sk97S2Z3D9']
    Click Element  xpath://button[@class='_1LHxa-yaHJwrPK8kuyv_Y4 _2iuoyPiKHN3kfOoeIQalDT _10BQ7pjWbeYP63SAPNS8Ts HNozj_dKjQZ59ZsfEegz8 _34mIRHpFtnJ0Sk97S2Z3D9']
    Wait Until Page Contains Element    xpath://button[@class='_1LHxa-yaHJwrPK8kuyv_Y4 _2iuoyPiKHN3kfOoeIQalDT _2tU8R9NTqhvBrhoNAXWWcP HNozj_dKjQZ59ZsfEegz8 _34mIRHpFtnJ0Sk97S2Z3D9']
    Capture Page Screenshot
    Close Browser
