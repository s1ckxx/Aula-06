// 11.Faça um algoritmo que calcule o reajuste de um salário. O usuário
// informará o salário atual e o percentual de reajuste.

Function Main()

        // Declaração das variaveis
        local nSalarioAtual := 0
        local nPercentualReajuste := 0
        local nNovoSalario := 0

        // Recebe valores informados pelo usuário
        while nSalarioAtual <= 0 .or. nPercentualReajuste <= 0
                ACCEPT "Informe salário atual: " TO nSalarioAtual
                ACCEPT "Informe percentual de reajuste: " TO nPercentualReajuste
                nSalarioAtual = Val(nSalarioAtual)
                nPercentualReajuste = Val(nPercentualReajuste)

            if nSalarioAtual <= 0 .or. nPercentualReajuste <= 0
                QOut("Por favor informe valores maiores que 0!")
            end if
        end

        nNovoSalario = CalculaReajuste(nSalarioAtual, nPercentualReajuste)

        // Exibe o valor da média
        QOut("O salário com o reajuste é: R$" + AllTrim(Str(nNovoSalario)))

return nil

function CalculaReajuste(nSalarioAtual, nPercentualReajuste)

        local nNovoSalario := 0

        // Lê os valores do array para calculo da media
        nNovoSalario = nSalarioAtual + ((nPercentualReajuste / 100) * nSalarioAtual)

return nNovoSalario