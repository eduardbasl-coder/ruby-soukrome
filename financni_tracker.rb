#osobni financni tracker
#struktura = {"ID" => , "typ" => , "castka" => , "kategorie" => , "popis" => , "datum" => }
databaze = Array.new
require "json"
a = 1
puts "Vítej v mém osobním finančním trackeru v Ruby!"
while volba != 8
    sleep 1
    puts "\n\n[1-Přidat transakci|2-Vyspat seznam transakcí|3-Smazat transakci|4-Filtrovat|5-Statistiky|6-Uložit do souboru|7-Načíst ze souboru|8-Konec]"
    sleep 1
    print "Zadejte svojí volbu: "
    volba = gets.to_i
    case volba
        when 1
            puts "Jdeme přidat novou transakci do databáze!"
            sleep 1
            print "Zadejte prosim #{a}. typ transakce: "
            typ = gets.to_s.strip.downcase
        when 2
        when 3
        when 4
        when 5
        when 6
        when 7
        when 8
            puts "Vybrali jste možnost konec!"
            sleep 1
            puts "Těším se na tebe příště!"
            sleep 2
            exit
        else
            puts "Zadali jste neplatnou možnost!"
            sleep 3
    end
end