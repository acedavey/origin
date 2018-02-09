require 'corlorize'
require_relative 'git'

class Main
    include Git 

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
            puts 'Invalid choice1'
            menu
    end
end

Main.menu 
    