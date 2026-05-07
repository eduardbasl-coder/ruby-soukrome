#osobni databaze homelabu
#struktura => {"cislo" => evidencnicislo, "typ" => typ, "cena" =>, "funkčnost" => , "pocetadres" => []}
databaze = []
volba = 1
puts "Vítej v mojí databázi mého HomeLabu"
while volba != 5
    sleep 1
    puts "1-přidat nový|2-odebrat|3-vypsat|4-najit|5-konec"
    sleep 1
    print "Zadejte prosim volbu: "
    volba = gets.to_i
    case volba
        when 1
            puts "Jdeme přidat nové vybavení do evidence HomeLabu!"
            sleep 1
            a = 0
            print "Zadejte prosim evidencni cislo vybavení: "
            cislo = gets.to_i
            databaze.each_with_index do |jo, i|
                if cislo == jo["cislo"]
                    a = a + 1
                else

                end
            end
            if a == 0
                sleep 1
                print "Zadejte prosim typ vybaveni: "
                typ = gets.to_s.strip
                sleep 1
                print "Zadejte prosim nakupni cenu vybavení: "
                cena = gets.to_i
                sleep 1
                print "Zadejte prosim stav funkčnosti: "
                funkcnost = gets.to_s.strip.downcase
                sleep 1
                print "Zadejte prosim pocet adres: "
                pocet = gets.to_i
                adresy = []
                sleep 1
                pocet.times do |i|
                    print "Zadejte prosim #{i + 1}. adresu: "
                    adresa = gets.to_s.strip
                    adresy << adresa
                end
                databaze << {"cislo" => cislo, "typ" => typ, "cena" => cena, "stav" => funkcnost, "pocetadres" => pocet, "adresy" => adresy}
                p databaze
            else
                puts "Bohužel, toho číslo je jiz obsazeno!"
                sleep 1
            end
        when 2
            puts "Jdeme hledat vec pro smazani v evidenci podle cisla!"
            sleep 1
            print "Zadejte prosim evidencni cislo: "
            evid = gets.to_i
            sleep 1
            b = 0
            databaze.each_with_index do |databazka, index|
                if evid == databaze[index]["cislo"]
                    b = index
                else
                    b = nil
                end
            end
            if b == nil
                puts "Bohužel, zadny item s timto cislem v evidenci neni!"
                sleep 2
            else
                databaze.delete_at(b)
                sleep 1
                puts "Věc s evid: číslem: #{evid}. byla uspesne smazana!"
                sleep 2
            end
        when 3
            puts "Zde je kompletní seznam zaevidovaného vybavení:"
            sleep 1
            databaze.each_with_index do |databazka, index|
                cislo = databaze[index]["cislo"].to_s
                typ = databaze[index]["typ"]
                cena = databaze[index]["cena"].to_s
                stav = databaze[index]["stav"]
                pocetadres = databaze[index]["pocet"]
                adresy = databaze[index]["adresy"]
                puts "#{cislo}. Typ: #{typ} Počáteční Cena: #{cena} Kč Stav: #{stav} Počet Adres: #{pocetadres}, Pole Adres: #{adresy}"
                sleep 1
            end
        when 4
            puts "Jdeme hledat vec v evidenci podle cisla!"
            sleep 1
            print "Zadejte prosim evidencni cislo: "
            evid = gets.to_i
            sleep 1
            b = 0
            databaze.each_with_index do |databazka, index|
                if evid == databaze[index]["cislo"]
                    b = index
                else
                    b = nil
                end
            end
            if b == nil
                puts "Bohužel, zadny item s timto cislem v evidenci neni!"
                sleep 2
            else
                puts "#{databaze[b]["cislo"]}. Typ: #{databaze[b]["typ"]} Počáteční cena: #{databaze[b]["cena"]} Kč Funkčnost: #{databaze[b]["stav"]} Počet Adres: #{databaze[b]["pocetadres"]} Pole Adres: #{databaze[b]["adresy"]}"
                sleep 2
            end
        when 5
            puts "Vybrali jste si konec..."
            sleep 2
            puts "Nashledanou..."
            sleep 2
            exit
        else
            puts "Zadali jste neplatnou volbu!"
            sleep 3
    end
end