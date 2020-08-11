*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ForLoop
    FOR   ${i}    IN RANGE   10
       log to console     ${i}
    END

    FOR   ${i}    IN   1 2 3 4 5 6 7 8 9 10
       log to console     ${i}
    END

    FOR   ${i}    IN   1  2   3   4   5   6   7   8   9   10
       log to console     ${i}
    END

    @{items}     create list  1  2   3   4   5
    FOR    ${i}     IN      @{items}
        log to console  ${i}
    END

    FOR    ${i}     IN  John Smith David Scott
        log to console  ${i}
    END

    @{nameslist}    create list  John   Smith   David   Scott   Tiger
    FOR    ${i}     IN  @{nameslist}
        log to console  ${i}
    END

    @{items}     create list  1  2   3   4   5
    FOR    ${i}     IN      @{items}
        log to console  ${i}
        exit for loop if  ${i}==3
    END
