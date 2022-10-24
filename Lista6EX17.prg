// 17.Criar um programa de funções com literais e nela disponibilizar as
// funções:
// a. iTroca(a, b): troca os valores entre as variáveis a e b.
// b. isPar(x): informa se o inteiro enviado é um número par.
// c. isImPar(x): informa se o inteiro enviado é um número ímpar.
// d. Inverte(x): retorna o número com sinal invertido.
// e. isDiv(a, b): retorna se a é divisível por b.

Function Main()

        local cOP := ""
        local cCaractere := ""
        local nVal1 := ""
        local nVal2 := ""
        local lBol := .F.
        local nParImpar := 0

        cOP = TipoOperacao()

        if (cOP == "A")
                ACCEPT "Informe conteudo da variavel 1: " TO nVal1
                ACCEPT "Informe conteudo da variavel 2: " TO nVal2

                iTroca(@nVal1, @nVal2)           
                QOut("O conteudo das variaveis invertidas são respectivamente: " + AllTrim(nVal1) + " e " + AllTrim(nVal2))     

        elseif (cOP == "B")
                ACCEPT "Informe um número para verificar se é par: " TO nParImpar
                nParImpar = Val(nParImpar)

                lBol = ehPar(nParImpar)

                if (lBol == .T.)
                        QOut("O número informado é par!")
                else
                        QOut("O número informado não é par!")
                end if
        elseif (cOP == "C")
                ACCEPT "Informe um número para verificar se é impar: " TO nParImpar
                nParImpar = Val(nParImpar)

                lBol = ehImpar(nParImpar)

                if (lBol == .T.)
                        QOut("O número informado é impar!")
                else
                        QOut("O número informado não é impar!")
                end if
        elseif (cOP == "D")
                ACCEPT "Informe um número para inverter seu sinal: " TO nVal1
                nVal1 = Val(nVal1)
                
                nVal1 = InverteSinal(nVal1)
                QOut("O número com o sinal invertido é: " + AllTrim(Str(nVal1)))

        elseif (cOP == "E")
                ACCEPT "Informe valor 1: " TO nVal1
                ACCEPT "Informe valor 2: " TO nVal2
                nVal1 = Val(nVal1)
                nVal2 = Val(nVal2)

                lBol = ehDivisivel(nVal1, nVal2)
                
                if (lBol == .T.)
                        QOut(AllTrim(Str(nVal1)) + " é divisivel por " + AllTrim(Str(nVal2)) + "!")
                else
                        QOut(AllTrim(Str(nVal1)) + " não é divisivel por " + AllTrim(Str(nVal2)) + "!")
                end if
        end if


return nil

static function TipoOperacao()

        local cOP := ""

        while ((cOP <> "A") .and. (cOP <> "B") .and. (cOP <> "C") .and. (cOP <> "D") .and. (cOP <> "E"))
                ACCEPT "Qual operacao deseja realizar? ";
                        + chr(10) + "a. iTroca(a, b): troca os valores entre as variáveis a e b." +;
                        + chr(10) + "b. isPar(x): informa se o inteiro enviado é um número par." +;
                        + chr(10) + "c. isImPar(x): informa se o inteiro enviado é um número ímpar."+;
                        + chr(10) + "d. Inverte(x): retorna o número com sinal invertido."+;
                        + chr(10) + "e. isDiv(a, b): retorna se a é divisível por b." + chr(10) TO cOP

                cOP = Upper(cOP)

                if ((cOP <> "A") .and. (cOP <> "B") .and. (cOP <> "C") .and. (cOP <> "D") .and. (cOP <> "E"))
                        QOut("Por favor, escolha uma opção valida!")
                end if
        end

return cOP

static function ehPar(nVal1)

        if (mod(nVal1, 2) == 0)
                return .T.
        else
                return .F.
        end if

return nil

static function ehImpar(nVal1)

        if (mod(nVal1, 2) == 1)
                return .T.
        else
                return .F.
        end if

return nil

static function InverteSinal(nVal1)

        nVal1 = nVal1 * -1

return nVal1

static function ehDivisivel(nVal1, nVal2)

        local lBol := .F.

        if (Mod(nVal1, nVal2) == 0)
                lBol = .T.
        end if

return lBol

static function iTroca(nVal1, nVal2)

        local nAux := 0

        nAux = nVal1
        nVal1 = nVal2
        nVal2 = nAux

return nil
