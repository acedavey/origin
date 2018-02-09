require 'corlorize'
def puts_git(cmd)
    puts `git #{cmd} -h`
end

def menu 
    puts 'MAIN MEMNU' .colorize(:cyan)
    puts '1: Enter git command' .colorize(:cyan)
    puts '2: Exit' .colorize(:cyan)
    choice = gets.to_i
    case choice
    when 1
        puts 'Entger git command' .colorize(:green)
        puts_git(gets.strip)
        menu
    when 2 
        exit 
    else
        puts 'Invalid choice'
        menu
    end
end

menu 
    