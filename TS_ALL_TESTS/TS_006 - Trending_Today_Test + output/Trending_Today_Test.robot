*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.reddit.com/

*** Test Cases ***
TC_005-008: Trending_Today_Test - Popular button
   [Documentation]  Tests clicking on Trending_Today_Test functionality
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://h2[normalize-space()='Taylor Swift']
    Click Element    xpath://h2[normalize-space()='Taylor Swift']
    Location Should Be    https://www.reddit.com/search?q=Taylor%20Swift&source=trending
    Wait Until Page Contains    Taylor Swift
    Wait Until Page Contains Element    xpath://button[normalize-space()='Communities']
    Click Element    xpath://button[normalize-space()='Communities']
    Location Should Be    https://www.reddit.com/search?q=Taylor%20Swift&source=trending&type=sr
    Wait Until Page Contains Element    xpath://a[contains(@class,'_3BWq3z8_9gA3oThgYXnngR YLZe4_XS9hOtObp1VjEF- _2kqt-kRLvKQ1Kqi8OjMEa7')]//h6[1]
    sleep   5s
    Click Element    xpath://a[contains(@class,'_3BWq3z8_9gA3oThgYXnngR YLZe4_XS9hOtObp1VjEF- _2kqt-kRLvKQ1Kqi8OjMEa7')]//h6[1]
    Location Should Be    https://www.reddit.com/r/TaylorSwift/
    Capture Page Screenshot
    Close Browser

TC_006-002: Trending_Today_Test - Succession
   [Documentation]  Tests clicking on Trending_Today_Test functionality
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://h2[normalize-space()='Succession Episode Discussion']
    Click Element    xpath://h2[normalize-space()='Succession Episode Discussion']
    Location Should Be    https://www.reddit.com/search?q=Succession&source=trending
    Wait Until Page Contains    Succession
    Wait Until Page Contains Element    xpath://button[normalize-space()='Communities']
    Click Element    xpath://button[normalize-space()='Communities']
    Wait Until Page Contains Element    xpath://a[contains(@class,'_3BWq3z8_9gA3oThgYXnngR YLZe4_XS9hOtObp1VjEF- _2kqt-kRLvKQ1Kqi8OjMEa7')]//h6[1]
    sleep   5s
    Click Element    xpath://a[contains(@class,'_3BWq3z8_9gA3oThgYXnngR YLZe4_XS9hOtObp1VjEF- _2kqt-kRLvKQ1Kqi8OjMEa7')]//h6[1]
    Location Should Be    https://www.reddit.com/r/Succession/
    Wait Until Page Contains Element    xpath://h2[@class='_33aRtz9JtW0dIrBNKFAl0y']
    Capture Page Screenshot
    Close Browser

TC_006-003: Trending_Today_Test - PremierLeague
   [Documentation]  Tests clicking on Trending_Today_Test functionality
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://h2[normalize-space()='Premier League']
    Click Element    xpath://h2[normalize-space()='Premier League']
    Location Should Be    https://www.reddit.com/search?q=Premier%20League&source=trending
    Wait Until Page Contains    Premier League
    Wait Until Page Contains Element    xpath://button[normalize-space()='People']
    Click Element    xpath://button[normalize-space()='People']
    Wait Until Page Contains Element    xpath://a[contains(@class,'_3BWq3z8_9gA3oThgYXnngR YLZe4_XS9hOtObp1VjEF- _2kqt-kRLvKQ1Kqi8OjMEa7')]//h6[1]
    sleep   5s
    Click Element    xpath://a[contains(@class,'_3BWq3z8_9gA3oThgYXnngR YLZe4_XS9hOtObp1VjEF- _2kqt-kRLvKQ1Kqi8OjMEa7')]//h6[1]
    Location Should Be    https://www.reddit.com/user/PremierLeague/
    Wait Until Page Contains Element    xpath://span[@class='_1LCAhi_8JjayVo7pJ0KIh0']
    Capture Page Screenshot
    Close Browser

TC_006-004: Trending_Today_Test - Chris Brown
   [Documentation]  Tests clicking on Trending_Today_Test functionality
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://button[normalize-space()='Accept all']
    Click Element    xpath://button[normalize-space()='Accept all']
    Wait Until Element Is Not Visible    xpath://div[@class='_1DK52RbaamLOWw5UPaht_S _3Ig_EsWWVLquWs2yBBQjec _1acwN_tUhJ8w-n7oCp-Aw3']
    Wait Until Page Contains Element    xpath://h2[normalize-space()='Chris Brown']
    Click Element    xpath://h2[normalize-space()='Chris Brown']
    Location Should Be    https://www.reddit.com/search?q=Chris%20Brown&source=trending
    Wait Until Page Contains    Chris Brown
    Wait Until Page Contains Element    xpath://button[normalize-space()='People']
    Click Element    xpath://button[normalize-space()='People']
    Wait Until Page Contains Element    xpath://h6[normalize-space()='u/ChrisBrownYoMama']
    sleep   5s
    Click Element    xpath://h6[normalize-space()='u/ChrisBrownYoMama']
    Location Should Be    https://www.reddit.com/user/ChrisBrownYoMama/
    Wait Until Page Contains Element    xpath://span[@class='_1LCAhi_8JjayVo7pJ0KIh0']
    Capture Page Screenshot
    Close Browser

