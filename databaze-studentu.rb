#databáze studentů - příprava test
#přidání studenta, výpis všech, vyhledávání, filtrování, seřazení studentů, statistiky, kontrola dat

def zapsani_uspesne (jmeno2, prijmeni2, vek2, trida2, prumer2)
    sleep 1
    puts "Žák*ině #{jmeno2} #{prijmeni2} #{vek2.to_s} let z #{trida2} s průměrem #{prumer2.to_s} byl*a úspěšně zapsána do databáze!\n"
    sleep 1
end    

databaze = []
databaze << {"jmeno" => "Jan", "prijmeni" => "Novák", "vek" => 15, "trida" => "9.A", "prumer" => 1.23}
databaze << {"jmeno" => "Petra", "prijmeni" => "Svobodová", "vek" => 14, "trida" => "8.B", "prumer" => 2.10}
databaze << {"jmeno" => "Tomáš", "prijmeni" => "Dvořák", "vek" => 16, "trida" => "9.B", "prumer" => 3.45}
databaze << {"jmeno" => "Lucie", "prijmeni" => "Černá", "vek" => 15, "trida" => "9.A", "prumer" => 1.78}
databaze << {"jmeno" => "Martin", "prijmeni" => "Procházka", "vek" => 17, "trida" => "1.A", "prumer" => 4.12}
databaze << {"jmeno" => "Eliška", "prijmeni" => "Krejčí", "vek" => 14, "trida" => "8.A", "prumer" => 2.89}
databaze << {"jmeno" => "Jakub", "prijmeni" => "Veselý", "vek" => 15, "trida" => "9.C", "prumer" => 3.01}
volba1 = 0
puts "Vítej v databázi studentů!"
while volba1 != 8
    sleep 0.5
    puts "[ 1-přidání|2-výpis všech | 3-vyhledávání | 4-filtrování | 5-seřazení | 6-statistiky | 7-kontrola dat | 8-konec ]"
    sleep 0.5
    print "Jak chcete pokračovat: "
    volba1 = gets.to_i
    sleep 1
    case volba1
        when 1
            puts "Jdeme přidat nového studenta!"
            sleep 0.5
            print "Zadejte jméno studenta: "
            jmeno = gets.to_s.capitalize.strip
            sleep 0.5
            print "Zadejte příjmení studenta: "
            prijmeni = gets.to_s.capitalize.strip
            sleep 0.5
            print "Zadejte věk studenta: "
            vek = gets.to_i
            sleep 0.5
            print "Zadejte třídu studenta: "
            trida = gets.to_s.strip
            sleep 0.5
            print "Zadejte průměr známek studenta: "
            prumer = gets.to_f
            sleep 1
            databaze << {"jmeno" => jmeno, "prijmeni" => prijmeni, "vek" => vek, "trida" => trida, "prumer" => prumer}
            zapsani_uspesne(jmeno, prijmeni, vek, trida, prumer)
        when 2
            puts "Kompletní výpis studentů:"
            sleep 0.3

            print "Jméno".ljust(20)
            print " | "
            print "Příjmení".ljust(20)
            print " | "
            print "Věk".ljust(20)
            print " | "
            print "Třída".ljust(20)
            print " | "
            print "Průměr".ljust(20)
            sleep 0.3
            print "\n\n"

            databaze.each_with_index do |prvek, index|
                jmeno = prvek["jmeno"]
                prijmeni = prvek["prijmeni"]
                vek = prvek["vek"]
                trida = prvek["trida"]
                prumer = prvek["prumer"]
                print jmeno.ljust(20)
                print " | "
                print prijmeni.ljust(20)
                print " | "
                print vek.to_s.ljust(20)
                print " | "
                print trida.ljust(20)
                print " | "
                print prumer.to_s.ljust(20)
                sleep 0.3
                print "\n"
            end

        when 3
            puts "Vybrali jste možnost hledání studenta!"
            sleep 0.5
            print "Zadejte prosím jmeno hledaného studenta: "
            jmeno = gets.to_s.strip.capitalize
            sleep 0.5
            print "Zadejte prosím příjmení hledaného studenta: "
            prijmeni = gets.to_s.strip.capitalize
            sleep 0.5
            a = databaze.find{|prvek, index| prvek["jmeno"] == jmeno and prvek["prijmeni"] == prijmeni}
            if a == nil
                puts "Bohužel, žádný student s tímto jménem a příjmením v naší databázi není!"
                sleep 2
            elsif a != nil
                puts "Našli jsme hledaného studenta!"
                sleep 1
                puts a
                sleep 2
            end

        when 4
            puts "Vybrali jste si filtrování studentů!"
            sleep 0.5
            puts "Vypíšu vám pouze studenty s lepším průměrem než zadate!"
            sleep 1
            print "Zadejte prosím filtrovací průměr: "
            prumer = gets.to_f
            sleep 1
            b = databaze.select{|prvek, index| prvek["prumer"] < prumer}
            if b == nil
                puts "Bohužel, žádný student nemá lepší průměr!"
                sleep 2
            elsif b != nil
                puts "Zde je výpis studentů s průměrem lepším než #{prumer.to_s}: "
                sleep 0.3

                print "Jméno".ljust(20)
                print " | "
                print "Příjmení".ljust(20)
                print " | "
                print "Věk".ljust(20)
                print " | "
                print "Třída".ljust(20)
                print " | "
                print "Průměr".ljust(20)
                sleep 0.3
                print "\n\n"

                b.each do |prvek|
                    jmeno = prvek["jmeno"]
                    prijmeni = prvek["prijmeni"]
                    vek = prvek["vek"]
                    trida = prvek["trida"]
                    prumer = prvek["prumer"]
                    print jmeno.ljust(20)
                    print " | "
                    print prijmeni.ljust(20)
                    print " | "
                    print vek.to_s.ljust(20)
                    print " | "
                    print trida.ljust(20)
                    print " | "
                    print prumer.to_s.ljust(20)
                    sleep 0.3
                    print "\n"
                end
            end

        when 5
            puts "Vybrali jste si možnost seřadit studenty podle průměru!"
            sleep 1
            puts "Kompletní seřazený výpis:"
            sleep 0.3

                print "Jméno".ljust(20)
                print " | "
                print "Příjmení".ljust(20)
                print " | "
                print "Věk".ljust(20)
                print " | "
                print "Třída".ljust(20)
                print " | "
                print "Průměr".ljust(20)
                sleep 0.3
                print "\n\n"

                databaze.sort_by{|prvek, index| prvek["prumer"]}.each do |prvek|
                    jmeno = prvek["jmeno"]
                    prijmeni = prvek["prijmeni"]
                    vek = prvek["vek"]
                    trida = prvek["trida"]
                    prumer = prvek["prumer"]
                    print jmeno.ljust(20)
                    print " | "
                    print prijmeni.ljust(20)
                    print " | "
                    print vek.to_s.ljust(20)
                    print " | "
                    print trida.ljust(20)
                    print " | "
                    print prumer.to_s.ljust(20)
                    sleep 0.3
                    print "\n"
                end
        when 6
            puts "Zde jsou všechny dostupné statistiky:"
            sleep 1
            pocet = databaze.length
            puts "Aktuální počet studentů: #{pocet}"
            sleep 1
            suma = 0
            databaze.each_with_index do |prvek, index|
                suma = suma + prvek["prumer"]
            end
            prumer = suma / pocet
            puts "Průměr celé školy: #{prumer}"
            sleep 1
            odnejlepsiho = databaze.sort_by{|prvek|prvek["prumer"]}
            puts "Nejlepší student: #{odnejlepsiho[0]}"
        when 7
        when 8
            puts "Vybrali jste si možnost konec!"
            sleep 1
            puts "Těšíme se na vás příště.."
            sleep 1
            exit
        else
            puts "Zadali jste neplatnou volbu!"
            sleep 1
    end
end