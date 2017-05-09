def dead(why)
    puts why, "You are a loser."
    exit(0)
end

def start_life
    puts "You have graduated from high school. Do you want to go to college? Type 'yes' or 'no'."
    print "> "
    choice = $stdin.gets.chomp
    
    if choice == "yes"
        puts "Great." 
        college
    elsif choice == "no"
        puts "Maybe there's something to be said for risk takers? Buckle up...it's gonna be a bumpy ride."
        no_college
    else
        puts "Since you still can't read or follow directions, perhaps you should redo high school? Check back again in four years."
        exit(0)
    end
end

def college
    puts "You went to college and graduated. Do you want to get a job? Type 'I guess so' or 'fuck no'."
    print "> "
    choice = $stdin.gets.chomp
    
    if choice.capitalize == "I guess so"
        puts "Okay." 
        job
    elsif choice == "fuck no"
        puts "As a graduation gift, your parents paid the first two months of your rent but without a job, you can't pay your bills. Your landlord evicts you and you are homeless."
        homeless
    else
        puts "Please make a decision."
        college
    end
    
end

def no_college
    puts "You decided against college but your family was having none of that - they got pissed and threw you out of the house. You are now homeless. Do you want to get a job, or do you want to stay homeless? Type 'job' or 'homeless'."
    print "> "
    choice = $stdin.gets.chomp

    if choice == "job"
        cannot_get_job_hygiene 
    elsif choice == "homeless"
        homeless
    else
        puts "Please make a decision."
        no_college
    end

end

def homeless
    puts "As a homeless person, life is tough. Much tougher than college or some shitty job."
    puts "Regardless, your main concern right now is food and water. How are you going to get those basic necessities?"
    puts "Type: 'beg', 'pray', 'get a shitty job'"
    print "> "
    choice = $stdin.gets.chomp
  
    if choice == "beg"
        puts "You get enough money each day for a slice of pizza and a soda. You are suffering from malnutrition and are desperately in need of a dentist and a shower."
        dead("Perhaps you should have opted for a shitty job.")
    elsif choice == "pray"
        puts "Prayers don't work. Your teeth rot and you starve to death."
        dead("Perhaps you should have had a little faith in yourself instead.")
    elsif choice == "get a shitty job"
        cannot_get_job_hygiene
    else
        puts "Please make a decision."
        homeless
    end

end

def cannot_get_job_hygiene 
    puts "You tried but were unable to get a job. The reason stated at every interview was your poor hygiene. Do you want to first go to a shelter to get a stable place to live and a shower? Type 'yes' or 'no'"
    print "> "
    choice = $stdin.gets.chomp
    
    if choice == "yes"
        shelter
    elsif choice == "no"
        homeless
    else
        puts "Please make a decision."
        cannot_get_job_hygiene
    end 

end

def shelter
    puts "You scored a filthy cot in a shelter that smells of urine and filth-stench! Do you spend the stipend the shelter gave you on a bottle of booze to celebrate or do you lug your clothing to the local laundermat? Type 'booze' or 'laundry'."
    print "> "
    choice = $stdin.gets.chomp
    
    if choice == "booze"
        dead("Clearly, you will never learn.")
    elsif choice == "laundry"
        puts "Smart move. You interviewed for that shitty job and were hired."
        job
    else
        puts "Please make a decision."
        shelter
    end

end

def job
    puts "You start an entry-level position at a port-a-potty company. Needless to say, you're not happy."
    puts "Do you continue to work hard to climb the corporate ladder or do you slack off and coast hoping no one notices and collect your tiny paycheck? Type 'ladder' or 'coast'."
    print "> "
    choice = $stdin.gets.chomp
    
    if choice == "ladder"
        puts "You work hard and no one notices."
        job_2
    elsif choice == "school"
        puts "You can't afford school, so you take out loans."
    elsif choice == "coast"
        puts "You drag yourself into the office every day and hate yourself."
        dead("At least you had potential!")
    else
        puts "Please make a selection."
        job
    end

end 

def job_2
    puts "Do you keep trying or do you look for a new job? Type 'keep trying' or 'new job'"
    print "> "
    choice = $stdin.gets.chomp
    
    if choice == "keep trying"
        promotion
    elsif choice == "new job"
        apply
    else
        puts "Please make a decision."
        job_2
    end

end


def promotion
    puts "Someone finally noticed. You've been promoted to 'Toilet Manager'. You call everyone you know to share the good news."
    puts "Your promotion really stirred things up and now your mother's friend from bingo wants to introduce you to someone special. Do you agree to this blind date? Type 'yes' or 'no'."
    print "> "
    choice = $stdin.gets.chomp

    if choice == "yes"
        puts "You sure are brave. You go on the blind date and learn your date is actually blind. Better for you anyway, looks were never your strong suit. You fall in love and get married."
        married
    elsif choice == "no"
        puts "You decide against the blind date and try online dating without luck. You remain single."
        single
    else
        puts "Please make a decision."
        promotion
    end
    
end

def apply
    puts "You apply to 1,478 jobs, you hear back from five companies. You get an interview at two of those companies, and by some miracle, both offer you a job. Do you choose the company offering you a $20k raise with little growth opportunity, or the company offering you a $10k raise with lots of growth opportunity? Type 'show me the money' or 'growth is more important'"
    print "> "
    choice = $stdin.gets.chomp
    
    if choice == "show me the money"
        puts "You might regret this but at least you get some instant gratification. Time to dive right in at your new job."
        new_job
    elsif choice == "growth is more important"
        puts "You might regret this but at least you have a positive outlook. Time to dive right in at your new job."
        new_job
    else
        puts "Please make a decision."
        apply
    end
    
end

def new_job
    puts "Your new job is going swimmingly! You end up loving it and are working hard to get noticed to hopefully get a promotion. In the meantime, you buy an apartment!"
    promotion
end

def married
    puts "Married life is awesome! With all the encouragement from your spouse, you have the drive to succeed in your carreer. You continue to move up the ladder and eventually you get the ultimate promotion."
    king_queen_of_the_world
end


def single
    puts "Being single isn't a bad thing, in fact, you're able to focus on your career. You continue to move up the ladder and eventually you get the ultimate promotion."
    king_queen_of_the_world
    of_the_world
end


def king_queen_of_the_world
    puts "You are the King/Queen of the world, and you win at life!"
    exit(0)
end

start_life
