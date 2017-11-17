*** Settings ***
Resource        resource.txt

*** Test Cases ***
Test user defined keywork loaded from resource file
        Print welcome message for        Mister President

#Test user defined keywork loaded from resource file
#        Print greeting message for        Kamil Babayev
