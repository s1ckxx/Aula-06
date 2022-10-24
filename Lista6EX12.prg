// 12.Faça um programa para cálculo do (valor futuro) a partir de
// um dado capital (valor presente). O programa deverá solicitar ao
// usuário o valor do capital (valor presente), a taxa de juros e o prazo.

// O programa também deverá permitir que o usuário escolha se quer
// utilizar o regime de capitalização simples ou composto. Ao final
// apresentar ao usuário o montante (valor futuro e o valor dos juros).
// • Fórmulas:
// ▪ Juros simples: VF = VP ( 1 + i + n )
// ▪ Juros compostos: VF = VP ( 1 + i )^n
// ▪ Juros a partir do VF: J = VF - VP
// • Onde:
// ▪ VF = Montante ou Valor Futuro
// ▪ VP = Capital ou Valor Presente
// ▪ J = Juros
// ▪ i = taxa em decimal
// ▪ n = prazo
// Valor futuro na 12 era VF = VP * ( 1 + i * n )
// Valor presente na 13 fica VP = VF / ( 1 + i * n )

Function Main()

        local nVP := 0
        local nVF := 0
        local nTaxa := 0
        local nPrazo := 0
        local nTipoJuros := 0

        while (nVP <= 0) .or. (nTaxa <= 0) .or. (nPrazo) <= 0 .or. (nTipoJuros <= 0)
                ACCEPT "Informe valor do capital: " TO nVP
                ACCEPT "Informe taxa de juros: " TO nTaxa
                ACCEPT "Informe prazo: " to nPrazo
                ACCEPT "1 - Juros simples" + chr(10) + "2 - Juros compostos" + chr(10) TO nTipoJuros
                nVP = Val(nVP)
                nTaxa = Val(nTaxa)
                nPrazo = Val(nPrazo)
                nTipoJuros = Val(nTipoJuros)

                if (nVP <= 0) .or. (nTaxa <= 0) .or. (nPrazo) <= 0 .or. (nTipoJuros <= 0)
                        QOut("Por favor informe valores maiores que 0!")
                end if
        end

        nVF = CalculaVF(nVP, nTaxa, nPrazo, nTipoJuros)

        if (nTipoJuros == 1)
                QOut("O valor futuro aplicado a juros simples é: " + AllTrim(Str(nVF)))
        else
                QOut("O valor futuro aplicado a juros compostos é: " + AllTrim(Str(nVF)))
        end if

return nil

function CalculaVF(nVP, nTaxa, nPrazo, nTipoJuros)

        local nVF := 0

        nTaxa = nTaxa / 100

        if (nTipoJuros == 1)
                nVF = nVP * ( 1 + nTaxa * nPrazo )
        else
                nVF = nVP * (1 + nTaxa) ^ nPrazo
        end if

return nVF