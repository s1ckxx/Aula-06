// 4. Lembra do exercício da troca de valores entre 2 variáveis?
// Implementar um programa que leia 2 valores informados pelo usuário
// e através de um procedimento chamado “troca”, realize a troca dos
// valores entre as duas variáveis.

Function Main()

        local nNum1 := 0
        local nNum2 := 0

        while nNum1 <= 0 .or. nNum2 <= 0
            ACCEPT "Informe valor 1: " TO nNum1
            ACCEPT "Informe valor 2: " TO nNum2
            nNum1 = Val(nNum1)
            nNum2 = Val(nNum2)

            if nNum1 <= 0 .or. nNum2 <= 0
                QOut("Favor informar valores maiores que 0!")
            end if
        end

        Troca(nNum1, nNum2)

return nil

static function Troca(nNum1, nNum2)

        local nAux := 0

        nAux = nNum1
        nNum1 = nNum2
        nNum2 = nAux

        QOut("Os valores trocados são respectivamente: " + AllTrim(Str(nNum1)) + " e " + AllTrim(Str(nNum2)))

return nil