require 'net/http'
require 'uri'

require 'rubygems'
require 'json'

module ContactList
  class Client

    REQUEST_URI = 'http://contacts.huangzhimin.com/'
    #REQUEST_URI = 'http://localhost:8080/ContactListService/contacts'

    Contact = Struct.new(:username, :email)

    def self.fetch(account, password, type)
      response = get_response(REQUEST_URI, {'account' => account, 'password' => password, 'type' => type})
      contacts = []
      data = JSON.parse(response.body)
      
      raise ContactListException.new(data['error']) if data['error']
      
      data['contacts'].each do |contact|
        contacts << Contact.new(contact['username'], contact['email'])
      end
      contacts
    end
    
    private
      def self.get_response(url, post_data)
        response = Net::HTTP.post_form URI.parse(url), post_data
        if Net::HTTPRedirection === response
          response = get_response(response['location'], post_data)
        end
        response
      end
  end
  
  class ContactListException < Exception
  end
end

