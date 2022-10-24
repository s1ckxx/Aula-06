// 2. Criar um algoritmo que efetue o cálculo de uma prestação em atraso.
// para tanto, utilize a fórmula PREST = VALOR + (VALOR * (TAXA/ 100)
// * TEMPO). Apresentar o valor da prestação. O cálculo e a exibição
// deverão ser feitos por um procedimento.

Function Main()

        local nValPrest := 0
        local nTaxa := 0
        local nTempoAtraso := 0

        while (nValPrest <= 0) .and. (nTaxa <= 0) .and. (nTempoAtraso <= 0)
            ACCEPT "Informe valor da prestação: " TO nValPrest
            ACCEPT "Informe valor da taxa de atraso: " TO nTaxa
            ACCEPT "Informe tempo de atraso: " TO nTempoAtraso
            nValPrest = Val(nValPrest)
            nTaxa = Val(nTaxa)
            nTempoAtraso = Val(nTempoAtraso)

            if (nValPrest <= 0) .and. (nTaxa <= 0) .and. (nTempoAtraso <= 0)
                QOut("Informe valores maiores que 0!")
            end if
        end

        CalculaPrestacao(nValPrest, nTaxa, nTempoAtraso)

return nil

function CalculaPrestacao (nValPrest, nTaxa, nTempoAtraso)

        QOut("Calculo da prestação em atraso: " + AllTrim(Str(Round(nValPrest, 0))) + " + " + "(" ;
            + AllTrim(Str(Round(nValPrest, 0))) + " * " + "(" + AllTrim(Str(nTaxa)) + " / " + "100";
            + ")" + " * " + AllTrim(Str(nTempoAtraso)) + ")" )

        nValPrest = nValPrest + (nValPrest * (nTaxa/100) * nTempoAtraso)

        QOut("O valor da prestação é: R$" + AllTrim(Str(Round(nValPrest, 0))))

return nil
