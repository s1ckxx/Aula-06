// 15.Crie uma função chamada “ehPositivo” que descubra se um valor é
// positivo ou negativo (considere o valor zero como positivo) e retorne
// Verdadeiro ou Falso. Use essa função em um programa que calcula o
// módulo de um número informado pelo usuário.

Function Main()

        local nNum := 0
        local lBol := .F.

        ACCEPT "Informe um número: " TO nNum
        nNum = Val(nNum)

        lBol = ehPositivo(nNum)

        if (lBol == .F.)
                nNum = Abs(nNum)
        end if
                
        QOut("O valor modular do número informado é: " + AllTrim(Str(nNum)))

return nil

static function ehPositivo(nNum)

        local lBol := .F.

        if (nNum >= 0)
                lBol = .T.
        end if

return lBol