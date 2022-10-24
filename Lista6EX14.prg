// 14.Organize as funções de PV e FV numa unidade de funções financeiras.

SET PROCEDURE TO b_funcoes_financeiras.prg

Function Main()

        local nOP := 0

        while (nOP <> 1 .and. nOP <> 2)
                ACCEPT "Qual operação deseja realizar?" + chr(10) + "1 - Valor futuro" + chr(10) + "2 - Valor presente" + chr(10) TO nOP
                nOP = Val(nOP)

                if (nOP <> 1 .and. nOP <> 2)
                        QOut("Escolha uma opção valida!")
                end if
        end

        if (nOP == 1)
                CalculaVF()
        else
                CalculaVP()
        end if

return nil