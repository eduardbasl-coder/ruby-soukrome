        #hadani nahodneho cisla - 1. verze
puts "Vitej dnes uz v druhem programu!"
randomcislo = rand(1..100)
puts "Vitej v programu na hadani nahodneho cisla mezi 1 a 100!"
puts "Myslim si cislo v rozmezi 1 az 100!"
hadani = 0
until hadani == randomcislo
    print "Zadej svuj tip: "
    hadani = gets.to_i
    if hadani < randomcislo
        puts "\nSkoro, ale moje cislo je vetsi nez tvuj tip!"
    elsif hadani > randomcislo
        puts "\nSkoro, ale moje cislo je mensi nez tvuj tip!"
    else
        puts "\n\nGratuluji, uhadl jsi moje cislo!"
    end
end

    #hadani nahodneho cisla - 2. verze
puts "Vitej dnes uz v druhem programu!"
randomcislo = rand(1..100)
puts "Vitej v programu na hadani nahodneho cisla mezi 1 a 100!"
puts "Myslim si cislo v rozmezi 1 az 100!"
hadani = 0
typ = 1
until hadani == randomcislo
    print "Zadej svuj #{typ}. tip: "
    hadani = gets.to_i
    if hadani < randomcislo
        puts "\nSkoro, ale moje cislo je vetsi nez tvuj tip!"
    elsif hadani > randomcislo
        puts "\nSkoro, ale moje cislo je mensi nez tvuj tip!"
    else
        puts "\n\nGratuluji, uhadl jsi moje cislo na #{typ} . pokus!"
    end
    typ = typ + 1
end
      
    #hadej cislo - 3. verze
puts "\n\n\nVitej jiz v nekolikate verzi hry Hádej Číslo!"
puts "Vymyslim si cislo od 1 do 100, ty budeš hádat a já ti budu říkat větší nebo menší!"
sleep 3
puts "Myslim si cislo od 1 do 100..."
pocet = 1
cislo = rand (1..100)
tip = 101
while (tip > cislo) or (tip < cislo)
    print "\nZadej svuj #{pocet}. pokus: "
    tip = gets.to_i
    if tip > cislo
            puts "\nMoje číslo je menší!"
        elsif tip < cislo
            puts "\nMoje číslo je větší!"
        else
            puts "\n\n\nGratulace, uhadl jsi na #{pocet}. pokus!"
    end
    pocet = pocet + 1
end