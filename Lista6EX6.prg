// 6. Faça uma função para calcular o dobro de um número qualquer. O
// programa principal deverá chamar essa função passando um valor
// informado pelo usuário e exibir o resultado na tela.

Function Main()

        // Declaração das variaveis
        local nNum := 0

        // Recebe valores informados pelo usuário
        while nNum <= 0
            ACCEPT "Informe um número: " TO nNum
            nNum = Val(nNum)

            if nNum <= 0
                QOut("Por favor informe valores maiores que 0!")
            end if
        end

        nNum = DobraValor(nNum)
        QOut("O dobro do valor digitado é: " + AllTrim(Str(nNum)))

return nil

function DobraValor(nNum)

        // Realiza operações solicitadas
        nNum = nNum * 2

return nNum