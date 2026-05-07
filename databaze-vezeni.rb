#provni verze detabaze vezeni
evidencnicisla = Array.new
jmena = Array.new
prijmeni = Array.new
rodnacisla = Array.new
dobatrestu = Array.new
a = 0
odpoved = 0
puts "Vítej v databázi lidí!"
sleep 2
print "Zadejte prosím uzivatelske jmeno: "
uzivatel = gets.to_s.strip.capitalize
if uzivatel == "Admin"
    print "Zadejte prosim heslo pro Admin: "
    heslo = gets.to_s.strip
    if heslo == "1234"
        puts "Vítej Admin!"
        sleep 2
        while odpoved != 6
            puts "1-zapsat člověka 2-odstranit člověka 3-hledat člověka 4-upravit člověka 5-výpis všech 6-konec"
            print "Zadejte prosím akci: "
            odpoved = gets.to_i
            sleep 2
            case odpoved
                when 1      #zapsat cloveka
                    puts "Vybrali jste si možnost zapsat nového člověka!"
                    sleep 2
                    print "Zadejte prosim křestní jméno #{a + 1}. vězně: "
                    jmeno = gets.to_s.capitalize.strip
                    jmena[a] = jmeno
                    sleep 2
                    print "Zadejte prosim příjmení #{a + 1}. vězně: "
                    prijmeno = gets.to_s.capitalize.strip
                    prijmeni[a] = prijmeno
                    sleep 2
                    print "Zadejte prosím rodné číslo #{a + 1}. vězně: "
                    rodnecislo = gets.to_s.strip
                    rodnacisla[a] = rodnecislo
                    sleep 2
                    print "Zadejte prosím počet let výkonu trestu #{a + 1}. vězně: "
                    doba = gets.to_i
                    dobatrestu[a] = doba
                    sleep 2
                    evidencnicisla[a] = (a + 1)
                    a = a + 1
                    puts "Vězeň číslo číslo #{a} byl úspěšně přidán do databáze!"
                    sleep 3
                when 2      #odstraneni cloveka
                    puts "Vybrali jste si možnost odstranění člověka z databáze!"
                    sleep 2
                    puts "1-jméno a příjmení 2-evidenční číslo 3-rodné číslo"
                    print "Jak chcete najít člověka k odstranění: "
                    jak = gets.to_i
                    case jak
                        when 1
                            puts "Vybrali jste si možnost dohledat vězně podle jména a příjmení!"
                            sleep 2
                            print "Zadejte prosím jméno hledaného: "
                            jmeno = gets.to_s.strip.capitalize
                            b = jmena.index(jmeno)
                            sleep 2
                            if b == nil
                                puts "Bohužel, žádný vězeň s tímto jménem není uvězněn!"
                                sleep 2
                            else
                                print "Zadejte prosim prijmeni hledaného: "
                                prijmo = gets.to_s.capitalize.strip
                                c = prijmeni.index(prijmo)
                                if c == nil
                                    puts "Bohužel, nikdo s tímto příjmením není uvězněn!"
                                    sleep 2
                                elsif b == c
                                    puts "Aktuálně probíhá mazání vězně číslo #{b + 1}, |#{jmena[b]} #{prijmeni[b]} s výkonem trestu: #{dobatrestu[b]} let a r.č. #{rodnacisla[b]}"
                                    sleep 2
                                    jmena[b] = ""
                                    prijmeni[b] = ""
                                    rodnacisla[b] = ""
                                    dobatrestu[b] = ""
                                end
                            end
                        when 2
                            puts "Vybrali jste si možnost hledat vězně pro smazání pomocí evid. čísla!"
                            sleep 2
                            print "Zadejte prosim evidenční č. vězně na smazání: "
                            evidence = gets.to_i
                            b = evidencnicisla.index(evidence)
                            if b == nil
                                puts "Bohužel, nikdo s tímto evidenčním číslem neexistuje!"
                                sleep 2
                            else
                                puts "Aktuálně probíhá mazání vězně číslo #{b + 1}, |#{jmena[b]} #{prijmeni[b]} s výkonem trestu: #{dobatrestu[b]} let a r.č. #{rodnacisla[b]}"
                                sleep 2
                                jmena[b] = ""
                                prijmeni[b] = ""
                                rodnacisla[b] = ""
                                dobatrestu[b] = ""
                            end
                        when 3
                            puts "Vybrali jste si možnost hledat vězně pro smazání pomocí r. čísla!"
                            sleep 2
                            print "Zadejte prosím rodné č.: "
                            c = gets.to_s.strip
                            b = rodnacisla.index(c)
                            sleep 2
                            if b == nil
                                puts "Bohužel, nikdo s tímto rodným číslem neexistuje!"
                                sleep 2
                            else
                                puts "Aktuálně probíhá mazání vězně číslo #{b + 1}, |#{jmena[b]} #{prijmeni[b]} s výkonem trestu: #{dobatrestu[b]} let a r.č. #{rodnacisla[b]}"
                                sleep 2
                                jmena[b] = ""
                                prijmeni[b] = ""
                                rodnacisla[b] = ""
                                dobatrestu[b] = ""
                            end
                    end
                when 3      #hledat
                    puts "Vybrali jste si hledat člověka!"
                    sleep 2
                    puts "1-jméno a příjmení 2-evidenční číslo 3-rodné číslo"
                    print "Jak chcete najít člověka: "
                    jak = gets.to_i
                    case jak
                        when 1
                            puts "Vybrali jste si možnost dohledat vězně podle jména a příjmení!"
                            sleep 2
                            print "Zadejte prosím jméno hledaného: "
                            jmeno = gets.to_s.strip.capitalize
                            b = jmena.index(jmeno)
                            sleep 2
                            if b == nil
                                puts "Bohužel, žádný vězeň s tímto jménem není uvězněn!"
                                sleep 2
                            else
                                print "Zadejte prosim prijmeni hledaného: "
                                prijmo = gets.to_s.capitalize.strip
                                c = prijmeni.index(prijmo)
                                if c == nil
                                    puts "Bohužel, nikdo s tímto příjmením není uvězněn!"
                                    sleep 2
                                elsif b == c
                                    puts "Vězeň s tímto jménem a příjmením byl úspěšně nalezen!"
                                    sleep 2
                                    puts "Jméno: #{jmena[b]}"
                                    sleep 1
                                    puts "Příjmení: #{prijmeni[b]}"
                                    sleep 1
                                    puts "Evidenční číslo: #{b + 1}."
                                    sleep 1
                                    puts "Rodné číslo: #{rodnacisla[b]}"
                                    sleep 1
                                    puts "Doba trestu: #{dobatrestu[b]} let"
                                    sleep 2
                                end
                            end
                        when 2
                            puts "Vybrali jste si možnost hledat vězně pomocí evid. čísla!"
                            sleep 2
                            print "Zadejte prosim evidenční č. vězně: "
                            evidence = gets.to_i
                            b = evidencnicisla.index(evidence)
                            if b == nil
                                puts "Bohužel, nikdo s tímto evidenčním číslem neexistuje!"
                                sleep 2
                            else
                                puts "Vězeň s tímto jménem a příjmením byl úspěšně nalezen!"
                                sleep 2
                                puts "Jméno: #{jmena[b]}"
                                sleep 1
                                puts "Příjmení: #{prijmeni[b]}"
                                sleep 1
                                puts "Evidenční číslo: #{b + 1}."
                                sleep 1
                                puts "Rodné číslo: #{rodnacisla[b]}"
                                sleep 1
                                puts "Doba trestu: #{dobatrestu[b]} let"
                                sleep 2
                            end
                        when 3
                            puts "Vybrali jste si možnost hledat vězně pomocí r. čísla!"
                            sleep 2
                            print "Zadejte prosím rodné č.: "
                            c = gets.to_s.strip
                            b = rodnacisla.index(c)
                            sleep 2
                            if b == nil
                                puts "Bohužel, nikdo s tímto rodným číslem neexistuje!"
                                sleep 2
                            else
                               puts "Vězeň s tímto jménem a příjmením byl úspěšně nalezen!"
                                sleep 2
                                puts "Jméno: #{jmena[b]}"
                                sleep 1
                                puts "Příjmení: #{prijmeni[b]}"
                                sleep 1
                                puts "Evidenční číslo: #{b + 1}."
                                sleep 1
                                puts "Rodné číslo: #{rodnacisla[b]}"
                                sleep 1
                                puts "Doba trestu: #{dobatrestu[b]} let"
                                sleep 2
                when 4      #upravit
                    puts "Vybrali jste si možnost upravení dat vězně!"
                    sleep 2
                    print "Zadejte heslo Admin: "
                    heslo = gets.to_s.strip
                    if heslo == "1234"
                        puts "[1-Jméno|2-Příjmení|3-Rodné číslo|4-doba trestu!]"
                        print "Zadejte co chcete změnit: "
                        volba = gets.to_i
                        case volba
                            when 1
                                puts "Vybrali jste si změnu Křestního jména!"
                                sleep 2
                            when 2
                                puts "Vybrali jste si změnu Příjmení!"
                                sleep 2
                            when 3
                                puts "Vybrali jste si změnu Rodného čísla!"
                                sleep 2
                            when 4
                                puts "Vybrali jste si změnu Doby trestu!!"
                                sleep 2
                            else
                                puts "Bohužel, neplatná volba!"
                                sleep 3
                        end
                    else
                        puts "Bohužel, to není správné heslo!"
                        sleep 2
                    end
                when 5  #vypis všech
                    puts "Vybrali jste možnost vypsat seznam všech vězňů!"
                    sleep 2
                    b = 0
                    (a + 1).times do
                        puts "#{b + 1}. #{jmena[b]} #{prijmeni[b]} #{dobatrestu[b]} r.č: #{rodnacisla[b]}"
                        sleep 1
                        b = b + 1
                    end
                when 6
                    puts "Vybrali jste si možnost ukončení!"
                    sleep 3
                    puts "Těšíme se na vás příště!"
                    sleep 2
                    exit
                else
                    puts "Zadali jste neplatnou volbu!"
                    sleep 3
            end
        end
    else
        puts "Bohužel!"
    end
else
    puts "Bohužel!"
end