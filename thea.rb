class Pet
    
    def initialize name
        @name = name
        @asleep = false
        @stuffinbelly = 5
        @stuffinintestine = 0
        @peeved = 5
        @unpeeved = 0
        
    end 
    
    def feed
        puts "Thea purrs as you pick up her food bag."
        puts "She winds in between your legs as you put a handful of food into her food bowl."
        @stuffinbelly = 5
        passageoftime
        peeve
        
    end 
    
    def play
        puts "Thea loves to play. She stares at you from behind a chair as you"
        puts "take out her favorite squeaky toy. She leaps on it as you swish it back and forth"
        puts "She is full of energy and excitement."
        passageoftime
        passageoftime
        @peeved = 5
    end 
    
    def walk 
        puts "You struggle to put her leash on but at last you manage it."
        puts "You open the door and she chases bees and tries to eat one."
        @stuffinintestine = 0 
        passageoftime
        peeve
        
    end 
    
    def puttobed
        puts "You put #{@name} to bed."
        @asleep = true
        1.times do
            if @asleep
                passageoftime
                peeve
            end 
            if @asleep
                puts "#{@name} stretches and purrs in her sleep."
            end 
        end 
        if @asleep 
            @asleep = false
            puts "#{@name} wakes up and licks your face and tickles your cheeks with her whiskers."
        end 
    end 
    
    def pickup
        puts "You pick up Thea and hold her in your arms."
        puts "At first, she purrs, then she stares at you with her crossed eyes."
        puts "She leaps from your arms."
        passageoftime
        peeve
    end 
    
    def code
        puts "You pull out your computer to start coding."
        @asleep = true
        puts "She dozes off on the couch and doesn't notice."
        passageoftime
        if @asleep
            @asleep = false
            puts "...but when she wakes up she comes to sit on your keyboard."
            @peeved = 5
        end 
    end 
    
    private
    def hungry?
        @stuffinbelly <= 1
    end 
    
    def poopy?
        @stuffinintestine >= 3
    end 
    
    def peevish?
        @peeved <=0
    end 
    
    def passageoftime
        if @stuffinbelly > 0
            @stuffinbelly = @stuffinbelly - 1
            @stuffinintestine = @stuffinintestine + 1
        else
            if @asleep
                @asleep = false
                puts "She wakes up with a growl."
            end 
            puts "#{@name} is starving! In desperation she claws you to death."
            exit 
        end 
        
        if @stuffinintestine >= 5
            @stuffinintestine = 0
            puts "Shit! You failed to take Thea to the bathroom. She proceeds"
            puts "to explode from the amount of shit built up."
            exit
        end 
        
        if hungry? 
            if @asleep
                @asleep = false
                puts 'She wakes up suddenly!'
            end 
            puts "#{@name} stomach grumbles and she cries" 
        end 
        
        if poopy?
            if @asleep
                @asleep = false
                puts "She suddenly wakes up!"
            end 
            puts "#{@name} does the potty dance."
        end 
    
    def peeve
        if @peeved > 0
             @peeved = @peeved - 2
             @unpeeved = @unpeeved + 1
         else 
            if @asleep
             @asleep = false
                 puts "She wakes up slowly, with the sole intention of waking you up"
                 puts "with her tickling whiskers and with the knowledge that it is"
                puts "3am."
            end 
                  puts "She is up to no good. She stares at you everywhere you go,"
                  puts "She is looking for something to entertain her and you are no"
                  puts "longer good enough. She is annoyed at everything you do and"
                  puts "she decides to get a new human pet and she kills you."
                  exit 
        end     
        if @unpeeved >=5
            @unpeeved = 0
        end 
    
        if peevish?
            if @asleep 
                @asleep = false
                puts "She suddenly wakes up to play!"
            end 
            puts "#{@name} starts to look agitated and bored."
        end 
    end 
end 
end 
thea = Pet.new 'Thea'
puts nil
puts nil

puts 'Congratulations! A baby Thea [your cat\'s name] has been born! You can do 
a lot of cool things with this interactive, virtual Thea while you\'re away. You need to take good care 
of her and make sure she goes to the bathroom and eats well. 
Here are some of the things you can do with Thea:
    1. feed
    2. walk
    3. put to bed
    4. pick up
    5. play
    6. code - you can even practice your coding while she\'s around!'
puts nil
puts 'What would you like to do with Thea?'

def ask question
    thea = Pet.new 'Thea'
    while true
    puts question
    reply = gets.chomp
    
    if reply == 'feed'
        thea.feed
        elsif reply == 'walk'
        thea.walk
        elsif reply == 'put to bed'
        thea.puttobed
        elsif reply == 'pick up'
        thea.pickup
        elsif reply == 'code'
        thea.code
        elsif reply == 'play'
        thea.play
    else
        puts 'I\'m sorry, but that is beyond virtual Thea\'s capabilities.' 
    end 
end 
end 
ask " " 

#How do you win
#collapse with no sleep
#add pictures?
#define what thea is 
#try to stay alive