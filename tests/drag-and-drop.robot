***Settings***

Resource                                ../resources/base.robot

# Executa a KW antes de cada testcase
Test Setup                              Open Session
# Executa a KW depois de cada testcase
Test Teardown                           Close Session

***Test Cases***

Deve mover o Hulk para o topo da lista
    Go To Avenger List
    Drag And Drop                       io.qaninja.android.twp:id/drag_handle       3       0
    Sleep                               5

