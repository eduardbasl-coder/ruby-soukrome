#TO-DO 1. verze - pouze array, pridavani, ubirani a zobrazovani ukolů
    puts "\n\nVitejte v 1. verzi TO-DO aplikace!"
    puts "Zatím dokážu pouze přidávat úkoly, ubírat úkoly nebo \"odškrtnou\" hotový úkol!"
    volba = 1
    ukoly = Array.new
    splneni = Array.new
    a = 0
    b = 1
    until volba == 5
        puts "\n[ 1-přidat | 2-odebrat | 3-odškrtnout | 4-výpis seznamu | 5-konec ]"
        print "Co chcete udělat?: "
        volba = gets.to_i
        puts "\n"
        case volba
            when 1
                puts "Vybrali jste si možnost přidat nový úkol!"
                sleep 2
                print "Zadejte prosim #{b}. úkol který chcete zapsat na TO-DO list: "
                ukol = gets.to_s.downcase.strip
                ukoly[a] = ukol
                splneni [a] = "Nesplněno"
                a = a + 1
                b = b + 1
                sleep 2
                puts "\n#{b-1}. úkol: #{ukol} byl úspěšně přidán!"
                sleep 2
            when 2
                puts "Vybrali jste si možnost odebrat úkol!"
                sleep 2
                print "Zadejte číslo úkolu který chcete odstranit: "
                odpoved = gets.to_i
                sleep 1
                puts "Úkol číslo: #{odpoved} (#{ukoly[odpoved-1]}) byl úspěšně odstraněn!"
                ukoly[odpoved-1] = "Odstraněno"
                splneni[odpoved-1] = " "
                sleep 2
            when 3
                puts "Vybrali jste si možnost odškrtnout již splněný úkol!"
                sleep 2
                print "Zadejte prosim cislo ukolu ktery chcete odskrtnout: "
                cislo = gets.to_i
                splneni [cislo-1] = "Splněno"
                sleep 1
                puts "\nGratuluji, úkol: #{ukoly[cislo-1]} byl označen jako splněný!"
                sleep 2
            when 4
                c = 1
                puts "Vybrali jste si možnost výpis seznamu!\n"
                sleep 2
                a.times do
                    puts "#{c}. #{ukoly[(c-1)]}        #{splneni[(c-1)]}"
                    c = c + 1
                    sleep 0,5
                end
            when 5
                puts "Vybrali jste možnost ukončit!"
                sleep 2
                puts "Těšíme se na vás příště!"
                sleep 2
                exit
            else
                puts "Zadali jste neplatnou volbu!"
        end
    end