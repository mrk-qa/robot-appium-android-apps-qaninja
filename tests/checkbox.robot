***Settings***

Resource                                ../resources/base.robot

# Executa a KW antes de cada testcase
Test Setup                              Open Session
# Executa a KW depois de cada testcase
Test Teardown                           Close Session

***Test Cases***

Deve marcar a opção Robot Framework
    Go To Checkbox

    ${element}=                         Set Variable     xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]    
    
    Click Element                       ${element}

    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/rvContainer
    Element Attribute Should Match      ${element}       checked     true