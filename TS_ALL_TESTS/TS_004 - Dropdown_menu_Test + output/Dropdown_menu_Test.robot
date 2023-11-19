*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.reddit.com/

*** Test Cases ***
TC_004-001: Dropdown menu Test - iOS
   [Documentation]  Tests clicking on the Dropdown menu and functionality - iOS
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='USER_DROPDOWN_ID']
    Click Element    xpath://button[@id='USER_DROPDOWN_ID']
    Wait Until Page Contains Element    xpath://body/div/div[contains(@role,'menu')]/button[1]
    Click Element    xpath://body/div/div[contains(@role,'menu')]/button[1]
    Wait Until Page Contains Element    xpath:(//a[contains(@class,'NiNJXib52w4C8FUidB5af')])[84]
    Click Element    xpath:(//a[contains(@class,'NiNJXib52w4C8FUidB5af')])[84]
    Location Should Be   https://apps.apple.com/US/app/id1064216828?shortlink=b3d845e&is_retargeting=true&c=ios_reddit_footer&pid=reddit_footer&source_caller=ui
    Wait Until Page Contains Element    xpath://h2[normalize-space()='Dive into anything']
    Capture Page Screenshot
    Close Browser

TC_004-002: Dropdown menu Test - Google play
   [Documentation]  Tests clicking on the Dropdown menu and functionality - Google play
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='USER_DROPDOWN_ID']
    Click Element    xpath://button[@id='USER_DROPDOWN_ID']
    Wait Until Page Contains Element    xpath://body/div/div[contains(@role,'menu')]/button[1]
    Click Element    xpath://body/div/div[contains(@role,'menu')]/button[1]
    Wait Until Page Contains Element    xpath:(//a[@class='NiNJXib52w4C8FUidB5af'])[2]
    Click Element    xpath:(//a[@class='NiNJXib52w4C8FUidB5af'])[2]
    Location Should Be   https://play.google.com/store/apps/details?id=com.reddit.frontpage&shortlink=4c212f61&is_retargeting=true&c=android_reddit_footer&pid=reddit_footer&source_caller=unknown
    Wait Until Page Contains Element    xpath://span[normalize-space()='Reddit']
    Capture Page Screenshot
    Close Browser

TC_004-03: Dropdown menu Test - Rereddit
   [Documentation]  Tests clicking on the Dropdown menu and functionality - Rereddit
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='USER_DROPDOWN_ID']
    Click Element    xpath://button[@id='USER_DROPDOWN_ID']
    Wait Until Page Contains Element    xpath://body/div/div[contains(@role,'menu')]/button[1]
    Click Element    xpath://body/div/div[contains(@role,'menu')]/button[1]
    Wait Until Page Contains Element    xpath://span[normalize-space()='Rereddit']
    Execute JavaScript  document.evaluate("//span[normalize-space()='Rereddit']", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()
    Location Should Be   https://www.reddit.com/posts/2022/
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Rereddit']
    Capture Page Screenshot
    Close Browser

TC_004-004: Dropdown menu Test - blog
   [Documentation]  Tests clicking on the Dropdown menu and functionality - blog
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='USER_DROPDOWN_ID']
    Click Element    xpath://button[@id='USER_DROPDOWN_ID']
    Wait Until Page Contains Element    xpath://body/div/div[contains(@role,'menu')]/button[1]
    Click Element    xpath://body/div/div[contains(@role,'menu')]/button[1]
    Wait Until Page Contains Element    xpath://a[contains(@href,'https://redditblog.com')]
    Click Element    xpath://a[contains(@href,'https://redditblog.com')]
    Location Should Be   https://www.redditinc.com/blog
    Wait Until Page Contains Element    xpath://article[@id='post-291917']//a[normalize-space()='Announcements']
    Capture Page Screenshot
    Close Browser

TC_004-005: Dropdown menu Test - press
   [Documentation]  Tests clicking on the Dropdown menu and functionality -press
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='USER_DROPDOWN_ID']
    Click Element    xpath://button[@id='USER_DROPDOWN_ID']
    Wait Until Page Contains Element    xpath://body/div/div[contains(@role,'menu')]/button[1]
    Click Element    xpath://body/div/div[contains(@role,'menu')]/button[1]
    Wait Until Page Contains Element    xpath://span[normalize-space()='Press']
    Click Element    xpath://span[normalize-space()='Press']
    Location Should Be   https://www.redditinc.com/press
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Where Stories Are Born']
    Capture Page Screenshot
    Close Browser

TC_004-006: Dropdown menu Test - Privacy Policy
   [Documentation]  Tests clicking on the Dropdown menu and functionality -Privacy Policy
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='USER_DROPDOWN_ID']
    Click Element    xpath://button[@id='USER_DROPDOWN_ID']
    Wait Until Page Contains Element    xpath://body/div/div[contains(@role,'menu')]/button[2]
    Click Element    xpath://body/div/div[contains(@role,'menu')]/button[2]
    Wait Until Page Contains Element    xpath://span[normalize-space()='Privacy Policy']
    Click Element    xpath://span[normalize-space()='Privacy Policy']
    Location Should Be   https://www.reddit.com/policies/privacy-policy
    Wait Until Page Contains Element    xpath://h1[@class='text-32 mb-md']
    Capture Page Screenshot
    Close Browser

TC_004-007: Dropdown menu Test - Moderator Code of Conduct
   [Documentation]  Tests clicking on the Dropdown menu and functionality -Moderator Code of Conduct
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='USER_DROPDOWN_ID']
    Click Element    xpath://button[@id='USER_DROPDOWN_ID']
    Wait Until Page Contains Element    xpath://body/div/div[contains(@role,'menu')]/button[2]
    Click Element    xpath://body/div/div[contains(@role,'menu')]/button[2]
    Wait Until Page Contains Element    xpath://span[normalize-space()='Moderator Code of Conduct']
    Click Element    xpath://span[normalize-space()='Moderator Code of Conduct']
    Location Should Be   https://www.redditinc.com/policies/moderator-code-of-conduct
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Moderator Code of Conduct']
    Capture Page Screenshot
    Close Browser

TC_004-008: Dropdown menu Test - Login/Sign up button
   [Documentation]  Tests clicking on the Dropdown menu and functionality -Moderator Code of Conduct
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://button[@id='USER_DROPDOWN_ID']
    Click Element    xpath://button[@id='USER_DROPDOWN_ID']
    Wait Until Page Contains Element    xpath://i[contains(@class,'icon icon-logout')]
    Click Element    xpath://i[contains(@class,'icon icon-logout')]
    Select Frame    xpath://iframe[contains(@class,'_25r3t_lrPF3M6zD2YkWvZU')]
    Wait Until Page Contains Element    xpath://input[@id='loginUsername']
    Wait Until Page Contains Element    xpath://h1[normalize-space()='Log In']
    Unselect Frame
    Capture Page Screenshot
    Close Browser