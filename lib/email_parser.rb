# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#email_addresses = "john@doe.com, person@somewhere.org"
#parser = EmailAddressParser.new(email_addresses)
#parser.parse
# => ["john@doe.com", "person@somewhere.org"]
#You should be able to initialize with a list of email addresses either separated with spaces or separated with commas. 
#The parse method should, additionally, only return unique addresses.



require 'pry'

class EmailAddressParser

    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        #called delete on @emails string
        #tell delete to delete the comma that comma between each email in the string
        #use split to separate each email in separate strings and create an array
        #then uniq returns an array of only unique elements w/i the array you call uniq on
        @emails.delete(",").split.uniq
    end


end

