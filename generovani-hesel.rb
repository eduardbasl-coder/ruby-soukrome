    #generovani hesel - 1
puts "Vítej v generatoru Hesel!"
print "Jsi připraven začít?(ano/ne): "
volba = gets.strip.downcase
case volba
    when "ano"
        puts "\nSuper, pojďme na to!"
        print "Kolik znaků si přejete aby mělo vaše heslo?: "
        velikost = gets.to_i
        mala = ("a".."z").to_a
        velka = ("A".."Z").to_a
        cisla = ("0".."9").to_a
        specialniznaky = ["!", "@", "#", "$", "%", "&", "*"]
        print "\nVaše náhodně vygenerované heslo o počtu znaků: #{velikost.to_s} je: "
        velikost.times do
            nahoda = rand (1..4)
            case nahoda
                when 1
                    print mala.sample
                when 2
                    print velka.sample
                when 3
                    print cisla.sample
                when 4
                    print specialniznaky.sample
            end
        end
                    

    when "ne"
        puts "\nnevadi!"
end

    #generovani hesel - 2
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