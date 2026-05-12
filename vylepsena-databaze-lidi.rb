#databaze lidi spolecne s zarovnanim ve sloupci + def + find + map + array of hashes
#struktura = {"jmeno" => "", "prijmeni" => "", "vek" => "", "mesto" => "", "", "povolani" => "", "rodinystav" => ""}
def uspesne_pridani(cislo, jmeno, prijmeni, vek, mesto, povolani, stav)
puts "\n#{cislo}. #{jmeno} #{prijmeni} #{vek} let   bydliště: #{mesto}  povolani: #{povolani}  rodinny stav: #{stav} - uživatel úspěšně přidán do databáze!"
end

def vypis_prvku(cislo, jmeno, prijmeni, vek, mesto, povolani, stav)
print cislo.ljust(4)
print " | "
print jmeno.ljust(12)
print " | "
print prijmeni.ljust(12)
print " | "
print vek.ljust(3)
print "let "
print " | "
print mesto.ljust(18)
print " | "
print povolani.ljust(18)
print " | "
print stav.ljust(10)
print "\n"
sleep 1
end

databaze = []
volba = 1
databaze << {"cislo" => "1", "jmeno" => "Eduard", "prijmeni" => "Basl", "vek" => "16", "mesto" => "králův dvůr", "povolani" => "student", "rodinystav" => "svobodný"}
databaze << {"cislo" => "2", "jmeno" => "Petr", "prijmeni" => "Nirga", "vek" => "15", "mesto" => "počaply", "povolani" => "ajtak", "rodinystav" => "hopeless romantik"}
databaze << {"cislo" => "3", "jmeno" => "Ladislav", "prijmeni" => "Kurník", "vek" => "43", "mesto" => "beroun", "povolani" => "gynekolog", "rodinystav" => "zadaný"}
puts "Vítej v databázi lidí!"
sleep 1
print "Zadejte prosim uzivatelske jmeno: "
uzivatel = gets.to_s.strip.downcase
sleep 1
if uzivatel == "admin"
    puts "Vítej Admin!"
    sleep 2
    print "Zadejte prosim heslo pro Admin: "
    heslo = gets.to_s.strip
    if heslo == "1234"
        puts "Vítej v systému!"
        while volba != 6
            sleep 2
            puts "\n\n1-pridat cloveka|2-odebrat člověka|3-hledat člověka|4-vypsat databázi|5-přepsat údaj|6-konec]"
            sleep 1
            print "Zadejte jakou akci chcete provést: "
            volba = gets.to_i
            sleep 1
            case volba
                when 1                                                                          #pridani
                    a = 0
                    puts "Vybrali jste si možnost přidat nového člena do databáze!"
                    sleep 1
                    print "Zadejte prosim evidencni cislo cloveka ktereho chcete přidat: "
                    cislo = gets.to_s.strip
                    sleep 1
                    databaze.each do |prvek|
                        if cislo == prvek["cislo"]
                            a = a + 1
                        elsif cislo != prvek["cislo"]
                        end
                    end
                    if a == 1
                        puts "Bohužel, toto evidencni cislo již existuje!"
                        sleep 2
                    else
                        print "Zadejte prosim křestní jméno člověka: "
                        jmeno = gets.to_s.strip.capitalize
                        sleep 1
                        print "Zadejte prosim prijmeni člověka: "
                        prijmeni = gets.to_s.strip.capitalize
                        sleep 1
                        print "Zadejte prosim věk člověka: "
                        vek = gets.to_s.strip
                        sleep 1
                        print "Zadejte prosím město člověka: "
                        mesto = gets.to_s.strip.downcase
                        sleep 1
                        print "Zadejte prosim povolani člověka: "
                        povolani = gets.to_s.strip.downcase
                        sleep 1
                        print "Zadejte prosim rodiny stav člověka: "
                        stav = gets.to_s.strip.downcase
                        sleep 1
                        databaze << {"cislo" => cislo, "jmeno" => jmeno, "prijmeni" => prijmeni, "vek" => vek, "mesto" => mesto, "povolani" => povolani, "rodinystav" => stav}
                        uspesne_pridani(cislo, jmeno, prijmeni, vek, mesto, povolani, stav)
                        sleep 2
                    end
                when 2                                                                                          #odebrani
                    puts "Pojďme ostranit člověka z databáze!"
                    sleep 1
                    puts "[1-jmeno a prijmeni|2-evidencni cislo]"
                    sleep 1
                    print "Podle čeho chcete najit člověka na odstraneni: "
                    sleep 1
                    volba = gets.to_i
                    if volba == 1
                        puts "Jdeme hledat podle jména a příjmení!"
                        sleep 1
                        print "Zadejte prosim krestni jmeno: "
                        jmeno = gets.to_s.strip.capitalize
                        sleep 1
                        print "Zadejte prosim prijmeni: "
                        prijmeni = gets.to_s.strip.capitalize
                        sleep 1
                        index1 = databaze.find{|prvek, index| prvek["jmeno"] == jmeno}
                        index2 = databaze.find{|prvek, index| prvek["prijmeni"] == prijmeni}
                        if index2 == nil
                            puts "Bohužel, nikdo s tímto příjmením v naší databázi není!"
                            sleep 2
                        elsif index1 == nil
                            puts "Bohužel, nikdo s tímto jménem není v naší databázi!"
                            sleep 2
                        elsif index2 == index1 && index2 != nil
                            puts "Chcete opravdu smazat člověka: #{databaze[index]}?"
                            sleep 2
                        end
                    elsif volba == 2
                    else
                        puts "Zadali jste neplatnou volbu!"
                        sleep 2
                    end
                when 3
                when 4
                    puts "Zde je kompletní výpis databáze:"
                    sleep 1
                    databaze.each_with_index do |prvek, index|
                        cislo = prvek["cislo"]
                        jmeno = prvek["jmeno"]
                        prijmeni = prvek["prijmeni"]
                        vek = prvek["vek"]
                        mesto = prvek["mesto"]
                        povolani = prvek["povolani"]
                        stav = prvek["rodinystav"]
                        vypis_prvku(cislo, jmeno, prijmeni, vek, mesto, povolani, stav)
                    end
                when 5  
                when 6
                    puts "Vybrali jste možnost konec!"
                    sleep 1
                    puts "Těšíme se na vás příště!"
                    sleep 2
                    exit
                else
                    puts "\nBohužel, zadali jste neplatnou volbu!"
                    sleep 2
            end
        end
    else
        puts "Bohužel, toto není správné heslo pro Admin!"
        sleep 2
    end
else
    puts "Bohužel, tento uživatel nemá v našem systému co dělat!"
    sleep 2
end