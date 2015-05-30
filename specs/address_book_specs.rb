RSpec.describe AddressBook do

 context "attributes" do
  it "should respond to entries" do
    book = AddressBook.new
    expect(book).to respond_to(:entries)
  end

  it "should initialize entries as an array" do
    book = AddressBook.new
    expect(book.entries).eql? "[]"
  end

  it "should initialize entries as empty" do
    book = AddressBook.new
    expect(book.entries).eql? 0
  end

 context ".add_entry" do
  it "adds only one entry to the address book" do
    book = AddressBook.new
    book.add_entry("Bo Jackson", "123-456-890", "great@sports.com")

    expect(book.entries).eql? 1
 end

 #  it "adds the correct information to entries" do
 #    book = AddressBook.new
 #    book.add_entry("Bo Jackson", "123-456-890", "great@sports.com")
 #    new_entry = book.entries[0]

 #    expect(new_entry.name).eql? 'Bo Jackson'
 #    expect(new_entry.phone_number).eql? "123-456-890"
 #    expect(new_entry.email).eql? "great@sports.com"
    end
  end
end