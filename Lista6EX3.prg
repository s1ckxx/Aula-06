// 3. Elaborar um programa que possua uma sub-rotina que efetue o
// somatório dos N primeiros números naturais iniciando em 1. O
// resultado deverá ser exibido no programa principal e não no
// procedimento.

Function Main()

        // Declaração de variaveis
        local nNumero := 0
        local nSoma := 0

        // Verifica entrada do usuario
        while nNumero <= 0
            ACCEPT "Informe quantos números naturais deseja somar: " TO nNumero
            nNumero = Val(nNumero)

            if nNumero <= 0
                QOut("Por favor, informe um número maior que 0!")
            end if
        end

        // Chama função para calculo do somatorio
        nSoma = SomaNaturais(nNumero)

        // Exibe resultado da soma
        QOut("A soma dos números naturais de 1 até " + AllTrim(Str(nNumero)) + " é: " + AllTrim(Str(nSoma)))

return nil

function SomaNaturais(nNumero)

        // Declaração de variaveis locais
        local nSoma := 0
        local nI

        // Loop que realiza o calculo do somatorio considerando a quantidade informada pelo usuario
        for nI = 1 to nNumero
            nSoma = nSoma + nI
        end

return nSoma
