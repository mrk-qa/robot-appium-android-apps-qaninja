***Settings***

Resource                                ../resources/base.robot

# Executa a KW antes de cada testcase
Test Setup                              Open Session
# Executa a KW depois de cada testcase
Test Teardown                           Close Session

***Variables***

${SPINNER}=                             id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}=                        class=android.widget.ListView

***Test Cases***

Deve selecionar o perfil QA no formulário de cadastro
    Go To Signup Form

    Choice Job                          QA

Deve selecionar o perfil DevOps no formulário de cadastro
    Go To Signup Form

    Choice Job                          DevOps

***Keywords***
Choice Job
    [Arguments]                         ${target}

    Click Element                       ${SPINNER}
    Wait Until Element Is Visible       ${LIST_OPTIONS}
    Click Text                          ${target}