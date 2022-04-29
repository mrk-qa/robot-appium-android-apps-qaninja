***Settings***

Resource                                ../resources/base.robot

# Executa a KW antes de cada testcase
Test Setup                              Open Session
# Executa a KW depois de cada testcase
Test Teardown                           Close Session

***Test Cases***

Deve selecionar a opção Python
    Go To Radion Buttons

    ${element}=                         Set Variable     xpath=//android.widget.RadioButton[contains(@text, 'Python')]    
    
    Click Element                       ${element}
    Wait Until Element Is Visible       ${element}

    Element Attribute Should Match       ${element}       checked     true