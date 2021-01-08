require "colorize"
def seçenek_bir
    puts """

[1] port taraması(hızlı)
[2] hızlı tarama(çok hızlı)
[3] işletim sistemi ve açık port tespiti(biraz hızlı)
[4] işletim sistemi, açık port ve server sürüm sistemi(yavaş) 
[5] firewall koruması var mı öğrenme(hızlı)
[6] firewall koruması olan bir hedefi tarama

lütfen istediğiniz seçeneğin numarasını girin
    """
    print "\n"
    print "cevabınız -->"
    cevap = gets.chomp
    if cevap == "1"
        print "hedef ip veya domain adresi -->"
        hedef = gets.chomp
        puts "------------------------------------------ sonuçlar ------------------------------------------"
        system("nmap "+hedef)
        puts "----------------------------------------------------------------------------------------------"
	elsif cevap == "2"
	    print "hedef ip veya domain adresi -->"
        hedef  = gets.chomp
        puts "------------------------------------------ sonuçlar ------------------------------------------"
        system("nmap -F "+hedef)
        puts "----------------------------------------------------------------------------------------------"
	elsif cevap == "3"
	    print "hedef ip veya domain adresi -->"
        hedef = gets.chomp
        puts "------------------------------------------ sonuçlar ------------------------------------------"
        system("nmap -O "+hedef)
        puts "----------------------------------------------------------------------------------------------"
    elsif cevap == "4"
        print "hedef ip veya domain adresi -->"
        hedef = gets.chomp
        puts "------------------------------------------ sonuçlar ------------------------------------------"
        system("nmap -A -v "+hedef)
        puts "----------------------------------------------------------------------------------------------"
    elsif cevap == "5"
        print "hedef ip veya domain adresi -->"
        hedef = gets.chomp
        puts "------------------------------------------ sonuçlar ------------------------------------------"
        system("nmap -sA "+hedef)
        puts "----------------------------------------------------------------------------------------------"
    elsif cevap == "6"
        print "hedef ip veya domain adresi -->"
        hedef = gets.chomp
        puts "------------------------------------------ sonuçlar ------------------------------------------"
        system("nmap -PN "+hedef)
        puts "----------------------------------------------------------------------------------------------"
    end
    anamenu()
end
def anamenu
    puts """
[1] tek bir hedefe tarama yap
[2] birden fazla hedefe tarama yap

lütfen istediğiniz seçeneğin numarasını giriniz

  """
    print "cevabınız -->"
    cevap = gets.chomp
    if cevap == "1"
        seçenek_bir()
    elsif cevap == "2"
        seçenek_iki()
    end
end
def seçenek_iki
    puts """
    [1] port taraması(hızlı)
    [2] hızlı tarama(çok hızlı)
    [3] işletim sistemi ve açık port tespiti(biraz hızlı)
    [4] işletim sistemi, açık port ve server sürüm sistemi(yavaş) 
    [5] firewall korumaları var mı öğrenme(hızlı)
    [6] firewall koruması olan hedefleri tarama

    lütfen istediğiniz seçeneğin numarasını giriniz

    """
    print "cevabınız -->"
    cevap = gets.chomp
    print "hedeflerin olduğu dosya -->"
    hedef = gets.chomp
        if cevap == "1"
            print "hedef ip veya domain adresi -->"
            hedef = gets.chomp
            puts "------------------------------------------ sonuçlar ------------------------------------------"
            system("nmap -iL "+hedef)
            puts "----------------------------------------------------------------------------------------------"
        elsif cevap == "2"
            print "hedef ip veya domain adresi -->"
            hedef  = gets.chomp
            puts "------------------------------------------ sonuçlar ------------------------------------------"
            system("nmap -F -iL "+hedef)
            puts "----------------------------------------------------------------------------------------------"
        elsif cevap == "3"
            print "hedef ip veya domain adresi -->"
            hedef = gets.chomp
            puts "------------------------------------------ sonuçlar ------------------------------------------"
            system("nmap -O -iL "+hedef)
            puts "----------------------------------------------------------------------------------------------"
        elsif cevap == "4"
            print "hedef ip veya domain adresi -->"
            hedef = gets.chomp
            puts "------------------------------------------ sonuçlar ------------------------------------------"
            system("nmap -A -v -iL "+hedef)
            puts "----------------------------------------------------------------------------------------------"
        elsif cevap == "5"
            print "hedef ip veya domain adresi -->"
            hedef = gets.chomp
            puts "------------------------------------------ sonuçlar ------------------------------------------"
            system("nmap -sA -iL "+hedef)
            puts "----------------------------------------------------------------------------------------------"
        elsif cevap == "6"
            print "hedef ip veya domain adresi -->"
            hedef = gets.chomp
            puts "------------------------------------------ sonuçlar ------------------------------------------"
            system("nmap -PN -iL "+hedef)
            puts "----------------------------------------------------------------------------------------------"
        end
    anamenu()
end

anamenu()