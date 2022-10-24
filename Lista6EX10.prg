// 10.Escreva uma função que calcule a média de 3 valores quaisquer. O
// programa principal deverá ler os 3 valores informados pelo usuário e
// apresentar a média.

Function Main()

        // Declaração das variaveis
        local nI := 1
        local nValor := 0
        local aValores := {}
        local nMedia := 0

        // Recebe valores informados pelo usuário
        while nI <= 3
                ACCEPT "Informe valor " + AllTrim(Str(nI)) + ": " TO nValor
                nValor = Val(nValor)

            if nValor <= 0
                QOut("Por favor informe um valor maior que 0!")
            else
                aAdd(aValores, nValor)
                nI++
            end if
        end

        // Chama função calcula media passando o Array com os valores informados
        nMedia = CalculaMedia(aValores)

        // Exibe o valor da média
        QOut("A media dos valores informados é: " + AllTrim(Str(nMedia)))

return nil

function CalculaMedia(aValores)

        local nMedia := 0
        local nI

        // Lê os valores do array para calculo da media
        for nI := 1 to len(aValores)
                nMedia = nMedia + aValores[nI]
        end

        // Faz calculo da media de acordo com o tamanho do array
        nMedia = nMedia / len(aValores)

return nMedia