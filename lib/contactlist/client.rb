require 'net/http'
require 'uri'

require 'rubygems'
require 'json'

module ContactList
  class Client

    # REQUEST_URI = 'http://contacts.huangzhimin.com'
    REQUEST_URI = 'http://localhost:8080/ContactListService/contacts'

    Contact = Struct.new(:username, :email)

    def self.fetch(account, password, type)
      response = Net::HTTP.post_form URI.parse(REQUEST_URI), {'account' => account, 'password' => password, 'type' => type}
      contacts = []
      data = JSON.parse(response.body)
      data['contacts'].each do |contact|
        contacts << Contact.new(contact['username'], contact['email'])
      end
      contacts
    end
  end
end

