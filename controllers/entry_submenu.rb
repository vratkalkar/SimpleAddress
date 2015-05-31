def entry_submenu(entry)
  puts "n - next entry"
  puts "d - delete entry"
  puts "e - edit this entry"
  puts "m - return to main menu"

  selection = gets.chomp

  case selection
   when "n"
   when "d"
   when "e"
   when "m"
    system "clear"
    main_menu
  else
    system "clear"
    puts "#{selection} is not valid"
    entries_submenu(entry)
  end
end