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