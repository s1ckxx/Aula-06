// 16.Criar um programa de funções com literais e nela disponibilizar as
// funções/procedimentos:
// a. isLetra(c): informa se o caractere enviado é uma letra.
// b. isDigito(c): informa se o caractere enviado é um número.
// c. isSimbolo(c): informa se o caractere enviado é um símbolo.
// d. toLower(c): converte uma letra maiúscula em minúscula.
// e. cTroca(a, b): troca os valores entre as variáveis a e b.

Function Main()

        local cOP := ""
        local cCaractere := ""
        local nVal1 := 1
        local nVal2 := 5
        local lBol := .F.

        cOP = TipoOperacao()

        if (cOP == "A") .or. (cOP == "B") .or. (cOP == "C")
                while len(cCaractere) == 0 .or. len(cCaractere) > 1
                        ACCEPT "Informe um caractere: " TO cCaractere

                        if len(cCaractere) > 1
                                QOut("Por favor, informe somente um caractere!")
                        end if
                end
        end

        if (cOP == "A")
                lBol = isLetra(cCaractere)                
        elseif (cOP == "B")
                lBol = isDigito(cCaractere)
        elseif (cOP == "C")
                lBol = isSimbolo(cCaractere)
        elseif (cOP == "D")    
                cCaractere = emMinusculo()
        elseif (cOP == "E")
                cTroca(@nVal1, @nVal2)
                QOut("Os valores das variaveis invertidos são respectivamente: " + AllTrim(Str(nVal1)) + " e " + AllTrim(Str(nVal2)))
        end if


return nil

static function TipoOperacao()

        local cOP := ""

        while ((cOP <> "A") .and. (cOP <> "B") .and. (cOP <> "C") .and. (cOP <> "D") .and. (cOP <> "E"))
                ACCEPT "Qual operacao deseja realizar? ";
                        + chr(10) + "a. isLetra(c): informa se o caractere enviado é uma letra." +;
                        + chr(10) + "b. isDigito(c): informa se o caractere enviado é um número." +;
                        + chr(10) + "c. isSimbolo(c): informa se o caractere enviado é um símbolo."+;
                        + chr(10) + "d. toLower(c): converte uma letra maiúscula em minúscula."+;
                        + chr(10) + "e. cTroca(a, b): troca os valores entre as variáveis a e b." + chr(10) TO cOP

                cOP = Upper(cOP)

                if ((cOP <> "A") .and. (cOP <> "B") .and. (cOP <> "C") .and. (cOP <> "D") .and. (cOP <> "E"))
                        QOut("Por favor, escolha uma opção valida!")
                end if
        end

return cOP

static function isLetra(cCaractere)

        local lBol := .F.
        lBol = IsAlpha(cCaractere)

        if (lBol == .T.)
                QOut("O caractere informado é uma letra!")
        else
                QOut("O caractere informado não é uma letra!")
        end if

return lBol

static function isDigito(cCaractere)

        local lBol := .F.
        lBol = IsDigit(cCaractere)

        if (lBol == .T.)
                QOut("O caractere informado é um número!")
        else
                QOut("O caractere informado não é um número!")
        end if

return lBol

static function isSimbolo(cCaractere)

        local lBol := .F.

        if Asc(cCaractere) >= 33 .and. Asc(cCaractere) <= 47
                lBol = .T.
        end if

        if Asc(cCaractere) >= 91 .and. Asc(cCaractere) <= 93
                lBol = .T.
        end if

        if (lBol == .T.)
                QOut("O caractere informado é um simbolo!")
        else
                QOut("O caractere informado não é um simbolo!")
        end if

return lBol

static function emMinusculo()

        local cLetra := ""

        while len(cLetra) == 0 .or. len(cLetra) > 1
                ACCEPT "Informe uma letra: " TO cLetra
                cLetra = cLetra

                if len(cLetra) == 0 .or. len(cLetra) > 1
                        QOut("Por favor informe somente uma letra!")
                end if
        end

        cLetra = Lower(cLetra)
        QOut("A letra informada convertida para minusculo é: " + AllTrim(cLetra))

return cLetra

static function cTroca(nVal1, nVal2)

        local nAux := 0

        nAux = nVal1
        nVal1 = nVal2
        nVal2 = nAux

return nil
