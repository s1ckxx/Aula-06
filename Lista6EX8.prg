// 8. Sabendo que a área quadrada é dada pela multiplicação da medida de
// 2 lados, escreva um algoritmo que mostre a área quadrada de um
// espaço qualquer cujos lados foram informados pelo usuário. O cálculo
// da área deverá ser realizado por uma função.

Function Main()

        // Declaração das variaveis
        local nLargura := 0
        local nComprimento := 0
        local nAreaQuadrada := 0

        // Recebe valores informados pelo usuário
        while nLargura <= 0 .or. nComprimento <= 0
            ACCEPT "Informe valor da largura: " TO nLargura
            ACCEPT "Informe valor do comprimento: " TO nComprimento
            nLargura = Val(nLargura)
            nComprimento = Val(nComprimento)

            if nLargura <= 0 .or. nComprimento <= 0
                QOut("Por favor informe valores maiores que 0!")
            end if
        end

        // Chama a função de calculo da área quadrada
        AreaQuadrada(nLargura, nComprimento)

return nil

function AreaQuadrada(nLargura, nComprimento)

        local nAreaQuadrada := 0

        // Realiza calculo da área
        nAreaQuadrada = Round((nLargura * nComprimento), 0)
        QOut("Área = " + AllTrim(Str(nAreaQuadrada)) + "m²")

return nil