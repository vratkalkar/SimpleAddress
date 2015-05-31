RSpec.describe AddressBook do
  let(:book) {AddressBook.new}

  def check_entry(entry,expected_name, expected_number, expected_email)
    expect(entry.name).to eql expected_name
    expect(entry.phone_number).to eql expected_number
    expect(entry.email).to eql expected_email
  end

 context "attributes" do
  it "should respond to entries" do
    expect(book).to respond_to(:entries)
  end

  it "should initialize entries as an array" do
    expect(book.entries).eql? "[]"
  end

  it "should initialize entries as empty" do
    expect(book.entries).eql? 0
  end

 context ".add_entry" do
  it "adds only one entry to the address book" do
    book.add_entry("Bo Jackson", "123-456-890", "great@sports.com")

    expect(book.entries).eql? 1
 end

  it "adds the correct information to entries" do
    book.add_entry("Bo Jackson", "123-456-890", "great@sports.com")
    new_entry = book.entries[0]

    expect(new_entry.name).eql? 'Bo Jackson'
    expect(new_entry.phone_number).eql? "123-456-890"
    expect(new_entry.email).eql? "great@sports.com"
    end
   end
  end

  context ".remove_entry" do
    it "removes only one entry from the address book" do
      book.remove_entry("Bo Jackson", "123-456-890", "great@sports.com")

      expect(book.entries).eql? 0
    end
  end

  describe ".import_from_csv" do
    it "imports the correct number of entries" do
    book.import_from_csv("entries.csv")
    book_size = book.entries.size
    expect(book_size).to eql 1
  end
  it "checks the details of the first entry" do
    book.import_from_csv("entries.csv")
    entry_one = book.entries[0]
    check_entry(entry_one, "Vivek", "123-456-1234", "vratkalkar@email.com")
  end
 end

end