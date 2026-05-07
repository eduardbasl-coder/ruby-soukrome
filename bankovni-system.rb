puts "Vitej v prvni verzi jednoducheho bankovniho systemu!"
sleep 2
odpoved = 1
a = 0
jmena = Array.new
cislauctu = Array.new
zustatky = Array.new
hesla = Array.new
heslo1 = ""
heslo2 = ""
until odpoved == 5
    puts "\n\n[ 1-vytvoř. uctu | 2-vlozit penize | 3-výběr | 4-zůstatek | 5-konec ]"
    print "Co chcete udělat: "
    odpoved = gets.to_i
    case odpoved
        when 1
            puts "Jdeme vytvorit nový účet!"
            sleep 2
            print "Zadejte prosim příjmení vlastníka účtu: "
            jmeno = gets.to_s.strip.capitalize
            jmena[a] = jmeno
            print "Zadejte prosim počáteční zústatek(Kč): "
            zustatek = gets.to_i
            zustatky[a] = zustatek
            sleep 2
            puts "Pojďme si vytvořit heslo!"
            sleep 2
            puts "[1-vytvorim si sam | 2-vytvor za me]"
            print "Vybrete si možnost vytvoření nového hesla k vašemu novému účtu: "
            odpovedheslo = gets.to_i
            sleep 2
            case odpovedheslo
                when 1
                    puts "Vybrali jste si možnost vytvořit si heslo sám!"
                    sleep 2
                    puts "Buďte opatrní, heslo nikomi nesdělujte!"
                    sleep 1
                    puts "Doporučujeme dodržovat všeobecně známá pravidla pro tvorbu hesel!"
                    sleep 1
                    while heslo1 != heslo2
                        print "Zadejte svoje heslo: "
                        heslo1 = gets.to_s.strip
                        sleep 1
                        print "Zadejte znovu své heslo: "
                        heslo2 = gets.to_s.strip
                        if heslo1 != heslo2
                            puts "Zadali jste neplatnou hodnotu!"
                        end
                                puts "Obě hesla se shodují"
                                sleep 1
                                puts "Nezapomeňte si heslo poznamenat!"
                                sleep 1
                                print "Přejtete si zobrazit své heslo?(ano/ne): "
                                odpovidka = gets.to_s.strip.downcase
                                case odpovidka
                                    when "ano"
                                        puts "Vámi zvolené heslo: #{heslo1}, nikomu ho nezdělujte!"
                                        sleep 2
                                    when "ne"
                                        puts "Doufám, že jste si ho poznamenal!"
                                        sleep 2
                                end
                        end
                    end
                    hesla[a] = heslo1
                when 2
                    puts "Vybrali jste si možnost äutomatické vytvočení hesla!"
                    heslo = ""
                    sleep 1
                    print "Kolik znaků si přejete aby mělo vaše heslo?: "
                    velikost = gets.to_i
                    mala = ("a".."z").to_a
                    velka = ("A".."Z").to_a
                    cisla = ("0".."9").to_a
                    specialniznaky = ["!", "@", "#", "$", "%", "&", "*"]
                    print "\nVaše náhodně vygenerované heslo bylo vygenerováno!"
                    velikost.times do
                        nahoda = rand (1..4)
                        case nahoda
                            when 1
                                heslo += mala.sample
                            when 2
                                heslo += velka.sample
                            when 3
                                heslo += cisla.sample
                            when 4
                                heslo += specialniznaky.sample
                        end
                    sleep 1
                    puts "Vaše heslo je: #{heslo}"
                    sleep 2
                    puts "Nezapomeňte si ho zapsat!"
                    sleep 2
                else
                    puts "Zadali jste neplatnou volbu!"
                    sleep 2
            end
            sleep 2
            begin
                cislo = ""
                10.times do
                    cislo += rand(0..9).to_s
            end
            end while cislauctu.include?(cislo)
            puts "\n\nVašemu účtu registrovanému na jméno: #{jmeno}, s počátečním zůstatkem: #{zustatek} Kč bylo přiděleno číslo: #{cislo}\n\n"
            cislauctu[a] = cislo
            a = a + 1
        when 2
            puts "\n[1-prijmeni vlastnika | 2-cislo uctu]"
            print "Zadejte prosim jak chcete najit ucet: "
            volba = gets.to_i
            case volba
                when 1
                    sleep 2
                    puts "Jedeme hledat účet pomocí příjmení"
                    sleep 1
                    print "Zadejte prosim prijmeni: "
                    prijmeni = gets.to_s.capitalize.strip
                    b = jmena.index(prijmeni)
                    sleep 2
                    case b
                        when nil
                            puts "Bohužel, nikdo s tímto příjmením nemá u naší banky účet!"
                            sleep 2
                        else
                            puts "\n\nDobrý den, pane #{jmena[b]}"
                            sleep 1
                            puts "Číslo účtu: #{cislauctu[b]}"
                            sleep 1
                            puts "Aktuální zůstatek: #{zustatky[b]} Kč"
                            puts "\n"
                            print "Přejete si přidat peníze na účet?(ano/ne): "
                            odpoved2 = gets.to_s.strip.downcase
                            case odpoved2
                                when "ano"
                                    print "Super, kolik by jsi chtěl vložit: "
                                    vklad = gets.to_i
                                    sleep 2
                                    zustatky[b] = zustatky[b] + vklad
                                    puts "K vašemu účtu bylo úspěšně připsáno #{vklad} Kč, nový zůstatek: #{zustatky[b]} Kč"
                                    sleep 3
                                when "ne"
                                    puts "Dobrá, v tom případě nevím proč jste si tuto možnost vybrali, nevadí!"
                                    sleep 2
                                else
                                    puts "Bohužel, zadali jste neplatnou operaci!"
                            end
                    end
                when 2
                    sleep 2
                    puts "Jedeme hledat účet pomocí čísla účtu"
                    sleep 1
                    print "Zadejte prosim číslo účti: "
                    cislouctu = gets.to_s.strip
                    b = cislauctu.index(cislouctu)
                    sleep 2
                    case b
                        when nil
                            puts "Bohužel, žádný účet s tímto číslem neexistuje!"
                            sleep 2
                        else
                            puts "\n\nDobrý den, pane #{jmena[b]}"
                            sleep 1
                            puts "Číslo účtu: #{cislauctu[b]}"
                            sleep 1
                            puts "Aktuální zůstatek: #{zustatky[b]} Kč"
                            puts "\n"
                            print "Přejete si přidat peníze na účet?(ano/ne): "
                            odpoved2 = gets.to_s.strip.downcase
                            case odpoved2
                                when "ano"
                                    print "Super, kolik by jsi chtěl vložit: "
                                    vklad = gets.to_i
                                    sleep 2
                                    zustatky[b] = zustatky[b] + vklad
                                    puts "K vašemu účtu bylo úspěšně připsáno #{vklad} Kč, nový zůstatek: #{zustatky[b]} Kč"
                                    sleep 3
                                when "ne"
                                    puts "Dobrá, v tom případě nevím proč jste si tuto možnost vybrali, nevadí!"
                                    sleep 2
                                else
                                    puts "Bohužel, zadali jste neplatnou operaci!"
                            end
                    end
                else
                    puts "Bohužel, zadali jste neplatnou volbu!"
                    sleep 2
            end
        when 3
            puts "Vybrali jste si výběr z účtu!"
            puts "[1-prijmeni | 2-cislo uctu]"
            print "Jakým způsobem chcete hledat účet: "
            odpoved3 = gets.to_i
            case odpoved3
                when 1
                    sleep 1
                    puts "Jdeme hledat účet pomocí příjmení!"
                    sleep 2
                    print "Zadejte prijmeni majitele uctu: "
                    prijmeni = gets.to_s.capitalize.strip
                    c = jmena.index(prijmeni)
                    puts "\n"
                    sleep 3
                    case c
                        when nil
                            puts "Bohužel, nikdo s tímto příjmením nemá účet u naší banky!"
                            sleep 3
                        else
                            puts "Dobrý den, pane #{jmena[c]}"
                            sleep 1
                            puts "Číslo účtu: #{cislauctu[c]}"
                            sleep 1
                            puts "Aktuální zůstatek: #{zustatky[c]} Kč"
                            sleep 1
                            print "Chcete vybrat peníze z tohoto účtu?(ano/ne): "
                            odpoved4 = gets.to_s.strip.downcase
                            case odpoved4
                                when "ano"
                                    print "Zadejte prosim kolik by jste si chtěl vybrat: "
                                    vyber = gets.to_i
                                    sleep 2
                                    case
                                        when vyber > zustatky[c]
                                            puts "Bohužel, tuto částku(#{vyber}Kč) si vybrat nemůžete, nemáte dostatek prostředků(#{zustatky[c]}Kč)" 
                                        else
                                            puts "Úspěšně jste si vybrali #{vyber} Kč z vašeho účtu číslo #{cislauctu[c]} na jmeno #{jmena[c]}"
                                            sleep 2
                                            zustatky[c] = zustatky[c] - vyber
                                            puts "Nový zůstatek: #{zustatky[c]}Kč"
                                            sleep 3
                                    end
                                when "ne"
                                    puts "Dobrá, jen nerozumím proč jste si tuto volbu vybrali!"
                                    sleep 3
                                else
                                    puts "Zadali jste neplatnou volbu!"
                                    sleep 3
                            end
                        end
                when 2
                    sleep 1
                    puts "Jdeme hledat účet pomocí čísla účtu!"
                    sleep 2
                    print "Zadejte číslo uctu: "
                    ucet = gets.to_s.strip
                    c = cislauctu.index(ucet)
                    puts "\n"
                    sleep 3
                    case c
                        when nil
                            puts "Bohužel, ucet s timto cislem neexistuje!"
                            sleep 3
                        else
                            puts "Dobrý den, pane #{jmena[c]}"
                            sleep 1
                            puts "Číslo účtu: #{cislauctu[c]}"
                            sleep 1
                            puts "Aktuální zůstatek: #{zustatky[c]} Kč"
                            sleep 1
                            print "Chcete vybrat peníze z tohoto účtu?(ano/ne): "
                            odpoved4 = gets.to_s.strip.downcase
                            case odpoved4
                                when "ano"
                                    print "Zadejte prosim kolik by jste si chtěl vybrat: "
                                    vyber = gets.to_i
                                    sleep 2
                                    case
                                        when vyber > zustatky[c]
                                            puts "Bohužel, tuto částku(#{vyber}Kč) si vybrat nemůžete, nemáte dostatek prostředků(#{zustatky[c]}Kč)" 
                                        else
                                            puts "Úspěšně jste si vybrali #{vyber} Kč z vašeho účtu číslo #{cislauctu[c]} na jmeno #{jmena[c]}"
                                            sleep 2
                                            zustatky[c] = zustatky[c] - vyber
                                            puts "Nový zůstatek: #{zustatky[c]}Kč"
                                            sleep 3
                                    end
                                when "ne"
                                    puts "Dobrá, jen nerozumím proč jste si tuto volbu vybrali!"
                                    sleep 3
                                else
                                    puts "Zadali jste neplatnou volbu!"
                                    sleep 3
                            end
                        end
                else
                    puts "Zadali jste neplatnou možnost!"
                    sleep 3
            end
        when 4
            puts "Vybrali jste si možnost zobrazit zůstatek účtu!"
            sleep 2
            puts "[1-prijmeni | 2-cislo uctu]"
            print "Zadejte prosim jak chcete hledat účet: "
            odpoved5 = gets.to_i
            sleep 2
            case odpoved5
                when 1
                    puts "Jdeme hledat účet podle příjmení vlastníka!"
                    sleep 2
                    print "Zadejte prosim prijmeni: "
                    prijmeni = gets.to_s.strip.capitalize
                    d = jmena.index(prijmeni)
                    sleep 2
                    case d
                        when nil
                            puts "Bohužel žádný člověk s tímto jménem nemá u naší banky účet!"
                            sleep 3
                        else
                            puts "Dobrý den, pane #{jmena[d]}"
                            sleep 2
                            puts "Zůstatek vašeho účtu: #{zustatky[d]}"
                            sleep 3
                    end
                when 2
                    puts "Jdeme hledat účet podle čísla účtu!"
                    sleep 2
                    print "Zadejte prosim cislo uctu: "
                    cislo = gets.to_s.strip
                    d = cislauctu.index(cislo)
                    sleep 2
                    case d
                        when nil
                            puts "Bohužel žádný účet s tímto číslem neexistuje!"
                            sleep 3
                        else
                            puts "Dobrý den, pane #{jmena[d]}"
                            sleep 2
                            puts "Zůstatek vašeho účtu: #{zustatky[d]}"
                            sleep 3
                    end
                else
                    puts "Zadali jste neplatnou volbu!"
                    sleep 3
            end
        when 5
            puts "Vybrali jste si možnost konec!"
            sleep 2
            puts "Těšíme se na vás příště!"
            sleep 2
        else
            puts "Bohužel, zadali jste neplatnou volbu!"
            sleep 3
    end
end