class Contact
  attr_accessor :first_name, :last_name, :email, :note

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = note
  end

  def display_contact
    puts "First name: #{first_name}"
    puts "Last name: #{last_name}"
    puts "Email: #{email}"
    puts "Notes: #{notes}"
  end
end

