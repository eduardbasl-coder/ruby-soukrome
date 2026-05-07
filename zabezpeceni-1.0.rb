    #zabezpeceni - 1
    
    jmena = Array.new
    hesla = Array.new
    odpoved = 1
    a = 0
    puts "Vitej v prvni verzi Log-in brány!"
    until odpoved == 3
        puts "[ 1-přihlásit se k účtu | 2-vytvořit nový | 3-exit ]"
        print "Jakou operaci chcete provést: "
        odpoved = gets.to_i
        case odpoved
            when 1
                puts "Vybrali jste si možnost přihlásit se k nastávajícímu účtu!"
                sleep 2
                print "Zadejte prosim vase uzivatelske jmeno: "
                jmeno = gets.to_s.strip
                pozice = jmena.index (jmeno)
                case pozice
                    when nil
                        sleep 2
                        puts "Bohužel, uživatel s tímto jménem neexistuje!"
                        sleep 2
                    else
                        sleep 2
                        puts "Zadejte prosím heslo pro uživatele: #{jmeno}: "
                        heslo = gets.to_s.strip
                        sleep 2
                        if heslo == hesla [pozice]
                            puts "Vítej #{jmeno}!"
                            sleep 2
                        else
                            puts "bohužel, zadali jste špatné heslo pro #{jmeno}!"
                            sleep 2
                        end
                end
            when 2
                puts "Vybrali jste si možnost Vytvořit si nový účet!"
                sleep 2
                print "Zadejte prosim uživatelské jméno vašeho nového účtu: "
                novejmeno = gets.to_s.strip
                kontrola = jmena.index(novejmeno)
                case kontrola
                    when nil
                        jmena [a] = novejmeno
                        print "Dobrá #{novejmeno}, jaké bude vaše heslo: "
                        heslo = gets.to_s.strip
                        hesla[a] = heslo
                        a = a + 1
                        puts "Váš účet byl úspěšně vytvořen!"
                    else
                        puts "Toto uživatelské jméno je již zabrané!"
                        sleep 2
                end
            when 3
                puts "Tesime se na vas priste!"
                sleep 2
                exit
            else
                puts "Zadali jste neplatnou operaci!"
                sleep 2
        end
    end