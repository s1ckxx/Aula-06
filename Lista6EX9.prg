// 9. Escreva um algoritmo para mostrar o sucessor e o antecessor de um
// número qualquer informado pelo usuário. Tanto o antecessor como o
// sucessor deverão ser obtidos através de funções respectivas.

Function Main()

        // Declaração das variaveis
        local nNum := 0
        local nAntecessor := 0
        local nSucessor := 0

        // Recebe valores informados pelo usuário
        while nNum <= 0
            ACCEPT "Informe um valor: " TO nNum
            nNum = Val(nNum)

            if nNum <= 0
                QOut("Por favor informe um valor maior que 0!")
            end if
        end

        // Chama as funções retornando o valor do antecessor e sucessor respectivamente
        nAntecessor = Antecessor(nNum)
        nSucessor = Sucessor(nNum)

        // Exibe informações na tela.
        QOut("O antecessor de " + AllTrim(Str(nNum)) + " é: " + AllTrim(Str(nAntecessor)))
        QOut("O sucessor de " + AllTrim(Str(nNum)) + " é: " + AllTrim(Str(nSucessor)))

return nil

function Antecessor(nNum)

        nNum = nNum - 1

return nNum

function Sucessor(nNum)

        nNum = nNum + 1

return nNum