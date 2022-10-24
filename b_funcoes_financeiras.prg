static function CalculaVF()

        local nVF := 0
        local nTaxa := 0
        local nPrazo := 0
        local nTipoJuros := 0
        local nVP := 0

        while (nVP <= 0) .or. (nTaxa <= 0) .or. (nPrazo) <= 0 .or. (nTipoJuros <> 1 .and. nTipoJuros <> 2)
                ACCEPT "Informe valor do capital: " TO nVP
                ACCEPT "Informe taxa de juros: " TO nTaxa
                ACCEPT "Informe prazo: " to nPrazo
                ACCEPT "1 - Juros simples" + chr(10) + "2 - Juros compostos" + chr(10) TO nTipoJuros
                nVP = Val(nVP)
                nTaxa = Val(nTaxa)
                nPrazo = Val(nPrazo)
                nTipoJuros = Val(nTipoJuros)

                if (nVP <= 0) .or. (nTaxa <= 0) .or. (nPrazo) <= 0 .or. (nTipoJuros <> 1 .and. nTipoJuros <> 2)
                        QOut("Por favor informe valores maiores que 0!")
                end if
        end

        nTaxa = nTaxa / 100

        if (nTipoJuros == 1)
                nVF = nVP * ( 1 + nTaxa * nPrazo )
                QOut("O valor futuro aplicado a juros simples é: " + AllTrim(Str(nVF)))
        else
                nVF = nVP * (1 + nTaxa) ^ nPrazo
                QOut("O valor futuro aplicado a juros compostos é: " + AllTrim(Str(nVF)))
        end if

return nil

static function CalculaVP()
        
        local nVP := 0
        local nVF := 0
        local nTaxa := 0
        local nPrazo := 0
        
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

        nTaxa = nTaxa / 100
        nVP = nVF / (1 + nTaxa * nPrazo)

        QOut("O valor presente é: " + AllTrim(Str(nVP)))

return nil