#RPG1- multipayer

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