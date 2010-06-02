require 'net/http'
require 'net/https'
require 'uri'

require 'rubygems'
require 'json'

module ContactList
  class Client

    #REQUEST_URI = 'http://contacts.huangzhimin.com/'
    #REQUEST_URI = 'http://localhost:8080/ContactListService/contacts'

    Contact = Struct.new(:username, :email)

    def self.fetch(account, password, type)
      response = get_response("account=#{account}&password=#{password}&type=#{type}")
      contacts = []
      data = JSON.parse(response.body)
      
      raise ContactListException.new(data['error']) if data['error']
      
      data['contacts'].each do |contact|
        contacts << Contact.new(contact['username'], contact['email'])
      end
      contacts
    end
    
    private
      def self.get_response(data)
        http = Net::HTTP.new('123.183.209.87', 8443)
        http.use_ssl = true
        path = '/ContactListService/contacts'
        response = http.post2(path, data)
      end
  end
  
  class ContactListException < Exception
  end
end

