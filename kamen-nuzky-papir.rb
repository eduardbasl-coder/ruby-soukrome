#kámen nůžky papír - 1. verze

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