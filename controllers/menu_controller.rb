require_relative "../models/address_book"
require_relative "../controllers/entry_submenu"

class MenuController
  attr_accessor :address_book

  def initialize
    @address_book = AddressBook.new
  end

  def main_menu
    puts "Main Menu - #{@address_book.entries.count} entries"
    puts "1 - View all entries"
    puts "2 - Create an entry"
    puts "3 - Search for an entry"
    puts "4 - Import entries froma CSV"
    puts "5 - Exit"
    print "Enter you selection: "

    selection = gets.to_i

    case selection
    when 1
      system "clear"
      view_all_entries
      main_menu
    when 2
      system "clear"
      create_entry
      main_menu
    when 3
      system "clear"
      search_entries
      main_menu
    when 4
      system "clear"
      read_csv
      main_menu
    when 5
      puts "Good-bye!"
      exit(0)
    else
      system "clear"
      puts "Sorrt, that is not a valid option"
      main_menu
    end
  end

  def view_all_entries
    @address_book.entries.each do |entry|
      system "clear"
      puts entry.to_s

      entry_submenu(entry)
    end

    system "clear"
    puts "End of entries"
  end

  def create_entry
    system "clear"
    puts "New Address Entry"

    print "Name: "
    name = gets
    print "Phone number: "
    phone = gets
    print "Email: "
    email = gets

    @address_book.add_entry(name, phone, email)

    system "clear"
    puts "New entry added"
  end

  def search_entries
  end

  def read_csv
  end

end