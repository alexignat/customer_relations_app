class Contact
  attr_accessor :first_name, :last_name, :email, :note

  def initialize(first_name, last_name, email, note)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
    @email = email
    @note = note
  end
end

# first_contact = Contact.new("alex", "ignat", "alex@ignat.com", "is awesome")
# first_contact.display_contact