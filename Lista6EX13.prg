// 13.Na mesma linha do programa anterior fazer uma função para cálculo
// do valor presente, dado o montante e a taxa.

// VP = VF / ( 1 + i * n )

// i = taxa
// n = prazo

Function Main()

        local nVP := 0
        local nVF := 0
        local nTaxa := 0
        local nPrazo := 0
        local nTipoJuros := 0

        while (nVF <= 0) .or. (nTaxa <= 0) .or. (nPrazo <= 0)
                ACCEPT "Informe valor futuro: " TO nVF
                ACCEPT "Informe taxa de juros: " TO nTaxa
                ACCEPT "Informe prazo: " to nPrazo
                nVF = Val(nVF)
                nTaxa = Val(nTaxa)
                nPrazo = Val(nPrazo)

                if (nVF <= 0) .or. (nTaxa <= 0) .or. (nPrazo <= 0)
                        QOut("Por favor informe valores maiores que 0!")
                end if
        end

        nVP = ValorPresente(nVF, nTaxa, nPrazo)

        QOut("O valor presente é: " + AllTrim(Str(nVP)))

return nil

function ValorPresente(nVF, nTaxa, nPrazo)
        
        local nVP := 0

        nTaxa = nTaxa / 100
        nVP = nVF / (1 + nTaxa * nPrazo)

return nVP