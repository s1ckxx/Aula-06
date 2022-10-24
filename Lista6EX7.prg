// 7. Como sabemos, o Harbour/ADVPL não possui uma função para cálculo
// de potência. Crie uma função “POT”, que receba como parâmetros a
// base e o expoente e retorne o valor da potência.

Function Main()

        // Declaração das variaveis
        local nBase := 0
        local nExpoente := 0
        local nValPotencia := 0

        // Recebe valores informados pelo usuário
        while nBase <= 0 .or. nExpoente <= 0
            ACCEPT "Informe valor da base: " TO nBase
            ACCEPT "Informe valor do expoente: " TO nExpoente
            nBase = Val(nBase)
            nExpoente = Val(nExpoente)

            if nBase <= 0 .or. nExpoente <= 0
                QOut("Por favor informe valores maiores que 0!")
            end if
        end

        // Chama a função de calculo de potência e recebe o resultado
        nValPotencia = Potencia(nBase, nExpoente)

        //Exibe na tela a operação realizada e o resultado
        QOut(AllTrim(Str(nBase)) + "^" + AllTrim(Str(nExpoente)) + " = " + AllTrim(Str(nValPotencia)))

return nil

function Potencia(nBase, nExpoente)

        local nResultado := 0

        // Realiza calculo da potência
        nResultado = Round((nBase ^ nExpoente), 0)

return nResultado