=begin
puts "Ahoj, světe!"
puts "Tohle je program abych si procvicil Ruby"
print "Zadej svoje jmeno prosim: "
jmeno = gets.to_s
puts "Ahoj #{jmeno}"
puts "Ahoj " + jmeno
print "Zadejte svoje prijmeni prosim: "
prijmeni = gets.to_s
puts "Ahoj " + jmeno + " " + prijmeni
puts "Ahoj " + prijmeni + " " + jmeno
repeat
print "Zadej svoje jmeno prosim: "
jmeno = gets.to_s
puts "Vase jmeno je: " + jmeno
until jmeno !=  "Kokot"
cas1 = Time.now
puts cas1
sleep 5
cas2 = Time.now
puts cas2
puts "Ahoj"
sleep 20
puts "Peto"
promenna = "testovaci retezec"
puts promenna[9,5]
promenna = "slOvO"
puts promenna.upcase
puts promenna.downcase
puts promenna.capitalize
puts promenna.swapcase
promenna = "slOvO"
puts promenna.reverse
puts promenna
puts promenna.reverse!
puts promenna
puts rand(max=3)                              #vypise nahodne cislo mezi 0 a 2 (normálně vypíše náhodné číslo mezi 0 a 2)
puts "Ahoj peto, dneska je ale krasny #{rand(max=9)+1} dnesni den!"

puts "Vase dnesni nahodna sleva je: #{rand(max=11)*10} %"

print "Zadejte vase jmeno: "
jmeno = gets.to_s
puts "Vase jmeno je: " + jmeno.capitalize


#21.3.26
puts "Vitej v mem programu!"
print "Jak ti mam rikat?: "
osloveni = gets.to_s
puts "Vitej #{osloveni.capitalize}"
print "Jake je tvoje prijmeni?: "
prijmeni = gets.to_s
puts "Ahoj " + osloveni.capitalize + " " + prijmeni.capitalize
print "Zadejte text: "
text = gets.to_s
print "Zadejte cislo znaku od ktereho chcete zacit vypis: "
cislo1 = gets.to_i
print "Zadejte pocet znaku ktere chcte vypsat: "
cislo2 = gets.to_i
puts "Vami zadany text: " + text
puts "Prejte si vypsat " + cislo2.to_s + " znaku od znaku cislo " + cislo1.to_s
puts "Vypis zanku na vase vyzadani: " + text[cislo1, cislo2]
print "Zadejte text u ktereho chcete obratit velikos pismen (velka pismena na mala a mala pismena na velka): "
textotoceni = gets.to_s
puts "Vami zadany text je: " + textotoceni
puts "Otoceny text je: " + textotoceni.reverse

    #vetveni CASE
puts "Vitej v mem programu na procivecni CASE vetveni!"
puts "[1-Ahoj, 2-Neboj, 3-sukej]"
print "Zadej cislo pro zobrazeni zpravy: "
cislo = gets.to_i
case cislo
when 1
    puts "Ahoj"
    puts "Vitej v mem programu!"
when 2
    puts "Neboj"
    puts "Vitej v mem programu!"
when 3
    puts "sukej"
    puts "Vitej v mem programu!"
else
    puts "Bohuzel jsi zadal neplatnou volbu!"
end


puts "\nvitej v mem dalsim programu na procviceni vetveni CASE!"
print "Zdejte prvni cislo: "
cislo1 = gets
puts "\n[1-scitani, 2-odcitani, 3-nasobeni, 4-deleni]"
print "Zadejte jakou operaci chcete provest: "
operace = gets.to_i
print "\nZadejte druhe cislo: "
cislo2 = gets
case operace
when 1
    puts "Vysledek scitani je roven: " + (cislo1 + cislo2).to_s
when 2
    puts "Vysledek odcitani je roven: " + (cislo1 - cislo2).to_s
when 3
    puts "Vysledek nasobeni je roven: " + (cislo1 * cislo2).to_s
when 4
    puts "Vysledek deleni je roven: " + (cislo1.to_f / cislo2.to_f  ).to_s
else
    puts "Zadali jste neplatnou operaci!"
end
=end
=begin

#22.3.26
puts "Vitej v dalsim programu na procviceni CASE!"
puts "[1-Scitaní, 2-Odcitani, 3-Nasobeni, 4-Deleni]"
print "Zadejte jakou operaci chcete provest: "
operace = gets.to_i
case operace
    when 1
        puts "\nVybrali jste si moznost scitani!"
        print "Zadejte prvni cislo: "
        cislo1 = gets.to_f
        print "\nZadejte druhe cislo: "
        cislo2 = gets.to_f
        puts "\nVysledek scitani je roven: #{cislo1+cislo2}"
        puts "Vysledek scitani je roven: " + (cislo1 + cislo2).to_s
        vysledek = cislo1 + cislo2
        puts "Vysledek scitani je roven: " + vysledek.to_s
    when 2
        puts "\nVybrali jste si mznost odcitani!"
        print "Zadejte prvni cislo: "
        cislo1 = gets.to_f
        print "\nZadejte druhe cislo: "
        cislo2 = gets.to_f
        puts "\nVysledek odcitani je roven: #{cislo1 - cislo2}"
        puts "Vysledek odcitani je roven: " + (cislo1 - cislo2).to_s
        vysledek = cislo1 - cislo2
        puts "Vysledek odcitani je roven: " + vysledek.to_s
    when 3
        puts "\nVybrali jste si moznost nasobeni!"
        print "Zadejte prvni cislo: "
        cislo1 = gets.to_f
        print "\nZadejte druhe cislo: "
        cislo2 = gets.to_f
        puts "\nVysledek nasobeni je roven: #{cislo1 * cislo2}"
        puts "Vysledek nasobeni je roven: " + (cislo1 * cislo2).to_s
        vysledek = cislo1 * cislo2
        puts "Vysledek nasobeni je roven: " + vysledek.to_s
    when 4
        puts "\nVybrali jste si moznost deleni!"
        print "Zadejte prvni cislo: "
        cislo1 = gets.to_f
        print "\nZadejte druhe cislo: "
        cislo2 = gets.to_f
        puts "\nVysledek deleni je roven: #{cislo1.to_f / cislo2.to_f}"
        puts "Vysledek deleni je roven: " + (cislo1.to_f / cislo2.to_f).to_s
        vysledek = cislo1.to_f / cislo2.to_f
        puts "Vysledek deleni je roven: " + vysledek.to_s
    else
        puts"\nZadali jste neplatnou moznost!"
end


    #hadani nahodneho cisla - prvni verze
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

    #hadani nahodneho cisla - druha verze
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
=end

#23.3.26
=begin
    #mala nasobilka
puts "Vitej v programu na vypis male nasobilky!"
print "Pro jake cislo chcete vypsat:  "
cislo = gets.to_i
10.times do |i|
    puts "#{cislo} x #{i+1} = #{cislo*(i+1)}"
end


    #Case větvení
puts "Vitej v dnesnim dotazniku!"
puts "Tento dotaznik slouzi hlavne k procviceni větvení case"
puts "\n*Odpovidej prosim podle pravdy, děkuji!"
print"Máte rádi programování?: "
odpoved = gets.strip.downcase
case odpoved
    when "ano"
        puts "\nDobrá, to rád slyším, alespoň něco mame spolecneho!"
        print "Baví tě kromě softwaru i hardware?: "
        odpoved = gets.strip.downcase
        case odpoved
            when "ano"
                puts "\nDobrá, další společný zájem, to rád slyším!"
                puts "Podle mého názoru je kombinace software a hardware nejlepší!"
            when "ne"
                puts "\nBohuzel, to si asi o hardware moc nepokecame"
                print "Chceš si i přes to popovidat o software?"
                odpoved = gets.strip.downcase
                case odpoved
                    when "ano"
                        puts "\nDobrá, mužeme tedy pokračovat alespoň s nějakým tématem!"
                        puts "[1-vývoj, 2-design, 3-nic z uvedeneho]"
                        print "Ktera z nasledujicich moznosti te ohledne softwaru nejvice zajima?: "
                        odpoved = gets.to_i
                        case odpoved
                            when 1
                                puts "\nJe super že tě zajímá vývoj softwaru, jen tak dál!"
                            when 2
                                puts "\nTo je fajn, že se zajímáš o design softwaru!"
                            when 3
                                puts "\nNevadí, třeba se teprve hledáš!"
                            else
                                puts "\nBohuzel jsi zadal neplatnou moznost"
                        end
                    when "ne"
                        puts "\nBohuzel, to si asi moc nepokecame"
                        puts "Nevadí, třeba si nekdy o nasich zajmech pokecame  !"
                    else
                        puts "Bohuzel jsi zadal neplatnou moznost"  
                end
            else
                puts "Bohuzel jsi zadal neplatnou moznost"  
        end
    when "ne"
        puts "\nBohuzel, to si asi moc nepokecame"
        puts "Nevadí, třeba se nekdy se zajmy potkame!"
    else
        puts "Bohuzel jsi zadal neplatnou moznost"    
end


    #kalkulacka CASE - menu misto cisel specialni znaky, vypis pouze na 3 des mista pomoci .round (3)
puts "Vitej v moji prvni kalkulacce s menem"
puts " specialni znaky!"
puts "[ + | - | * | / ]"
print "Zadejte jakou operaci chcete provest (znak): "
operace = gets.strip
case operace
    when "+"
        puts "\nVybrali jste si moznost scitani!"
        print "Zadejte prvni cislo pro soucet: "
        a = gets.to_f
        print "\nZedejte druhe cislo pro soucet: "
        b = gets.to_f
        vysledek = a + b
        vysledek = vysledek.round(3)
        puts "\n\n#{a} + #{b} = #{vysledek}"
    when "-"
        puts "\nVybrali jste si moznost odcitani!"
        print "Zadejte prvni cislo pro odecet: "
        a = gets.to_f
        print "\nZedejte druhe cislo pro odecet: "
        b = gets.to_f
        vysledek = a - b
        vysledek = vysledek.round(3)
        puts "\n\n#{a} - #{b} = #{vysledek}"
    when "*"
        puts "\nVybrali jste si moznost nasobeni!"
        print "Zadejte prvni cislo pro nasobeni: "
        a = gets.to_f
        print "\nZedejte druhe cislo pro nasobeni: "
        b = gets.to_f
        vysledek = a * b
        vysledek = vysledek.round(3)
        puts "\n\n#{a} * #{b} = #{vysledek}"
    when "/"
        puts "\nVybrali jste si moznost deleni!"
        print "Zadejte prvni cislo pro deleni: "
        a = gets.to_f
        print "\nZedejte druhe cislo pro deleni: "
        b = gets.to_f
        case b
            when 0
            puts "Bohuzel, nulou nelze delit!!"
            else
            vysledek = a / b
            vysledek = vysledek.round(3)
            puts "\n\n#{a} / #{b} = #{vysledek}"
        end
end
=end


#24.3.2026
=begin
15.times do
    a=rand(1..10)
    puts a
end

    #prvni prototyp RPG hra v Ruby - single player
puts "\n\n\nVitej v moji prvni primitivni hre v Ruby!"
puts "Při výběru útoku bude protihráči uděleno poškození 10 - 30 HP"
puts "Při výběru léčení budou vaše HP zvětšeny o 20 HP"
zivotyhrac = 100
zivotybot = 100
until (zivotyhrac<0) or (zivotybot<0)
    puts "\n\nHráč: #{zivotyhrac} HP          |           Nepřítel: #{zivotybot} HP"
    puts "====================================================="
    puts "\n[ 1-Útok | 2-Léčení | 3-Vzdát se]"
    print "Z následující nabídky vyber jak chceš pokračovat: "
    volbahrac = gets.to_i
    case volbahrac
        when 1
            puts "\nVybral jsi si útok!"
            utokodhrace = rand(10..30)
            puts "Nepříteli bylo uděleno poškození #{utokodhrace} HP!"
            zivotybot = zivotybot - utokodhrace
            sleep 2
            puts "Teď je řada na tvém protihráči!"
            sleep 2
            print "Přemýšlí"
            sleep 1
            print "."
            sleep 1
            print "." 
            sleep 1
            print ".\n\n"
            volbabot = rand (1..2)
            case volbabot
                when 1
                    puts "Protihráč si vybral útok!"
                    utokodbota = rand (10..30)
                    puts "Od protivníka vám bylo uděleno poškození #{utokodbota} HP!"
                    zivotyhrac = zivotyhrac - utokodbota
                when 2
                    puts "Protihráč si vybral léčení!"
                    puts "Protihráčovi HP byli zvýšeny o 20 HP!"
                    zivotybot = zivotybot + 20
            end
        when 2
            puts "\nVybral jsi si leceni!"
            puts "Tvoje HP byli zvýšeny o 20HP!"
            zivotyhrac = zivotyhrac + 20
            sleep 2
            puts "Teď je řada na tvém protihráči!"
            sleep 2
            print "Přemýšlí"
            sleep 1
            print "."
            sleep 1
            print "." 
            sleep 1
            print ".\n\n"
            volbabot = rand (1..2)
            case volbabot
                when 1
                    puts "Protihráč si vybral útok!"
                    utokodbota = rand (10..30)
                    puts "Od protivníka vám bylo uděleno poškození #{utokodbota} HP!"
                    zivotyhrac = zivotyhrac - utokodbota
                when 2
                    puts "Protihráč si vybral léčení!"
                    puts "Protihráčovi HP byli zvýšeny o 20 HP!"
                    zivotybot = zivotybot + 20
            end
        when 3
            puts "\nVybral jsi moznost vzdat se!"
            sleep 2
            print "Tesime se na tebe priste"
            sleep 1
            print "."
            sleep 1
            print "." 
            sleep 1
            print "."
            exit
    end

end
if zivotyhrac > zivotybot
        puts "\n\n\nGratuji, vyhrál jsi!!!"
        sleep 3
        puts "Děkujeme že jsi si zahrál a těším se na tebe příště!"
        sleep 3
        exit
    elsif  zivotyhrac < zivotybot
        puts "\n\n\nBohužel, protihráč tě porazil!"
        sleep 3
        puts "Děkujeme že jsi si zahrál a těším se na tebe příště!"
        sleep 3
        exit
    elsif zivotyhrac == zivotybot
        puts "\n\n\nA je to remíza!"
        sleep 3
        puts "Děkujeme že jsi si zahrál a těším se na tebe příště!"
        sleep 3
        exit
end


    #prvni prototyp RPG hra v Ruby - multi player
puts "\n\n\nVitej v moji prvni primitivni hre v Ruby!"
puts "Při výběru útoku bude protihráči uděleno poškození 10 - 30 HP"
puts "Při výběru léčení budou vaše HP zvětšeny o 20 HP"
zivotyhrac1 = 100
zivotyhrac2 = 100
until (zivotyhrac1<0) or (zivotyhrac2<0)
    puts "\n\nHráč1: #{zivotyhrac1} HP          |           Hráč2: #{zivotyhrac2} HP"
    puts "====================================================="
    puts "\n[ 1-Útok | 2-Léčení | 3-exit]"
    print "Z následující nabídky vyber jak chceš pokračovat (Hráč1): "
    volbahrac = gets.to_i
    case volbahrac
        when 1
            puts "\nHráč1 si vybral útok!"
            utokodhrace1 = rand(10..30)
            puts "Hráči2 bylo uděleno poškození #{utokodhrace1} HP!"
            zivotyhrac2 = zivotyhrac2 - utokodhrace1
            sleep 2
            puts "Teď je řada na tobě Hráč2!"
            puts "\n[ 1-Útok | 2-Léčení | 3-exit]"
            print "Z následující nabídky vyber jak chceš pokračovat (Hráč2): "
            volbahrac = gets.to_i
            case volbahrac
                when 1
                    puts "\nHráč2 si vybral útok!"
                    utokodhrace2 = rand(10..30)
                    puts "Hráči1 bylo uděleno poškození #{utokodhrace2} HP!"
                    zivotyhrac1 = zivotyhrac1 - utokodhrace2
                    sleep 2
                when 2
                    puts "\nHráč2 si vybral leceni!"
                    puts "HP Hráče2 byli zvýšeny o 20HP!"
                    zivotyhrac2 = zivotyhrac2 + 20
                    sleep 2
                when 3
                    sleep 2
                    exit
            end
        when 2
            puts "\nHráč1 si vybral leceni!"
            puts "HP Hráče1 byli zvýšeny o 20HP!"
            zivotyhrac1 = zivotyhrac1 + 20
            sleep 2
            puts "Teď je řada na tobě Hráč2!"
            puts "\n[ 1-Útok | 2-Léčení | 3-exit]"
            print "Z následující nabídky vyber jak chceš pokračovat (Hráč2): "
            volbahrac = gets.to_i
            case volbahrac
                when 1
                    puts "\nHráč2 si vybral útok!"
                    utokodhrace2 = rand(10..30)
                    puts "Hráči1 bylo uděleno poškození #{utokodhrace2} HP!"
                    zivotyhrac1 = zivotyhrac1 - utokodhrace2
                    sleep 2
                when 2
                    puts "\nHráč2 si vybral leceni!"
                    puts "HP Hráče2 byli zvýšeny o 20HP!"
                    zivotyhrac2 = zivotyhrac2 + 20
                    sleep 2
                when 3
                    sleep 2
                    exit
            end
        when 3
            exit
    end

end
if zivotyhrac1 > zivotyhrac2
        puts "\n\n\nKonečný výsledek: Hráč1: #{zivotyhrac1} HP        |           Hráč2: #{zivotyhrac2} HP!"
        puts "Gratuji Hráč1, vyhrál jsi!!!"
        sleep 3
        puts "Děkujeme že jste si zahráli a těším se na vás příště!"
        sleep 3
        exit
    elsif  zivotyhrac1 < zivotyhrac2
        puts "\n\n\nKonečný výsledek: Hráč1: #{zivotyhrac1} HP        |           Hráč2: #{zivotyhrac2} HP!"
        puts "Gratuji Hráč2, vyhrál jsi!!!"
        sleep 3
        puts "Děkujeme že jste si zahráli a těším se na vás příště!"
        sleep 3
        exit
    elsif zivotyhrac1 == zivotyhrac2
        puts "\n\n\nKonečný výsledek: Hráč1: #{zivotyhrac1} HP        |           Hráč2: #{zivotyhrac2} HP!"
        puts "A je to remíza!"
        sleep 3
        puts "Děkujeme že jste si zahráli a těším se na vás příště!"
        sleep 3
        exit
end


    #generovani hesel
puts "Vítej v generatoru Hesel!"
print "Jsi připraven začít?(ano/ne): "
volba = gets.strip.downcase

case volba
when "ano"
  loop do
    puts "\nSuper, pojďme na to!"
    print "Kolik znaků si přejete aby mělo vaše heslo?: "
    velikost = gets.to_i

    mala = ("a".."z").to_a
    velka = ("A".."Z").to_a
    cisla = ("0".."9").to_a
    specialni = ["!", "@", "#", "$", "%", "&", "*"]
    znaky = mala + velka + cisla + specialni

    print "\nVaše náhodně vygenerované heslo o počtu znaků #{velikost} je: "
    velikost.times do
      nahoda = rand(1..4)
      case nahoda
      when 1
        print mala.sample
      when 2
        print velka.sample
      when 3
        print cisla.sample
      when 4
        print specialni.sample
      end
    end
    puts "\n"

    print "\nPřejete si vygenerovat další heslo?(ano/ne): "
    volba = gets.strip.downcase
    break if volba == "ne"
  end

when "ne"
  puts "\nNevadí!"
else
  puts "\nNeplatná volba!"
end


    #hadej cislo! - 3.
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
=end


#25.3.26
=begin
    #kámen, nůžky, papír
puts "\n\n\nVítej v digitální verzi hry kámen nůžky papír!"
puts "Z nabídky vybrereš svůj tah, robot vybere náhodnou kombinaci a uvidí se kdo vyhrál!"
puts "[ 1-Kámen | 2-Nůžky | 3-Papír | 4-exit]"
print "Jak si přeješ pokračovat: "
volbahrac = gets.to_i
case volbahrac
    when 1
        sleep 2
        puts "\nVybrali jste si Kámen!"
        sleep 2
        puts "Teď je řada na BOTovi"
        sleep 2
        print "Přemýšlí"
        sleep 1
        print "."
        sleep 1
        print "."
        sleep 1
        print ".\n\n"
        sleep 2
        volbabot = rand (1..3)
        case volbabot
            when 1
                puts "BOT si vybral Kámen!\n"
                sleep 2
            when 2
                puts "BOT si vybral Nůžky!\n"
                sleep 2
            when 3
                puts "BOT si vybral Papír\n"
                sleep 2
        end
        if (volbahrac == 1) and (volbabot == 1)
                puts "Oba jste dali Kámen, remíza!"
                sleep 2
            elsif (volbahrac == 1) and (volbabot == 2)
                puts "Dal jsi Kámen a BOT dal Nůžky, vyhrál jsi!"
                sleep 2
            elsif (volbahrac == 1) and (volbabot == 3)
                puts "Dal jsi Kámen a BOT dal Papír, BOT vyhrál!"
                sleep 2
            elsif (volbahrac == 2) and (volbabot == 1)
                puts "Dal jsi Nůžky a BOT dal Kámen, BOT vyhrál!"
                sleep 2
            elsif (volbahrac == 2) and (volbabot == 2)
                puts "Oba jste dali Nůžky, remíza!"
                sleep 2
            elsif (volbahrac == 2) and (volbabot == 3)
                puts "Dal jsi Nůžky a BOT dal Papír, vyhrál jsi!"
                sleep 2
            elsif (volbahrac == 3) and (volbabot == 1)
                puts "Dal jsi Papír a BOT dal Kámen, vyhrál jsi!"
                sleep 2
            elsif (volbahrac == 3) and (volbabot == 2)
                puts "Dal jsi Papír a BOT dal Nůžky, BOT vyhrál!"
                sleep 2
            elsif (volbahrac == 3) and (volbabot == 3)
                puts "Oba jste dali Papír, remíza"
                sleep 2
        end
    when 2
        sleep 2
        puts "\nVybrali jste si Nůžky!"
        sleep 2
        puts "Teď je řada na BOTovi"
        sleep 2
        print "Přemýšlí"
        sleep 1
        print "."
        sleep 1
        print "."
        sleep 1
        print ".\n\n"
        sleep 2
        volbabot = rand (1..3)
        case volbabot
            when 1
                puts "BOT si vybral Kámen!\n"
                sleep 2
            when 2
                puts "BOT si vybral Nůžky!\n"
                sleep 2
            when 3
                puts "BOT si vybral Papír\n"
                sleep 2
        end
        if (volbahrac == 1) and (volbabot == 1)
                puts "Oba jste dali Kámen, remíza!"
                sleep 2
            elsif (volbahrac == 1) and (volbabot == 2)
                puts "Dal jsi Kámen a BOT dal Nůžky, vyhrál jsi!"
                sleep 2
            elsif (volbahrac == 1) and (volbabot == 3)
                puts "Dal jsi Kámen a BOT dal Papír, BOT vyhrál!"
                s       leep 2
            elsif (volbahrac == 2) and (volbabot == 1)
                puts "Dal jsi Nůžky a BOT dal Kámen, BOT vyhrál!"
                sleep 2
            elsif (volbahrac == 2) and (volbabot == 2)
                puts "Oba jste dali Nůžky, remíza!"
                sleep 2
            elsif (volbahrac == 2) and (volbabot == 3)
                puts "Dal jsi Nůžky a BOT dal Papír, vyhrál jsi!"
                sleep 2
            elsif (volbahrac == 3) and (volbabot == 1)
                puts "Dal jsi Papír a BOT dal Kámen, vyhrál jsi!"
                sleep 2
            elsif (volbahrac == 3) and (volbabot == 2)
                puts "Dal jsi Papír a BOT dal Nůžky, BOT vyhrál!"
                sleep 2
            elsif (volbahrac == 3) and (volbabot == 3)
                puts "Oba jste dali Papír, remíza"
                sleep 2
        end
    when 3
        sleep 2
        puts "\nVybrali jste si Papír!"
        sleep 2
        puts "Teď je řada na BOTovi"
        sleep 2
        print "Přemýšlí"
        sleep 1
        print "."
        sleep 1
        print "."
        sleep 1
        print ".\n\n"
        sleep 2
        volbabot = rand (1..3)
        case volbabot
            when 1
                puts "BOT si vybral Kámen!\n"
                sleep 2
            when 2
                puts "BOT si vybral Nůžky!\n"
                sleep 2
            when 3
                puts "BOT si vybral Papír\n"
                sleep 2
        end
        if (volbahrac == 1) and (volbabot == 1)
                puts "Oba jste dali Kámen, remíza!"
                sleep 2
            elsif (volbahrac == 1) and (volbabot == 2)
                puts "Dal jsi Kámen a BOT dal Nůžky, vyhrál jsi!"
                sleep 2
            elsif (volbahrac == 1) and (volbabot == 3)
                puts "Dal jsi Kámen a BOT dal Papír, BOT vyhrál!"
                s       leep 2
            elsif (volbahrac == 2) and (volbabot == 1)
                puts "Dal jsi Nůžky a BOT dal Kámen, BOT vyhrál!"
                sleep 2
            elsif (volbahrac == 2) and (volbabot == 2)
                puts "Oba jste dali Nůžky, remíza!"
                sleep 2
            elsif (volbahrac == 2) and (volbabot == 3)
                puts "Dal jsi Nůžky a BOT dal Papír, vyhrál jsi!"
                sleep 2
            elsif (volbahrac == 3) and (volbabot == 1)
                puts "Dal jsi Papír a BOT dal Kámen, vyhrál jsi!"
                sleep 2
            elsif (volbahrac == 3) and (volbabot == 2)
                puts "Dal jsi Papír a BOT dal Nůžky, BOT vyhrál!"
                sleep 2
            elsif (volbahrac == 3) and (volbabot == 3)
                puts "Oba jste dali Papír, remíza"
                sleep 2
        end
    when 4
        puts "Vybrali jste si možnosr EXIT!"
        sleep 2
        puts "Tesime se na vas priste!"
        sleep 2
    else
        puts "Bohužel, zadali jste neplatnou možnost!"
        sleep 2
end
=end


#26.3.26
=begin
    #vypisy casu - procviceni strftime
puts "Vitej v mem prvnim programu ktery slouzi ciste k prociveni zobrazeni casovych udajů"
cas = Time.now
puts "Aktuální čas: #{cas}"
puts "Aktuální čas s úpravou do formátu bez sekund: #{cas.strftime("%H:%M")}"
puts "Aktuální čas s úpravou do formátu se sekundami: #{cas.strftime("%H:%M:%S")}"
puts "Aktuální datum bez roku: #{cas.strftime("%m.%d.")}"
puts "Aktuální datum s rokem 2 cisla: #{cas.strftime("%d.%m.%y")}"
puts "Aktuální datum s rokem: #{cas.strftime("%d.%m.%Y")}"
puts "Aktuální datum a cas bez sekund: #{cas.strftime("%d.%m.%Y %H:%M")}"
puts "Aktuální datum a cas se sekundami: #{cas.strftime("%d.%m.%Y %H:%M:%S")}"
puts "Všechny informace: #{cas.strftime("%d.%m.%Y %H:%M:%S, %W. týden, den = %A měsíc = %B")}"

    #Chat BOT - 1. verze
puts "Vitej v první (1.0) verzi Chat BOT Retard!"
puts "Můžeš se zkusit zeptat například jaký je dnes den, kolik je hodin, jaký je rok a tak..."
print "Jak ti mám říkat?: "
jmeno = gets.to_s.strip.capitalize
puts "\nDobře, vítej #{jmeno}!"
odpoved2 = "ano"
until odpoved2 == "ne"
    print "\nNa co by jsi se chtěl zeptat: "
    odpoved = gets.strip.downcase
    case odpoved
        when ("nic"), ("už nic"), ("uz nic"), ("to je vsechno")
            print "\nDobře, dekuji za moje použití a těším se na tebe příště!"
            sleep 1
            print "."
            sleep 1
            print "."
            sleep 1
            print "."
            sleep 2
            exit
        when ("kolik je hodin?"), ("kolik je hodin"), ("kolik je?"), ("kolik je"), ("cas"), ("cas?")
            cas = Time.now
            puts "\nAktuálně je: " + cas.strftime("%H:%M:%S")
            print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
            odpoved2 = gets.strip.downcase
        when ("jaky je den?"), ("co je dneska?"), ("jaky je den"), ("co je dneska"), ("jaky je dnes den"), ("jaky je dnes den?"), ("co je dneska za den?"), ("co je dneska za den?")
            den = Time.now
            puts "\nDneska je: #{den.strftime("%A")}"
            print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
            odpoved2 = gets.strip.downcase
        when ("jaky je datum"), ("kolikateho je"), ("jaky je dnesni datum"), ("dnesni datum"), ("jaky je datum?"), ("kolikateho je?"), ("jaky je dnesni datum?"), ("dnesni datum?"), ("datum"), ("datum?")
            datum = Time.now
            puts "\nDnes je: #{datum.strftime("%d.%m.%Y")}"
            print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
            odpoved2 = gets.strip.downcase
        when ("jaky je rok"), ("rok"), ("aktualni rok"), ("jaky je aktualni rok"), ("jaky je rok?"), ("rok?"), ("aktualni rok?"), ("jaky je aktualni rok?")
            rok = Time.now
            puts "\nAktuální rok je: #{rok.strftime("%y (%Y)")}"
            print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
            odpoved2 = gets.strip.downcase
        when ("jaky je mesic"), ("mesic"), ("jaky je aktualni mesic"), ("aktualni mesic"), ("jaky je mesic?"), ("mesic?"), ("jaky je aktualni mesic?"), ("aktualni mesic?")
            mesic = Time.now
            puts "\nAktuální měsíc je: #{mesic.strftime("%B (%m. Měsíc)")}"
            print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
            odpoved2 = gets.strip.downcase
        when ("kolikaty je tyden"), ("jaky je tyden"), ("tyden"), ("jaky je aktualni tyden"), ("aktualni tyden"), ("kolikaty tyden v roce je"), ("kolikaty je tyden?"), ("jaky je tyden?"), ("tyden?"), ("jaky je aktualni tyden?"), ("aktualni tyden?"), ("kolikaty tyden v roce je?")
            tyden = Time.now
            puts "\nAktuálně je: #{tyden.strftime("%W")}. týden v roce #{tyden.strftime("%Y")}"
            print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
            odpoved2 = gets.strip.downcase
        when ("jak se mas"), ("jak je"), ("jak se vede"), ("jak se mas?"), ("jak je?"), ("jak se vede?")
            puts "\nMám se dobře i přes to, že jsem stroj!, moc děkuju za optání!"            
            print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
            odpoved2 = gets.strip.downcase
        when ("kdo te stvoril"), ("jak si vznikl"), ("licence"), ("lore"), ("kdo te stvoril?"), ("jak si vznikl?"), ("licence?"), ("lore?")
            puts "\nJsem chat bot vytvoren jakožto studijní projekt studenta IT, jsem naprogramován v jazyku RUBY a aktuálně používáš verzi 1.0!"
            print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
            odpoved2 = gets.strip.downcase
        when ("vygeneruj mi heslo"), ("vygeneruj mi nahodne heslo"), ("nahodne heslo"), ("vygeneruj heslo"), ("generuj heslo"), ("vygeneruj mi heslo?"), ("vygeneruj mi nahodne heslo?"), ("nahodne heslo?"), ("vygeneruj heslo?"), ("generuj heslo?")
            puts "\nSuper, pojďme na to!"
            print "Kolik znaků si přejete aby mělo vaše heslo?: "
            velikost = gets.to_i

            mala = ("a".."z").to_a
            velka = ("A".."Z").to_a
            cisla = ("0".."9").to_a
            specialni = ["!", "@", "#", "$", "%", "&", "*"]
            znaky = mala + velka + cisla + specialni

            print "\nVaše náhodně vygenerované heslo o počtu znaků #{velikost} je: "
            velikost.times do
                nahoda = rand(1..4)
                case nahoda
                    when 1
                        print mala.sample
                    when 2
                        print velka.sample
                    when 3
                        print cisla.sample
                    when 4
                        print specialni.sample
                end
            end
            print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
            odpoved2 = gets.strip.downcase
        when ("kalkulacka"), ("kalkulačka"), ("spocitej"), ("pocitani"), ("spočítej"), ("počítej"), ("pocitej"), ("počítání"), ("kalkulacka?"), ("kalkulačka?"), ("spocitej?"), ("pocitani?"), ("spočítej?"), ("počítání?")
            puts "[ + | - | * | / ]"
            print "Zadejte jakou operaci chcete provest (znak): "
            operace = gets.strip
            case operace
                when "+"
                    puts "\nVybrali jste si moznost scitani!"
                    print "Zadejte prvni cislo pro soucet: "
                    a = gets.to_f
                    print "\nZedejte druhe cislo pro soucet: "
                    b = gets.to_f
                    vysledek = a + b
                    vysledek = vysledek.round(3)
                    puts "\n\n#{a} + #{b} = #{vysledek}"
                when "-"
                    puts "\nVybrali jste si moznost odcitani!"
                    print "Zadejte prvni cislo pro odecet: "
                    a = gets.to_f
                    print "\nZedejte druhe cislo pro odecet: "
                    b = gets.to_f
                    vysledek = a - b
                    vysledek = vysledek.round(3)
                    puts "\n\n#{a} - #{b} = #{vysledek}"
                when "*"
                    puts "\nVybrali jste si moznost nasobeni!"
                    print "Zadejte prvni cislo pro nasobeni: "
                    a = gets.to_f
                    print "\nZedejte druhe cislo pro nasobeni: "
                    b = gets.to_f
                    vysledek = a * b
                    vysledek = vysledek.round(3)
                    puts "\n\n#{a} * #{b} = #{vysledek}"
                when "/"
                    puts "\nVybrali jste si moznost deleni!"
                    print "Zadejte prvni cislo pro deleni: "
                    a = gets.to_f
                    print "\nZedejte druhe cislo pro deleni: "
                    b = gets.to_f
                    case b
                        when 0
                        puts "Bohuzel, nulou nelze delit!!"
                        else
                        vysledek = a / b
                        vysledek = vysledek.round(3)
                        puts "\n\n#{a} / #{b} = #{vysledek}"
                    end
            end
            print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
            odpoved2 = gets.strip.downcase
        when ("hra"), ("chci si zahrat"), ("chci si zahrat hru"), ("hra?"), ("chci si zahrát"), ("chci si zahrát hru")
            puts "Vybral jsi si Hru!"
            print "[ 1-RPG | 2 - Náhodné číslo ]"
            volba4 = gets.to_i
            case volba4
                when 1
                    puts "\n\n\nVitej v hře RPG!"
                    puts "Při výběru útoku bude protihráči uděleno poškození 10 - 30 HP"
                    puts "Při výběru léčení budou vaše HP zvětšeny o 20 HP"
                    zivotyhrac = 100
                    zivotybot = 100
                    volbahrac = 1
                    until zivotyhrac <= 0 || zivotybot <= 0
                        puts "\n\nHráč: #{zivotyhrac} HP          |           Nepřítel: #{zivotybot} HP"
                        puts "====================================================="
                        puts "\n[ 1-Útok | 2-Léčení | 3-Vzdát se]"
                        print "Z následující nabídky vyber jak chceš pokračovat: "
                        volbahrac = gets.to_i
                        case volbahrac
                            when 1
                                puts "\nVybral jsi si útok!"
                                utokodhrace = rand(10..30)
                                puts "Nepříteli bylo uděleno poškození #{utokodhrace} HP!"
                                zivotybot = zivotybot - utokodhrace
                                sleep 2
                                puts "Teď je řada na tvém protihráči!"
                                sleep 2
                                print "Přemýšlí"
                                sleep 1
                                print "."
                                sleep 1
                                print "." 
                                sleep 1
                                print ".\n\n"
                                volbabot = rand (1..2)
                                case volbabot
                                    when 1
                                        puts "Protihráč si vybral útok!"
                                        utokodbota = rand (10..30)
                                        puts "Od protivníka vám bylo uděleno poškození #{utokodbota} HP!"
                                        zivotyhrac = zivotyhrac - utokodbota
                                    when 2
                                        puts "Protihráč si vybral léčení!"
                                        puts "Protihráčovi HP byli zvýšeny o 20 HP!"
                                        zivotybot = zivotybot + 20
                                end
                            when 2
                                puts "\nVybral jsi si leceni!"
                                puts "Tvoje HP byli zvýšeny o 20HP!"
                                zivotyhrac = zivotyhrac + 20
                                sleep 2
                                puts "Teď je řada na tvém protihráči!"
                                sleep 2
                                print "Přemýšlí"
                                sleep 1
                                print "."
                                sleep 1
                                print "." 
                                sleep 1
                                print ".\n\n"
                                volbabot = rand (1..2)
                                case volbabot
                                    when 1
                                        puts "Protihráč si vybral útok!"
                                        utokodbota = rand (10..30)
                                        puts "Od protivníka vám bylo uděleno poškození #{utokodbota} HP!"
                                        zivotyhrac = zivotyhrac - utokodbota
                                    when 2
                                        puts "Protihráč si vybral léčení!"
                                        puts "Protihráčovi HP byli zvýšeny o 20 HP!"
                                        zivotybot = zivotybot + 20
                                end
                            when 3
                                puts "\nVybral jsi moznost vzdat se!"
                                sleep 2
                                print "Tesime se na tebe priste"
                                sleep 1
                                print "."
                                sleep 1
                                print "." 
                                sleep 1
                                print "."
                                break
                        end

                    end
                    if zivotyhrac > zivotybot
                            puts "\n\n\nGratuji, vyhrál jsi!!!"
                        elsif zivotyhrac < zivotybot
                            puts "\n\n\nBohužel, protihráč tě porazil!"
                        else
                            puts "\n\n\nA je to remíza!"
                    end

                            sleep 3
                            puts "Děkujeme že jsi si zahrál a těším se na tebe příště!"
                            sleep 3

                            print "\nChceš se zeptat ještě na něco #{jmeno}? (ano/ne): "
                            odpoved2 = gets.strip.downcase
                    end
                when 2
                    puts "\n\n\nVitej ve hře Hádej Číslo!"
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
                print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
                odpoved2 = gets.strip.downcase
        else
            puts "\nBohužel, na tuto otázku ještě neznám odpověď!"
            print "Chceš se zeptat ještě na něco #{jmeno}?(ano/ne): "
            odpoved2 = gets.strip.downcase
    end
end
=end


#29.3.26
=begin
    #procviceni pred potencionalnim testem
print "Zadej cislo: "
cislo = gets.to_i
a = 1
puts "\n"
cislo.times do
    puts "#{a}. Kokot"
    a = a + 1
end
cas = Time.now
puts "Právě teď je: #{cas}"
puts "čas upraven: #{cas.strftime("%H:%M")}"
puts "čas upraven i se seknundami #{cas.strftime("%H:%M:%S")}"
puts "Datum s rokem 2 cislice #{cas.strftime("%d.%m.%y")}"
puts "Normální datum #{cas.strftime("%d.%m.%Y")}"
puts "Dneska je: #{cas.strftime("%d.%m.%Y %H:%M:%S %A %B %W. týden")}"
print "Zadejte cislo 1-3: "
volba = gets.to_i
puts "\n"
case volba
    when 1
        puts "Vybrali jste si 1"
    when 2
        puts "2ka je taky volba"
    when 3
        puts "Vybrali jste si 3. volbu"
    else
        puts "Tato moznost nebyla na vyber"
end
print "Ted zadej cislo 4-6: "
volba2 = gets.to_i
puts "\n"
if volba2 == 4
    puts "Taky volba"
elsif volba2 == 5
    puts "Jsi kokot?"
elsif volba2 == 6
    puts "Okej"
else
    puts "Tato moznost nebyla na vyber"
end


puts "Vitej v moji dalsi verzi kalkulacky!"
puts "[ + | - | * | / ]"
print "Zadejte operaci kterou chcete provest: "
operace = gets.strip
case operace
    when "+"
        print "\nZadejte prvni cislo: "
        a = gets.to_f
        print "\nZadejte druhe cislo: "
        b = gets.to_f
        vysledek = a + b
        vysledek = vysledek.round(3)
        puts "\n\n\n#{a} + #{b} = #{vysledek}"
    when "-"
        print "\nZadejte prvni cislo: "
        a = gets.to_f
        print "\nZadejte druhe cislo: "
        b = gets.to_f
        vysledek = a - b
        vysledek = vysledek.round(3)
        puts "\n\n\n#{a} - #{b} = #{vysledek}"
    when "*"
        print "\nZadejte prvni cislo: "
        a = gets.to_f
        print "\nZadejte druhe cislo: "
        b = gets.to_f
        vysledek = a * b
        vysledek = vysledek.round(3)
        puts "\n\n\n#{a} * #{b} = #{vysledek}"
    when "/"
        print "\nZadejte prvni cislo: "
        a = gets.to_f
        print "\nZadejte druhe cislo: "
        b = gets.to_f
        case b
            when 0
                puts "Bohuzel, nulou delit nelze!"
            else
            vysledek = a / b
            puts "\n\n\n#{a} / #{b} = #{vysledek}"
            print "Chcete vysledek zaokrouhlit?(ano/ne): "
            odpoved = gets.strip.downcase
            case odpoved
                when "ano"
                    puts "\n"
                    print "Na kolik mist chcete zaokrouhlit?: "
                    desetina = gets.to_i
                    vysledek = vysledek.round(desetina)
                    puts "\nZaokrouhleny vysledek: #{vysledek}"
                when "ne"
                    sleep 3
                    exit
            end
        end
end


PI = 5
print "Zadejte cislo, ktere chcete vynasobit konstantou: "
cislo = gets.to_f
puts "\n#{cislo} * #{PI} = #{cislo * PI}"
puts "Zadejte text: "
textovka = gets.strip
puts textovka [2..4]
=end

#30.3.26
=begin
    #nekonecny cyklus
while true do
    print "\nZadejte nejake cislo! (pro ukonceni 5ku): "
    odpoved = gets.to_i
    break if odpoved == 5
end


    #databaze studentů
jmena = Array.new
prijmeni = Array.new
a = 0
odpoved = 1

puts "Vítej v prvni verzi programu databaze studentů!"
puts "Tenhle program slouží k procvičení pole a přístupu k datům!"
until odpoved == 4
    puts "\n\n[ 1-Přidat Studenta | 2-Odebrat Studenta | 3-Vypsat seznam studentů | 4-Konec ]"
    print "Z nabídky vyberte akci: "
    odpoved  = gets.to_i
    case odpoved
        when 1
            puts "\nVybrali jste si možnost přidat studenta!"
            print "Zadejte křestní jmeno #{a+1}. studenta: "
            dat = gets.strip.capitalize
            jmena[a] = dat
            print "\nZadejte prosím příjmení #{a+1}. studenta: "
            dat = gets.strip.capitalize
            prijmeni[a] = dat
            puts "\n#{a+1}. Student: #{jmena[a]} #{prijmeni[a]} byl úspěšně přidán do databáze!"
            a = a + 1
        when 2
            puts "Vybrali jste si možnost odstranit studenta podne čísla v evidenci!"
            puts "Zadejte číslo studenta kterého chcete odstranit: "
            odpoved = gets.to_i
            jedna = jmena.delete_at(odpoved-1)
            dva = prijmeni.delete_at(odpoved-1)
            puts "Právě jste odstranily studenta cislo: #{odpoved} (#{jedna} #{dva}, číslo #{odpoved} je teď v evidenci volné!)"
            a = a - 1
        when 3
            puts "\nVybrali jste si možnost vypsat všechny žáky!"
            puts "Aktuální počet zaevidovaných žáků: #{a}\n\n"
            sleep 1
            b = 0
            until b == a
                puts "#{b+1}. #{jmena[b]} #{prijmeni[b]}"
                sleep 0.5
                b = b+1
            end
    end
end
=end

#1.4.2026
=begin
    #nactete deset cisel, spocitejte sumu a prumer
    puts "Vitej v programu!"
    puts "Postupne zadavej 10 cisel a ja ti spocitam sumu a prumer!"
    pole = Array.new
    a = 1
    while a < 11
        print "Zadejte #{a}. cislo: "
        odpoved = gets.to_f
        pole [a-1] = odpoved
        a = a + 1
    end
    b = 0
        cislo1 = pole [b]
        cislo2 = pole [b+1]
        b = b + 2
        soucet = cislo1+ cislo2
    8.times do
        cislo2 = pole [b]
        soucet = soucet + cislo2
        b = b+1
    end
    puts "Soucet vami zadanych cisel je roven: #{soucet}"
    puts "Prumer vami zadanych cisel je roven: #{soucet / 10}"
    #p pole


    #pro kolik cisel chce uzivatel
    puts "\n\n\nVitej v programu na výpočet součtu a průměru!"
    print "Pro kolik cisel by jsi chtel vypocitat soucet a prumer(alespon 2): "
    pocet = gets.to_i
    case pocet
        when 0
            puts "\nZadali jste neplatnou hodnotu"
        when 1
            puts "\nZadali jste neplatnou hodnotu"
        else
            print "\nPostupne zadavej #{pocet} cisel a ja ti spocitam sumu a prumer!"
            pole = Array.new
            puts "\n"
            a = 1  
            while a <= pocet
                print "\nZadejte #{a}. cislo: "
                odpoved = gets.to_f
                pole [a-1] = odpoved
                a = a + 1
            end
            b = 0
                cislo1 = pole [b]
                cislo2 = pole [b+1]
                b = b + 2
                soucet = cislo1+ cislo2
            (pocet-2).times do
                cislo2 = pole [b]
                soucet = soucet + cislo2
                b = b+1
            end
            puts "\nSoucet vami zadanych cisel je roven: #{soucet}"
            puts "\nPrumer vami zadanych cisel je roven: #{(soucet / pocet).round(3)}\n\n"
    end
    #p pole



    #databa-slov
    puts "\n\n\nVitej v 1. verzi primitivni aplikace databáze slov!"
    sleep 2
    puts "Můžeš zadat slovo a já ti ho vysvětlím, pokud ho znám!"
    sleep 2
    puts "1. verze umí zatím pouze výrazy ohledně hardwaru!"
    sleep 2
    odpoved = 1
    until odpoved == 2
        puts "\n\n\n[ 1 - chci se zeptat | 2 - konec ]"
        sleep 2
        print "Jak si přejete pokračovat?: "
        odpoved = gets.to_i
        case odpoved
            when 1
                puts "\nDobrá, jdeme na to!"
                print "Jaký pojem by tě zajímal: "
                pojem = gets.to_s.downcase.strip
                puts "\n"
                case pojem
                    when "ram", "ramky", "operacni pamet", "pamet", "operační paměť", "paměť", "random acess memory"
                        puts "Chcete se dozvědět více o RAM (Random Acess Memory)!"
                        sleep 2
                        puts "\n\nRAM (operační paměť) je místo v počítači, kam se dočasně ukládají data, se kterými počítač právě pracuje."
                        sleep 1
                        puts "Díky tomu k nim má velmi rychlý přístup a vše běží plynuleji."
                        sleep 1
                        puts "Když například otevřeš program nebo hru, načte se právě do RAM."
                        sleep 1
                        puts "Jakmile počítač vypneš, data v RAM se smažou."
                        sleep 4
                    when "cpu", "procesor", "mikroprocesor", "microprocesor", "central processing unit" 
                        puts "Chcete se dozvědět více o CPU (procesoru)!"
                        sleep 2
                        puts "CPU (procesor) je „mozek“ počítače. Řídí všechny operace a provádí výpočty, díky kterým programy fungují."
                        sleep 1
                        puts "Když něco děláš (např. otevřeš aplikaci nebo hru), CPU zpracovává pokyny a říká ostatním"
                        sleep 1
                        puts "částem počítače, co mají dělat."
                        sleep 4
                    when "gpu", "grafika", "grafka", "grafarna", "grafárna", "grafická karta", "graficka karta", "graphical processing unit"
                        puts "Chcete se dozvědět více o GPU (grafické kartě)!"
                        sleep 2
                        puts "GPU (grafická karta) je součást počítače, která se stará o zpracování obrazu."
                        sleep 1
                        puts "Díky ní vidíš na monitoru hry, videa nebo grafiku."
                        sleep 1
                        puts "Je navržená hlavně pro rychlé výpočty spojené s obrazem, takže například"
                        sleep 1
                        puts "ve hrách pomáhá zobrazovat plynulý a detailní obraz."
                        sleep 4
                    when "mb", "motherboard", "deska", "zakladni deska", "základní deska"
                        puts "Chcete se dozvědět více o MB (Základní desce)!"
                        sleep 2
                        puts "Základní deska (motherboard) je hlavní „deska“ v počítači, do které jsou zapojené všechny ostatní součásti."
                        sleep 1
                        puts "Spojuje mezi sebou CPU, RAM, grafickou kartu a další části,"
                        sleep 1
                        puts "aby spolu mohly komunikovat a celý počítač fungoval."
                        sleep 4
                    when "zdroj", "pc zdroj", "pocitacovy zdroj", "počítačový zdroj", "power supply", "psu"
                        puts "Chcete se dozvědět více o PSU (počítačovém zdroji)!"
                        sleep 2
                        puts "PSU (zdroj napájení) je součást počítače, která dodává elektřinu všem ostatním komponentům."
                        sleep 1
                        puts "Převádí proud ze zásuvky na správné napětí, které potřebují části jako procesor,"
                        sleep 1
                        puts "grafická karta nebo základní deska, aby mohly fungovat."
                        sleep 4
                    when "disk", "ssd", "hdd", "m.2", "m2", "m 2", "m,2", "m, 2", "uloziste", "úložiště", "storage"
                        puts "Chcete se dozvědět více o Disku (storage)!"
                        sleep 2
                        puts "Disk je místo v počítači, kam se ukládají data natrvalo – například soubory, programy nebo operační systém."
                        sleep 1
                        puts "Na rozdíl od RAM si data na disku zůstanou uložená i po vypnutí počítače."
                        sleep 1
                        puts "Existují dva hlavní typy: HDD (pomalejší, levnější) a SSD (rychlejší, modernější a dražší)."
                        sleep 4
                    when "case", "skrin", "skříň", "pc skrin", "pc skříň", "pocitacova skrin", "počítačová skrin", "pocitacova skříň", "počítačová skříň", "kejska", "cejska"
                        puts "Chcete se dozvědět více o Počítačové skříňi (Case)!"
                        sleep 2
                        puts "PC case je obal počítače, do kterého se instalují všechny komponenty."
                        sleep 1
                        puts "Chrání je před poškozením a prachem a umožňuje dobré chlazení."
                        sleep 1
                        puts "Velikost case určuje, jaké komponenty se do počítače vejdou."
                        sleep 4
                    when "chladic", "chladič", "cpu chladič", "chladič cpu", "cpu chladic", "chladic cpu", "chladic procesoru", "chladič procesoru", "heatsink", "cpu heatsink"
                        puts "Chcete se dozvědět více o Chladiči procesoru (CPU heatsink)!"
                        sleep 2
                        puts "CPU chladič je zařízení, které udržuje procesor (CPU) při bezpečné teplotě."
                        sleep 1
                        puts "Procesor se při práci zahřívá, a pokud by teplota byla příliš vysoká, mohl by počítač zpomalit nebo se vypnout."
                        sleep 1
                        puts "Existují dva hlavní typy chladičů:  Vzduchové – ventilátor s kovovým žebrováním odvádí teplo pryč z procesoru."
                        sleep 1
                        puts "                                    Vodní (liquid cooling) – čerpadlo pumpuje kapalinu, která odvádí teplo k radiátoru, kde ho ventilátory ochladí."
                        sleep 4
                    else
                        puts "Takový pojem bohužel současná verze nezná!"
                        sleep 3
                end
            when 2
                puts "\nVybrali jste si možnost KONEC, těšíme se na vás příště!"
                sleep 3
                exit
            else
                puts "\nBohužel, zadali jste neplatnou možnost!"
                sleep 1
        end
    end
=end


#2.4.2026
=begin
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



    #generator hesla - procviceni array - bez GPT
    puts "Vitej v generatoru nahodnych hesel!"
    velka = ["A".."Z"].to_a
    mala = ["a".."z"].to_a
    cisla = ["0".."9"].to_a
    specialni = ["*", "-", "_", "?", "!", "/"]
    p velka
    p mala
    p cisla
    p specialni
=end

#3.4.26
=begin
    #obraceni textu - 1.1 - pouze pomoci cisle a times cyklu
    a = 0
    obraceni = Array.new
    puts "Vitej v programu na obaceni tebou zadaného textu!"
    sleep 1
    puts "Zeptám se tě, a text který mi napíšeš ti přepíšu obráceně!"
    sleep 1
    print "Jsi připraven*a (ano/ne): "
    odpoved = gets.to_s.strip.downcase
    puts "\n"
    case odpoved
        when "ano"
            puts "DObrá, můžeme se do toho pustit!"
            sleep 1
            print "Zadejte prosim text k obrácení: "
            text = gets.to_s.strip
            delka = text.length
            delka.times do
                obraceni[a] = text [a]
                a = a + 1
            end
            b = delka
            sleep 2
            delka.times do
                b = b - 1
                print obraceni[b]
            end
        when "ne"
            puts "Děkujeme a těšíme se na tebe příště!"
            sleep 2
            exit
        else
            puts "bohuzel jste zadali neplatnou možnost!"
    end


    #obraceni textu - 1.2 - pomoci pop
    obraceni = Array.new
    a = 0
    puts "Vitej v programu na obaceni tebou zadaného textu!"
    sleep 1
    puts "Zeptám se tě, a text který mi napíšeš ti přepíšu obráceně!"
    sleep 1
    print "Jsi připraven*a (ano/ne): "
    odpoved = gets.to_s.strip.downcase
    puts "\n"
    case odpoved
        when "ano"
            puts "Dobrá, můžeme se do toho pustit!"
            sleep 1
            print "Zadejte prosim text k obrácení: "
            text = gets.to_s.strip
            delka = text.length
            delka.times do
                obraceni [a] = text [a]
                a = a + 1
            end
            sleep 2
            delka.times do
                vypis = obraceni.pop
                print vypis
            end
        when "ne"
            puts "Děkujeme a těšíme se na tebe příště!"
            sleep 2
            exit
        else
            puts "bohuzel jste zadali neplatnou možnost!"
    end



#4.4.26
    #fronta na urade - 1.1 - shift
    puts "Vitej v programu na prociveni fronty (queue)!"
    puts "Pokud napíšeš přidej JMENO přidám ho do fronty!"
    puts "Pokud napíšeš dalsi = vypíšu kdo je další na řadě!"
    volba = 1
    fronta = Array.new
    until volba == "konec"
        puts "[ Přidej | Další | Konec ]"
        print "Jak chcete pokračova: "
        volba = gets.downcase.strip
        case volba
            when "přidej", "pridej", "přidat", "pridat", "pridavame", "přidáváme", "přidavame", "pridáváme"
                puts "Vybrali jste si možnot přidat člověka do fronty!"
                sleep 2
                print "Zadejte prosim jmeno nového člena fronty: "
                jmeno = gets.to_s.strip.capitalize
                sleep 1
                fronta << jmeno
                puts "Účastník fronty jménem #{jmeno} byl úspěšně přidán do fronty!\n\n"
                sleep 2
            when "dalsi", "další", "další na řadě", "dalsi na rade", "další na rade", "další na řade", "další na radě", "dalsi na řadě"
                puts "Vybrali jste si možnost další člově z fronty nařadě!"
                sleep 2
                puts "Další člověk na řadě je: #{fronta.shift}!"
                puts "pjďte k nám!"
                sleep 2
            when "konec"
                puts "Vybrali jste si možnost zavíráme!"
                sleep 2
                puts "Těšíme se na vás příště!"
                sleep 3
                exit
            else
                puts "Zadali jste neplatnou volbu!\n"
        end
    end
=end


#8.4.26
=begin
    #zabezpeceni (hesla)
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
=end

#10.4.26
=begin
    #procviceni fronty
    puts "Vitej v programu na procviceni fronty!"
    pole = Array.new
    print "Zadejte kolik prvku chcete aby fronta obsahovala: "
    pocet = gets.to_i
    a = 0
    pocet.times do
        pole [a] = a+1
        a = a + 1
    end
    sleep 2
    p pole
    pocet.times do
        b = pole.shift
        puts b
        sleep 1
    end


    #procviceni zasobniku
    puts "Vitej v programu na procviceni zasobniku!"
    pole = Array.new
    a = 0
    print "Zadejte kolik prvku chcete aby zasobnik obsahoval: "
    pocet = gets.to_i
    pocet.times do
        pole [a] = a + 1
        a = a + 1
    end
    sleep 1
    p pole
    pocet.times do
        b = pole.pop
        puts b
        sleep 1
    end


    #procviceni strftime - strukturovani casu
    puts "Vitej v programu na procivceni struktury casu strf time!"
    sleep 1
    puts "\n\n"
    cas = Time.now
    puts "Aktualni datum: #{cas.strftime("%d.%m.%Y")}\n"
    puts "Aktualni cas> #{cas.strftime("%H:%M")}\n"
    puts "Aktualni cas se sekundami: #{cas.strftime("%H:%M:%S")}\n"
    puts "Aktualni datum a cas: #{cas.strftime("%d.%m.%Y    %H:%M")}\n"
=end


    #12.4.26
=begin
    #kalkulačka s historií
    puts "\n\n\nVitej v prvni verzi mojí vylepšené kalkulačky s historií!"
    sleep 1
    cas = Time.now
    puts "Aktuálně je #{cas.strftime("%d.%m.%Y      %H:%M:%S")}"
    sleep 1
    a = 0
    b = 0
    operace = ""
    vysledky = Array.new
    until operace == "konec"
        sleep 2
        print "Zadejte prosim prvni cislo se kterým chcete počítat: "
        cislo1 = gets.to_f
        sleep 1
        puts "[ + | - | * | / | konec | vypis (výpis předchozích výsledků) ]"
        print "Zadejte prosim jakou operaci chcete provest: "
        operace = gets.to_s.strip
        case operace
            when "+"
                print "Zadejte prosim druhe cislo se kterým chcete počítat: "
                cislo2 = gets.to_f
                sleep 2
                vysledek = cislo1 + cislo2
                puts "\nVýsledkem #{a + 1}. výpočtu (#{cislo1} + #{cislo2}) je roven: #{vysledek}"
                sleep 1
                puts "\n\n"
                vysledky[a] = vysledek
                a = a + 1
                sleep 2
            when "-"
                print "Zadejte prosim druhe cislo se kterým chcete počítat: "
                cislo2 = gets.to_f
                sleep 2
                vysledek = cislo1 - cislo2
                puts "\nVýsledkem #{a + 1}. výpočtu (#{cislo1} - #{cislo2}) je roven: #{vysledek}"
                sleep 1
                puts "\n\n"
                vysledky[a] = vysledek
                a = a + 1
                sleep 2
            when "*"
                print "Zadejte prosim druhe cislo se kterým chcete počítat: "
                cislo2 = gets.to_f
                sleep 2
                vysledek = cislo1 * cislo2
                puts "\nVýsledkem #{a + 1}. výpočtu (#{cislo1} * #{cislo2}) je roven: #{vysledek}"
                sleep 1
                puts "\n\n"
                vysledky[a] = vysledek
                a = a + 1
                sleep 2
            when "/"
                print "Zadejte prosim druhe cislo se kterým chcete počítat: "
                cislo2 = gets.to_f
                sleep 2
                case cislo2
                    when 0
                        puts "Bohužel, nulou nelze dělit!"
                        sleep 2
                    else
                        vysledek = cislo1 / cislo2
                        puts "\nVýsledkem #{a + 1}. výpočtu (#{cislo1} / #{cislo2}) je roven: #{vysledek}"
                        sleep 1
                        puts "\n\n"
                        vysledky[a] = vysledek
                        a = a + 1
                        sleep 2
                end
            when "vypis"
                puts "\n\n\n"
                p vysledky
                a.times do
                    puts "#{b + 1}. výsledek: #{vysledky[b]}"
                    b = b + 1
                    sleep 1
                end
            when "konec"
                puts "Děkujeme za použití naší kalkulačky!"
                sleep 1
                puts "Těšíme se na vás příště!"
                sleep 2
            else
                puts "Zadali jste neplatnou volbu!"
                sleep 2
        end
    end


    #Aktualni cas
    while true
        cas = Time.now
        puts cas.strftime("%H:%M:%S")
        sleep 1
    end



#13.4.26
    puts "vitej v prvni verzi vylepsene hry hadej cislo!"
    cas = Time.now
    puts "Aktuálně je #{cas.strftime("%m.%d.%Y      %H:%M")}"
    puts "V teto verzi hry mohou hrát 2 hráči!"
    body1 = 0
    body2 = 0
    puts "[ 1-další hra | 2-vypsat pořadí | 3-konec ]"
    print "Zadejte prosim jak chcete pokračovat: "
    odpoved = gets.to_i
    case odpoved
        when 1
            print "Vybrali jste si možnost další hra, tak jdeme na to"
            sleep 1
            print "."
            sleep 1
            print "."
            sleep 1
            print ".\n"
            sleep 1
            print "Myslim si nahodné číslo od 1 do 100"
            sleep 1
            print "."
            sleep 1
            print "."
            sleep 1
            print ".\n"
            sleep 1
            cislo1 = rand(1..100)
            cislo2 = rand(1..100)
            typ1 = 0
            typ2 = 0
            until (typ1 == cislo1) or (typ2 == cislo2)
                puts "Jdeme hádat!"
                sleep 1
                print "Zadej prosím svůj typ Hráč1: "
                typ1 = gets.to_i

                case
                    when typ1 > cislo1
                        puts "Skoro, ale moje číslo je menší než tvůj typ!\n"
                        sleep 3
                    when typ1 < cislo1
                        puts "Skoro, ale moje číslo je větší než tvůj typ!\n"
                        sleep 3
                    when typ1 == cislo1
                        puts "Gratuluji Hráč1, úhádl jsi!"
                        sleep 3
                        body1 = body1 + 1
                end
                
                print "Zadej prosím svůj typ Hráč2: "
                typ2 = gets.to_i
                
                case
                    when typ2 > cislo2
                        puts "Skoro, ale moje číslo je menší než tvůj typ!\n"
                        sleep 3
                    when typ2 < cislo2
                        puts "Skoro, ale moje číslo je větší než tvůj typ!\n"
                        sleep 3
                    when typ2 == cislo2
                        puts "Gratuluji Hráč2, úhádl jsi!"
                        sleep 3
                        body2 = body2 + 1
                end
            end
        when 2
            puts "Body Hráč1 = #{body1}"
            puts "Body Hráč2 = #{body2}"
            puts "\n\n\n"
            case
                when body1 = body2
                    puts "Oba hráči mají stejný počet bodů"
                when body1 > body2
                    puts "Vyhrál Hráč1, má více bodů!"
                when body1 < body2
                    puts "Vyhrál Hráč2, má více bodů!"
            end
        when 3
            puts "Vybrali jste si možnost konec!"
            sleep 2
              puts "Děkujeme a těšíme se na vás příště..."
            sleep 3
            exit
        else
            puts "Bohužel, zadali jste neplatnou volbu!"
            sleep 2
    end
=end

#Bankovni system simple
=begin
puts "Vitej v prvni verzi jednoducheho bankovniho systemu!"
sleep 2
odpoved = 1
a = 0
jmena = Array.new
cislauctu = Array.new
zustatky = Array.new
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
=end


#15.4.2026
=begin
puts "Vitej v dalsim programu zabezpeceni na procviceni push a index!"
sleep 1
volba = 1
jmena = Array.new
hesla = Array.new
username = Array.new
cisla = Array.new
until volba == 3
    puts "\n\n[1-založit ucet | 2-prihlasit se k uctu | 3-exit]"
    print "Zadejte prosim jak chcete pokračovat: "
    volba = gets.to_i
    sleep 2
    case volba
        when 1
            heslo1 = ""
            heslo2 = ""
            puts "Vybrali jste si možnost založit nový účet!"
            sleep 2
            print "Zadejte prosim svoje jmeno a prijmeni: "
            jmeno = gets.to_s.strip.downcase
            jmena.push(jmeno)
            sleep 2
            print "Zadejte prosim svoje uzivatelske jmeno: "
            usernam = gets.to_s.strip
            a = username.index(usernam)
            sleep 2
            case a
                when nil
                    puts "Super, uzivatelske jmeno #{usernam} jeste nikdo nepouziva!"
                    sleep 2
                    username.push(usernam)
                    puts "[1-sam | 2-vygeneruj prosim]"
                    sleep 1
                    print "Zadej jak chceš vymyslet heslo: "
                    odpoved = gets.to_i
                    sleep 2
                    case odpoved
                        when 1
                            puts "Vybrali jste si možnost vytvořím si heslo sám!"
                            sleep 2
                            puts "Dodržujte prosim vseobecne známá pravidla ohledně délky a obsahu hesla!"
                            sleep 2
                            puts "Svoje heslo nikomu nezdelujte a nějak si ho poznamenejte nebo zapište!"
                            sleep 2
                            while heslo1 != heslo2
                                print "Zadejte prosim svoje heslo: "
                                heslo1 = gets.to_s.strip
                                sleep 2
                                print "Zadejte prosím své heslo znovu: "
                                heslo2 = gets.to_s.strip
                                if heslo1 == heslo2
                                    sleep 2
                                    puts "Super, tvoje heslo bylo úspěšně nastaveno!"
                                    sleep 2
                                    hesla.push(heslo1)
                                    print "Chceš si heslo ještě jednou zobrazit?(ano/ne): "
                                    odpovidka = gets.to_s.downcase.strip
                                    case odpovidka
                                        when "ano"
                                            sleep 2
                                            puts "Dobrá, tvoje heslo je: #{heslo1}"
                                            sleep 2
                                            puts "Nikomu ho nezděluj!"
                                        when "ne"
                                            sleep 2
                                            puts "\nDobrá, doufám že jsi si ho dobře poznamenal!"
                                            sleep 2
                                        else
                                    end
                                else
                                    sleep 2
                                end
                            end
                            sleep 2
                        when 2
                            heslo = ""
                            print "Kolik znaků si přejete aby mělo vaše heslo?: "
                            velikost = gets.to_i
                            mala = ("a".."z").to_a
                            velka = ("A".."Z").to_a
                            cisla = ("0".."9").to_a
                            specialniznaky = ["!", "@", "#", "$", "%", "&", "*"]
                            sleep 2
                            print "\nVaše náhodně vygenerované heslo bylo uspesne vygenerováno!"
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
                            end
                            sleep 2
                            puts "Vaše náhodně vygenerované heslo je: #{heslo}!"
                            sleep 2
                            puts "Nikomu ho nezdílejte a nezapomeňte si ho poznamenat!"
                            sleep 2
                            hesla.push(heslo)
                        else
                            puts "Zadali jste neplatnou operaci!"
                            jmena.pop
                            username.pop
                    end
                else
                    puts "Bohuzel, tohle uziv jmeno uz nekdo pouziva!"
                    jmena.pop
                    sleep 2
            end
        when 2
        when 3
            puts "Vybrali jste si možnost ukončit aplikaci!"
            sleep 2
            puts "Těšíme se na vás příště!"
            sleep 2
        else
            puts "Bohužel, zadali jste neplatnou možnost!"
            sleep 3
    end
end


#priprava na test!
puts "Vitej v programu na analizu a upraveni textu!"
sleep 2
volba = 1
until volba == 2
    print "Zadejte libovolný text: "
    text = gets.to_s.strip
    sleep 2
    obraceni = Array.new
    a = text.length
    b = 0
    a.times do
        obraceni.push(text[b])
        b = b + 1
    end
    print "Váš text otočený: "
    a.times do
        c = obraceni.pop
        print c
    end
    puts "\nDélka vašeho textu = #{a} znaků!"
end


#databaze lidi = číslo v evidenci + jméno + příjmení + rodné č. + na jak dlouho sedí
#menu: 1-zapsat nového člověka  2-odstranit     3-hledat 4-upravit 5-konec

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
=end



#16.4.26
=begin
#slovnik - procviceni klicu
slovnikaj = Hash.new
slovnikaj ["kočka"] = "cat"
slovnikaj ["pes"] = "dog"
slovnikaj ["kůň"] = "horse"
slovnikaj ["velbloud"] = "camel"
print "Zadejte prosim zvíře které chcete přeložit: "
zvire = gets.to_s.downcase.strip
puts slovnikaj[zvire]




#pochopení hash
credentials = {"verejne_heslo" => "1234Fko", "secret_key" => "123kokot"}
puts credentials["verejne_heslo"]       #vypise hodnotu verejne_heslo (1234Fko)
puts credentials["secret_key"]          #vypise hodnotu uloženou pod secret_key (123kokot)
credentials["verejne_heslo"] = "verejnost"      #přepíše hodnotu verejne_heslo (1234Fko na verejnost)
puts credentials["verejne_heslo"]
puts credentials
credentials["region"] = "Praha"         #vytvoří nový klíč (region) a uloží do něl hodnotu Praha
puts credentials                #vypíše upraveny hash
puts credentials.size           #vypise pocet klicu (3)
p credentials.keys           #vypíše klíče
p credentials.values        #vypíše pouze hodnoty
credentials.delete("region")        #smaže klíč i hodnotu region
p credentials


ja = {"jmeno" => "Eda", "prijmeni" => "Basl", "vek" => "16", "konicky" => ["programovani", "lezeni", "sex"]}
puts ja
puts ja["konicky"]
print ja["konicky"].join(", ")          #spoji array konicky do 1 stringu
puts "\n"
puts ja["konicky"].size                 #vypise velkost pole
ja["konicky"].each do   |konicek|          #projde po jednom kazdy prvek, pokazde ulozi prvek do konicek
    puts konicek.capitalize                 #vypise konicek (s velkym na zacatku)
    sleep 1
end

ja.each do |details|
puts details
end

ja.each do |key, value|


zviratka = {"dog" => {"name" => "Spot"}, "cat" => {"name:" => "Kocourek" }}
p zviratka
puts zviratka["dog"]["name"]        #vypise Spot (nejprve jdeme do dog, to referuje do name => Spot, pak zadame name a vyhodi to jmeno)
puts zviratka.dig("dog", "name")        #to same, ale přes dig



lidi = []
puts "Vítej v první verzi zlepšené databáze lidí!"
sleep 1
odpoved = 0
puts "Tato databáze slouží k procvičení array a hash!"
while odpoved != 4
    sleep 1
    puts "[ 1-přidat | 2-vypsat seznam | 3-najít podle jména | 4-konec ]"
    sleep 1
    print "Jak chcete pokračovat: "
    odpoved = gets.to_i
    case odpoved
        when 1  #pridani
            puts "Vybrali jste si možnost přidat nového člověka do databáze!"
            sleep 1
            print "Zadejte prosím křestní jméno: "
            jmeno = gets.to_s.strip.capitalize
            sleep 1
            print "Zadejte prosim příjmení: "
            prijmeni = gets.to_s.strip.capitalize
            sleep 1
            print "Zadejte prosím věk: "
            vek = gets.to_s.strip
            lidi << {"jméno" => jmeno, "příjmení" => prijmeni, "věk" => vek}
            sleep 1
            p lidi
        when 2  #vypis vsech
            lidi.each do |clovek|
                puts "Jméno #{clovek[jméno]} Příjmení #{clovek[příjmení]} Věk #{clovek[věk]}"
            end
        when 3  #hledat
        when 4  #konec
            puts "Vybrali jste si možnost ukončit program!"
            sleep 2
            puts "Děkujeme a těšíme se na vás příšte..."
            sleep 3
            exit
        else
            puts "Zadali jste neplatnou volbu!"
            sleep 2
    end
end



#databáze knih  -   Jméno autora, Příjmení Autora, Název knihy, Počet stránek, Evidenční číslo, nakladatelstvi, rok vydání
databaze = {"jmeno" => [], "prijmeni" => [], "nazev" => [], "stranky" => [], "cislo" => [], "nakladatelstvi" => [], "rok" => []}
puts "Vítej v Databázi knih Knihovny Králův Dvůr!"
volba = ""
a = 1
while volba != 5
    sleep 2
    puts "\n\n[ 1-přidat novou | 2-hledat | 3-výpis | 4-smazat | 5-konec ]"
    sleep 1
    print "Zadejte prosim jakou akci chcete provest: "
    volba = gets.to_i
    sleep 1
    case volba
        when 1          #pridat
            puts "Pojďme přidat novou knihu!"
            sleep 1
            print "Zadejte prosim jmeno autora #{a}. knihy: "         #jmeno autora
            jmeno = gets.to_s.strip.capitalize
            databaze["jmeno"]<< jmeno
            sleep 1
            print "Zadejte prosim prijmeni autora #{a}. knihy: "      #prijmeni autora
            prijmeni = gets.to_s.strip.capitalize
            databaze["prijmeni"]<< prijmeni
            sleep 1
            print "Zadejte prosim nazev #{a}. knihy: "                #nazev knihy
            nazev = gets.to_s.strip.downcase
            databaze["nazev"]<< nazev
            sleep 1
            print "Zadejte prosim počet stránek #{a}. knihy: "  #pocet stranke
            stranky = gets.to_s.strip
            databaze["stranky"]<< stranky
            sleep 1
            cislo = a.to_s                                            #evid. cislo
            databaze["cislo"]<< cislo
            sleep 1
            print "Zadejte prosim nakladatelství #{a}. knihy: "     #nakladatelstvi
            nakladatelstvi = gets.to_s.strip.downcase
            databaze["nakladatelstvi"]<< nakladatelstvi
            sleep 1
            print "Zadejte prosim rok vydání #{a}. knihy: "        #rok vydani
            rok = gets.to_s.strip
            databaze["rok"]<< rok
            sleep 1
            puts "\n#{a}. Kniha byla úspěšně přidána do databáze"
            sleep 2
            p databaze
            a = a + 1
        when 2      #hledat
            puts "Vybrali jste si možnost hledat knihu!"
            sleep 1
            puts "[1-nazev knihy|2-evidencni cislo]"
            sleep 1
            print "Zadejte jak chcete hledat knihu: "
            volba2 = gets.to_i
            case volba2
                when 1
                    puts "Jdeme hledat knihu podle Názvu knihy"
                    sleep 1
                    print "Zadejte prosim nazev knihy: "
                    nazev = gets.to_s.strip.downcase
                    c = databaze["nazev"].index(nazev)
                    if c == nil
                        puts "Bohužel, žádná kniha s tímto názvem není v databázi!"
                        sleep 2
                    else
                        print "Načítání"
                        sleep 0.3
                        print "."
                        sleep 0.3
                        print "."
                        sleep 0.3
                        print "."
                        sleep 1
                        puts "\n#{databaze["cislo"][c]}. #{databaze["jmeno"][c]} #{databaze["prijmeni"][c]}  Název: #{databaze["nazev"][c]}  #{databaze["stranky"][c]} stran    rok vydání: #{databaze["rok"][c]}, nakladatelství: #{databaze["nakladatelstvi"][c]}"
                        sleep 3
                    end 
                when 2
                    puts "Jdeme hledat knihu podle evidencniho cisla"
                    sleep 1
                    print "Zadejte prosim evidencni cislo: "
                    cislo = gets.to_i
                    cislo2 = cislo - 1
                    sleep 2
                    if cislo2 > a
                        puts "Bohužel, žádná kniha s tímto evidencnim cislem neexistuje!"
                        sleep 2
                    else
                        print "Načítání"
                        sleep 0.3
                        print "."
                        sleep 0.3
                        print "."
                        sleep 0.3
                        print "."
                        sleep 1
                        puts "\n#{databaze["cislo"][cislo2]}. #{databaze["jmeno"][cislo2]} #{databaze["prijmeni"][cislo2]}  Název: #{databaze["nazev"][cislo2]}  #{databaze["stranky"][cislo2]} stran    rok vydání: #{databaze["rok"][cislo2]}, nakladatelství: #{databaze["nakladatelstvi"][cislo2]}"
                        sleep 3
                    end
                else
                    puts "Zadali jste neplatnou volbu!"
                    sleep 2
            end
        when 3      #výpis
            puts "Zde je výpis věech evidovaných knih: "
            sleep 1
            databaze["jmeno"].each_with_index do |jmeno, index|
                prijmeni = databaze["prijmeni"][index]
                nazev = databaze["nazev"][index]
                stranky = databaze["stranky"][index]
                rok = databaze["rok"][index]
                nakladatelstvi = databaze["nakladatelstvi"][index]
                cislo = databaze["cislo"][index]
                puts "#{cislo}. #{jmeno} #{prijmeni}    #{nazev}, #{stranky} stran, rok vydání: #{rok}, nakladatelství: #{nakladatelstvi}"
                sleep 1
            end
        when 4      #smazat
            puts "Vybrali jste si možnost smazat knihu!"
            sleep 2
            puts "[1-nazev knihy|2-evidencni cislo]"
            sleep 1
            print "Jak chcete hledat knihu pro smazání: "
            volba4 = gets.to_i
            sleep 1
            case volba
                when 1
                    puts "Vybrali jste mazání knihy podle nazvu knihy!"
                    sleep 1
                    print "Zadejte prosim nazev knihy: "
                    nazev = gets.to_s.strip.downcase
                    sleep 1
                    c = databaze["nazev"].index(nazev)
                    if c == nil
                        puts "Bohužel, žádná kniha s tímto názvem není evidována!"
                        sleep 2
                    else
                        puts "Probíhá mazání knihy s názvem: #{databaze["nazev"][c]}!"
                        sleep 2
                        databaze["jmeno"][c] = "------"
                        databaze["prijmeni"][c] = "------"
                        databaze["nazev"][c] = "------"
                        databaze["cislo"][c] = "------"
                        databaze["rok"][c] = "------"
                        databaze["stranky"][c] = "------"
                        databaze["nakladatelstvi"][c] = "------"
                        puts "Kniha s názvem #{nazev} byla uspesne smazána z evidence!"
                        sleep 3
                    end
                when 2
                    puts "Pojďme hledat knihu podle evidencniho cisla!"
                    sleep 1
                    print "Zadejte prosim evidencni cislo: "
                    cislo = gets.to_s.strip
                    sleep 1
                    c = databaze["cislo"].index(cislo)
                    if c == nil
                        puts "Bohužel, žádná kniha s tímto evid. číslem není v databázi!"
                        sleep 2
                    else
                    databaze["jmeno"][c] = "------"
                    databaze["prijmeni"][c] = "------"
                    databaze["nazev"][c] = "------"
                    databaze["cislo"][c] = "------"
                    databaze["rok"][c] = "------"
                    databaze["stranky"][c] = "------"
                    databaze["nakladatelstvi"][c] = "------"
                    puts "Kniha s evid č. #{cislo} byla úspěšně odstraněna!"
                    sleep 2
                    end
                else
                    puts "Zadali jste neplatnou volbu!"
                    sleep 3
            end
        when 5
            puts "Vybrali jste si možnost ukončit aplikaci!"
            sleep 2
            print "Těšíme se na vás příště"
            sleep 0.3
            print "."
            sleep 0.3
            print "."
            sleep 0.3
            print "."
            sleep 1
            exit
        else
            puts "Bohužel, zadali jste neplatnou možnost!"
            sleep 2
    end
end
=end


#19.4.26
=begin
puts "Zkousim Array of hashes!"
databaze = Array.new
3.times do
    sleep 1
    print "Zadejte krestni jmeno: "
    jmeno = gets.to_s.strip.capitalize
    sleep 1
    print "Zadejte prijmeni: "
    prijmeni = gets.to_s.strip.capitalize
    sleep 1
    print "Zadejte cislo: "
    cislo = gets.to_s.strip
    sleep 1
    databaze << {"jmeno" => jmeno, "prijmeni" => prijmeni, "cislo" => cislo}
    p databaze
end
sleep 1
puts databaze[0]
puts databaze[2]
puts databaze[1]["jmeno"]


databaze = Array.new
puts "Dalsi zkouska Array of Hashes!"
sleep 2
print "Zadejte kolik lidi chcete mit v databazi: "
pocet = gets.to_i
sleep 1
if pocet == 0
    puts "Bohužel, to pro vás nic neudělam!"
    sleep 2
else
    pocet.times do
    sleep 1
    print "Zadejte krestni jmeno: "
    jmeno = gets.to_s.strip.capitalize
    sleep 1
    print "Zadejte prijmeni: "
    prijmeni = gets.to_s.strip.capitalize
    sleep 1
    print "Zadejte cislo: "
    cislo = gets.to_s.strip
    sleep 1
    databaze << {"jmeno" => jmeno, "prijmeni" => prijmeni, "cislo" => cislo}
    p databaze
    end
end
sleep 1
puts databaze[0]
puts databaze[2]
puts databaze[1]["jmeno"]
puts "Jméno: #{databaze[0]["jmeno"]} Příjmení: #{databaze[0]["prijmeni"]} Číslo: #{databaze[0]["cislo"]}"


databaze = Array.new
puts "Dalsi zkouska Array of Hashes!"
sleep 2
print "Zadejte kolik lidi chcete mit v databazi: "
pocet = gets.to_i
sleep 1
if pocet == 0
    puts "Bohužel, to pro vás nic neudělam!"
    sleep 2
else
    pocet.times do
    sleep 1
    print "Zadejte krestni jmeno: "
    jmeno = gets.to_s.strip.capitalize
    sleep 1
    print "Zadejte prijmeni: "
    prijmeni = gets.to_s.strip.capitalize
    sleep 1
    print "Zadejte cislo: "
    cislo = gets.to_s.strip
    sleep 1
    databaze << {"jmeno" => jmeno, "prijmeni" => prijmeni, "cislo" => cislo}
    p databaze
    end
end
sleep 1
odpoved = 1
while odpoved != 3
    puts "[1-cela hodnota|2-pouze neco|3-konec]"
    sleep 1
    print "Zadejte co chcete zobrazit: "
    odpoved = gets.to_i
    case odpoved
        when 1
            puts
        when 2
        when 3
            print "P"
            sleep 0.1
            print "r"
            sleep 0.1
            print "o"
            sleep 0.1
            print "b"
            sleep 0.1
            print "í"
            sleep 0.1
            print "h"
            sleep 0.1
            print "á"
            sleep 0.1
            print " "
            sleep 0.1
            print "u"
            sleep 0.1
            print "k"
            sleep 0.1 
            print "o"
            sleep 0.1
            print "n"
            sleep 0.1
            print "č"
            sleep 0.1
            print "o"
            sleep 0.1
            print "v"
            sleep 0.1
            print "á"
            sleep 0.1  
            print "n"
            sleep 0.1 
            print "í"
            sleep 0.1
            print "."
            sleep 0.1
            print "."
            sleep 0.1
            print "."
            sleep 2
            exit
        else
            puts "Zadali jste neplatnou volbu!"
            sleep 2
    end
end
=end

#19.4.26
=begin
#priprava na test 1 - databaze filmů
#struktura = {"nazev" => "", "reziser" => "", "rok" => "", "hodnoceni" => "", "zanry" => []}
#funkcnionalita - přidat film, vypsat všehny filmy, hledat film podle názvu, filtrovat podle hodnocení, smazat film, statistiky, konec
databaze = Array.new
odpoved = 0
databaze << {"nazev" => "kokoti", "reziser" => "jeroným", "rok" => "2390", "hodnoceni" => "5", "zanry" => ["koule", "scifi"]}
databaze << {"nazev" => "frndy", "reziser" => "baslik", "rok" => "2010", "hodnoceni" => "9", "zanry" => ["pornofilm", "komedie"]}
puts "Vitej v 1. priprave na test z TVA - databaze filmů"
while odpoved != 7
    sleep 1
    puts "\n\n[1-přidat film|2-vypsat všechny|3-hledat film|4-filtrovat podle hodnocení|5-smazat film|6-statistiky|7-konec]"
    sleep 1
    print "Zadejte jakou akci chcete provest: "
    odpoved = gets.to_i
    case odpoved
        when 1  #pridat film
            puts "Vybrali jste si možnost přidat nový film do databáze!"
            sleep 2
            print "Zadejte prosim nazev filmu: "
            nazev = gets.to_s.strip.downcase
            sleep 1
            print "Zadejte prosim rezisera: "
            reziser = gets.to_s.strip.downcase
            sleep 1
            print "Zadejte prosím rok vydání filmu: "
            rok = gets.to_s.strip
            sleep 1
            print "Zadejte prosim hodnoceni filmu (1-10): "
            hodnoceni = gets.to_i
            if (hodnoceni > 0) and (hodnoceni <11)
                sleep 1
                print "Zadejte prosim pocet žánrů tohoto filmu: "
                pocet = gets.to_i
                sleep 1
                zanry = []
                pocet.times do |i|
                    print "Zadejte prosim #{i + 1}. žánr: "
                    zanr = gets.to_s.strip.downcase
                    sleep 1
                    zanry << zanr
                end
                databaze << {"nazev" => nazev, "reziser" => reziser, "rok" => rok, "hodnoceni" => hodnoceni.to_s.strip, "zanry" => zanry}
                sleep 1
                puts "Film s názvem: #{nazev} od rezisera #{reziser} byl uspesne pridan do databáze!"
                sleep 2
            else
                puts "Bohužel, zadali jste neplatnou hodnotu hodnocení filmu!"
                sleep 1
            end
        when 2  #vypsat vsechny filmy
            puts "Zde je kompletní výpis databáze:"
            sleep 1
            databaze.each do |a|
                puts "\nNázev Filmu: #{a["nazev"]} Režíroval: #{a["reziser"]} Rok vydání: #{a["rok"]} Hodnocení: #{a["hodnoceni"]}/10 Žánry: #{a["zanry"]}"
            end
        when 3  #hledat film podle nazvu
            puts "Jdeme hledat film podle jeho názvu!"
            sleep 1
            print "Zadejte prosim nazev hledaneho filmu: "
            nazev = gets.to_s.downcase.strip
            databaze.each do |film|
                if film["nazev"] == nazev
                    puts "Nalezeno!"
                    sleep 1
                    puts "Název Filmu: #{film["nazev"]} Režisér: #{film["reziser"]} Rok vydání: #{film["rok"]} Hodnocení #{film["hodnoceni"]}/10 Žánry: #{film["zanry"]}"
                    sleep 2
                end
            end
        when 4  #filtrovat podle hodnoceni
            puts "Jdeme filtrovat podle hodnoceni!"
            sleep 1
        when 5  #smazat film
            puts "Jdeme smazat film z databáze podle názvu!"
            sleep 2
            print "Zadejte prosim nazev hledaneho filmu: "
            nazev = gets.to_s.downcase.strip
            databaze.each do |film|
                if film["nazev"] == nazev
                    sleep 1
                    puts "Název Filmu: #{film["nazev"]} Režisér: #{film["reziser"]} Rok vydání: #{film["rok"]} Hodnocení #{film["hodnoceni"]}/10 Žánry: #{film["zanry"]}"
                    sleep 1
                    puts "Probíhá mazání..."
                    sleep 3
                    puts "Smazání filmu #{film["znazev"]} bylo úspěšné..."
                    databaze.delete_at(film)
                    sleep 2
                end
            end
        when 6  #statistiky
        when 7  #konec
            puts "Probíhá ukončování..."
            sleep 2
            puts "Těšime se na vás příště!"
            sleep 2
            exit
        else
            puts "Bohužel, zadali jste neplatnou volbu!"
            sleep 2
    end
end



#priprava na test č.2 - správa objednávek
#[1] Přidat objednávku, [2] Vypsat všechny objednávky, [3] Najít objednávku podle ID, [4] Spočítat cenu objednávky, [5] Smazat objednávku, [6] Statistiky, [7] Konec
databaze = Array.new
databaze << {"ID" => 1, "jmeno" => "Petr", "prijmeni" => "Mirga", "produkty" => ["pocitac", "myš"], "ceny" => [2343, 450], "zaplaceno" => "ano"}
databaze << {"ID" => 2, "jmeno" => "Tereza", "prijmeni" => "Baslova", "produkty" => ["herni klavesnice", "samolepky", "evoshield"], "ceny" => [1234, 2345, 7654], "zaplaceno" => "ne"}
databaze << {"ID" => 3, "jmeno" => "Jan", "prijmeni" => "Doležal", "produkty" => ["notebook"], "ceny" => [12345], "zaplaceno" => "ne"}
a = 3
akce = 1
puts "Vítej v systému Objednávek firmy ElektroPC!"
sleep 2
print "Zadejte prosim uzivatelske jmeno: "
uzivatel = gets.to_s.capitalize.strip
sleep 1
if uzivatel == "Admin"
    puts "Vítej Admin!"
    sleep 1
    print "Zadejte prosím heslo pro Admin: "
    heslo = gets.to_s.strip
    if heslo == "1234"
        puts "Vítej v systému Admin!"
        while akce != 7
            sleep 1
            puts "\n\n[1-přidat objednávku|2-vypsat všechny|3-najít podle ID|4-spočítat cenu|5-smazat objednávku|6-statistiky|7-konec]"
            sleep 1
            print "Jakou akci chcete provest: "
            akce = gets.to_i
            sleep 1
            case akce
                when 1
                    puts "Vybrali jste možnost vytvořit novou objednávku!"
                    sleep 1
                    id = a
                    print "Zadejte prosim jmeno zakaznika: "
                    jmeno = gets.to_s.strip.capitalize
                    sleep 1
                    print "Zadejte prosim prijmeni zakaznika: "
                    prijmeni = gets.to_s.strip.capitalize
                    sleep 1
                    print "Zadejte počet položek objednávky: "
                    pocet = gets.to_i
                    polozky = Array.new
                    pocet.times do |i|
                        print "Zadejte prosím název #{i + 1}. položky: "
                        polozka = gets.to_s.strip.downcase
                        polozky << polozka
                        sleep 1
                    end
                    sleep 1
                    ceny = Array.new
                    pocet.times do |i|
                        print "Zadejte prosim cenu #{i + 1}. položky (#{polozky[i]}): "
                        cena = gets.to_i
                        ceny << cena
                        sleep 1
                    end
                    sleep 1
                    print "Je objednávka již zaplacena?(ano/ne): "
                    odpoved = gets.to_s.strip.downcase
                    sleep 1
                    if odpoved == "ano"
                        zaplaceni = "ano"
                    else
                        zaplaceni = "ne"
                    end
                    sleep 2
                    databaze << {"ID" => id, "jmeno" => jmeno, "prijmeni" => prijmeni, "produkty" => polozky, "ceny" => ceny, "zaplaceno" => zaplaceni}
                    puts "Objednávka č. #{databaze[a + 1]["ID"]} byla úspěšně přidána!"
                    sleep 2
                    a = a + 1
                when 2
                    puts "Zde je kompletni vypis všech objednávek: \n"
                    sleep 1
                    databaze.each do |mezitest|
                        puts "ID: #{mezitest["ID"]}|Jméno a Příjmení Zákazníka: #{mezitest["jmeno"]} #{mezitest["prijmeni"]}|Obsah objednávky: #{mezitest["produkty"].join(", ")}|Zaplaceno: #{mezitest["zaplaceno"]}"
                        sleep 1
                    end
                when 3
                    puts "Vybrali jste možnost najít podrobnosti o objednávce pomocí ID čísla objednávky!"
                    sleep 1
                    print "Zadejte prosim ID číslo objednávky: "
                    sleep 1
                    cisloid = gets.to_i
                    if cisloid > a
                        puts "Bohužel, objednávka s tímto ID číslem není v našem systému"
                        sleep 2
                    else
                        puts "Probíhá hledání..."
                        sleep 3
                        vypis = databaze[(cisloid - 1)]
                        if vypis == nil
                            puts "Bohužel, objednávka s tímto ID číslem není v našem systému!"
                            sleep 2
                        else
                            puts "\nID: #{vypis["ID"]}|Jméno a Příjmení Zákazníka: #{vypis["jmeno"]} #{vypis["prijmeni"]}|Obsah objednávky: #{vypis["produkty"].join(", ")}|Zaplaceno: #{vypis["zaplaceno"]}\n"
                            sleep 2
                        end
                    end 
                when 4
                    puts "Vybrali jste si možnost vypočítat cenu objednávky!"
                    sleep 1
                    print "Zadejte prosim ID objednávky: "
                    sleep 1
                    cisloid = gets.to_i
                    if cisloid > a
                        puts "Bohužel, objednávka s tímto ID číslem není v našem systému"
                        sleep 2
                    else
                        puts "Probíhá hledání..."
                        sleep 3
                        vypis = databaze[(cisloid - 1)]
                        if vypis == nil
                            puts "Bohužel, objednávka s tímto ID číslem není v našem systému!"
                            sleep 2
                        else
                            puts "Probíhá počítání ceny objednávky č. #{cisloid}"
                            sleep 2
                            stoji = databaze[(cisloid - 1)]["ceny"].suma
                            puts "Celková cena objednávky č. #{cisloid} je #{stoji} Kč!"
                            sleep 2
                        end
                    end 
                when 5
                when 6
                    c = 0
                    b = 0
                    puts "Zde jsou statistiky našich objednávek:"
                    sleep 1
                    puts "Aktuální počet evidovaných objednávek: #{a}"
                    sleep 1
                    databaze.each do |jmeno|
                        if jmeno["zaplaceno"] == "ano"
                            b = b + 1
                        elsif jmeno["zaplaceno"] == "ne"
                            c = c + 1
                        end
                    end
                    puts "Aktuální počet zaplacených objednávek: #{b}"
                    sleep 1
                    puts "Aktuální počet nezaplacených objednávek: #{c}"
                    sleep 2
                when 7
                    puts "Probíhá ukončování programu..."
                    sleep 2
                    puts "Těšíme se na vás příště admin!"
                    sleep 2
                    exit
                else
                    puts "Zadali jste neplatnou volbu!"
                    sleep 2
            end
        end
    else
        puts "Bohužel, tohle není heslo pro Admin!"
        sleep 3
    end
else
    puts "Bohužel, toto uživatelské jméno v tomto systému nemá co dělat!"
    sleep 3
end
=end

=begin
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
=end


#28.4.2026
=begin
#procviceni zasobniku
zasobnik = []
puts "Zásobník!"
sleep 1
print "Zadejte prosim pocet\" nábojů\": "
pocet = gets.to_i
sleep 1
pocet.times do |i|
    print "Zadejte prosim #{i + 1}. naboj: "
    naboj = gets.to_s.strip
    zasobnik << naboj
    sleep 1
    p zasobnik
end
sleep 1
pocet.times do
    puts zasobnik.pop
end


#procviceni fronty
fronta = []
puts "Fronta!"
sleep 1
print "Zadejte prosim pocet\" účastníků fronty\": "
pocet = gets.to_i
sleep 1
pocet.times do |i|
    print "Zadejte prosim #{i + 1}. účastníka: "
    clovek = gets.to_s.strip
    fronta << clovek
    sleep 1
end
p fronta
sleep 1
pocet.times do
    puts fronta.shift
end
p Fronta



#3.5.2026
    #priprava na test
        #array of hashes
databaze = Array.new
odpoved = 1
databaze << {"cislo" => "1", "predmet" => "cestina", "datum" => "4.4.2020", "témata" => ["jan hus", "římská mytologie"], "stav" => "urgentní"}
databaze << {"cislo" => "3", "predmet" => "OPS", "datum" => "4.492020", "témata" => ["PC", "tiskárny", "alkohol"], "stav" => "pohoda"}
puts "Vítej v moji datbazi na pripravu na test!"
sleep 1
puts "Je to databáze školních testů!"
while odpoved != 5
    sleep 1
    puts "1-přidat nový test|2-odstranit|3-předělat stav|4-hledat|5-výpis|6-konec"
    sleep 1
    print "Zadejte prosim jak chcete pokračovat: "
    odpoved = gets.to_i
    sleep 1
    case odpoved
        when 1
            a = 0
            puts "Jdeme pridavat nový test!"
            sleep 1
            print "Zadejte prosim evid. číslo testu: "
            cislo = gets.to_s.strip
            databaze.each do |databaz|
                cislicko = databaz["cislo"]
                if cislicko == cislo
                    a = a + 1
                else
                end
                if a == 1
                    sleep 1
                    puts "Bohužel, toto evid. číslo již existuje!"
                    sleep 1
                else
                    sleep 1
                    print "Zadejte prosim predmet testu: "
                    predmet = gets.to_s.strip
                    sleep 1
                    print "Zadejte prosim datum testu: "
                    datum = gets.to_s.strip
                    sleep 1
                    print "Zadejte prosim počet témat testu: "
                    pocet = gets.to_i
                    sleep 1
                    temata = Array.new
                    pocet.times do |i|
                        print "Zadejte prosim #{i + 1}. téma: "
                        tema = gets.to_s.strip
                        temata << tema
                        sleep 1
                    end
                    print "Zadejte prosim stav testu: "
                    stav = gets.to_s.strip
                    sleep 1
                    databaze << {"cislo" => cislo, "predmet" => predmet, "datum" => datum, "témata" => temata, "stav" => stav}
                    sleep 1
                    puts "Úspěšně byl přidán test z #{predmet}!"
                    sleep 2
                    break
                end
            end
        when 2
        when 3
        when 4
        when 5
            puts "Zde je kompletní výpis:"
            sleep 1
            databaze.each do |databaz|
                cislo = databaz["cislo"]
                predmet = databaz["predmet"]
                datum = databaz["datum"]
                temata = databaz["témata"]
                stav = databaz["stav"]
                puts "#{cislo}.  Předmět: #{predmet} Datum: #{datum}, Témata: #{temata} Stav: #{stav}\n"
                sleep 1
            end
        when 6
            puts "Vybrali jste si možnost konec!"
            sleep 1
            puts "Těšíme se na vás příště!"
            sleep 2
        else
            puts "Zadali jste neplatnou volbu!"
            sleep 2
    end
end



#time
cas = Time.now
puts cas.strftime("%H:%Mkreten%S    kokot     %m.%d.%A   %B")

print "zadejte svuj vek: "
odpoved= gets.to_i
puts odpoved
puts "Je vám tedy #{odpoved} let"
=end


#10.5.2026
=begin
    #priprava na test
jmena = ["Pepa", "Franta", "Jakub", "Petr", "Marek", "Samuel"]
a = jmena.include?("František")
puts a
b = jmena.include?("Jakub")
puts b

sleep 1
p jmena.map {|jmeno| jmeno.upcase}
p jmena

sleep 1
p jmena.select{|jmeno| jmeno.length > 4}
p jmena.find{|jmeno| jmeno[2] == "r"}
p jmena.find{|jmeno| jmeno[2] == "Q"}

p jmena.sort_by{|jmeno| jmeno.length}

hash = {"Jeroným" => 1000, "Jiří" => 4930, "Petr" => 1234, "Tomáš" => 4545}
p hash
p hash.keys
p hash.values
p hash.has_key?("Jiří")
p hash.has_key?("štěpán")
p hash.has_value?(1000)
p hash.has_value?(11111111)

polehashu = []
polehashu << {"jmeno" => "Pepa", "vek" => "16", "mesto" => "Praha", "povolani" => "doktor"}
polehashu << {"jmeno" => "Jarka", "vek" => "45", "mesto" => "Strašice", "povolani" => "cukrářka"}
polehashu << {"jmeno" => "Franta", "vek" => "24", "mesto" => "Plzeň", "povolani" => "lékárník"}
polehashu << {"jmeno" => "Jarmila", "vek" => "75", "mesto" => "Otmíče", "povolani" => "studentka"}

p polehashu.find{|pole, integer|pole["jmeno"] == "Jarka"}
p polehashu.find{|prvek, integer| prvek["povolani"] == "doktor"}
p polehashu.sort_by{|prvek| prvek["vek"]}

a = polehashu.find{|prvek, integer| prvek["mesto"] == "Plzeň"}
puts a["jmeno"].rjust(100)
puts a["vek"].rjust(70)
puts a["mesto"].rjust(200)
puts a["povolani"].rjust(2560)




#kalkulacka s pouzitim def
def scitani(a,b)
puts "Vysledek vašeho výpočtu (#{a} + #{b}) je roven #{a + b}"
end

def odcitani(a,b)
puts "Vysledek vašeho výpočtu (#{a} - #{b}) je roven #{a - b}"
end

def nasobeni(a,b)
puts "Vysledek vašeho výpočtu (#{a} x #{b}) je roven #{a * b}"
end

def deleni(a,b)
puts "Vysledek vašeho výpočtu (#{a} : #{b}) je roven #{a / b}"
end

puts "Vítej v první kalkulačce za použití def!"
sleep 1
print "Zadejte prosim prvni cislo: "
a = gets.to_f
sleep 1
puts "[ 1-scitani | 2-odcitani | 3-nasobeni | 4-deleni ]"
sleep 1
print "Zadejte prosim jakou operaci chcete provest: "
volba = gets.to_i
sleep 1
case volba
    when 1
        puts "Vybrali jste si scitani!"
        sleep 1
        print "Zadejte prosim druhe cislo: "
        b = gets.to_f
        sleep 1
        scitani(a, b)
    when 2
        puts "Vybrali jste si odcitani!"
        sleep 1
        print "Zadejte prosim druhe cislo: "
        b = gets.to_f
        odcitani(a, b)
    when 3
        puts "Vybrali jste si nasobeni!"
        sleep 1
        print "Zadejte prosim druhe cislo: "
        b = gets.to_f
        nasobeni(a, b)
    when 4
        puts "Vybrali jste si deleni!"
        sleep 1
        print "Zadejte prosim druhe cislo: "
        b = gets.to_f
        if b == 0
            puts "Bohužel, nulou dělit nelze!"
            sleep 2
        else
            deleni(a, b)
        end
    else
        puts "Bohužel jste zadali neplatnou volbu!"
        sleep 2
end
=end


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
                when 1
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
                when 2
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