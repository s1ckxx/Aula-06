// 5. Implementar um procedimento que dado o dividendo e o divisor de
// uma divisão, calcule tanto o quociente como o resto da divisão inteira. O
// resultado não deverá ser exibido pelo procedimento. Deverá ficar
// disponível para ser exibido ou manipulado pelo programa principal.

Function Main()

        // Declaração das variaveis
        local nDividendo := 0
        local nDivisor := 0
        local nQuociente := 0
        local nResto := 0

        // Recebe valores informados pelo usuário
        while nDividendo <= 0 .or. nDivisor <= 0
            ACCEPT "Informe dividendo: " TO nDividendo
            ACCEPT "Informe divisor: " TO nDivisor
            nDividendo = Val(nDividendo)
            nDivisor = Val(nDivisor)

            if (nDividendo <= 0) .or. (nDivisor <= 0)
                QOut("Por favor informe valores maiores que 0!")
            end if
        end

        // Envia valores por ponteiro conforme orientação do Matheus Nogueira.
        QuocienteResto (nDividendo, nDivisor, @nQuociente, @nResto)

        // Descomentar caso queira exibir os valores da divisão.
        // QOut("O quociente da divisão é: " + AllTrim(Str(nQuociente)))
        // QOut("O resto da divisão é: " + AllTrim(Str(nResto)))

return nil

function QuocienteResto(nDividendo, nDivisor, nQuociente, nResto)

        // Realiza operações solicitadas
        nQuociente = nDividendo / nDivisor
        nResto = Mod(nDividendo, nDivisor)

return nil