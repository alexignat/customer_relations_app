class Contact
  attr_accessor :first_name, :last_name, :email, :note
  attr_reader :id

  @@id = 1

  def initialize(first_name, last_name, email, note)
    @id = @@id
    @@id += 1
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
    @email = email
    @note = note
  end

  def display_contact
    puts "Contact id: #{@id}"
    puts "First name: #{@first_name}"
    puts "Last name: #{@last_name}"
    puts "Email: #{@email}"
    puts "Note: #{@note}"
  end
end

