# leetcode

def num_unique_emails(emails)
    unique_emails = []
    
    emails.each do |email|
        temp_word = ""
        on_domain = false
        ignore = false
        
        email.each_char do |char|
            if char == "@"
                on_domain = true
                ignore = false
            elsif ignore
                next
            elsif char == "." && !on_domain
                next
            elsif char == "+" && !on_domain
                ignore = true
            else
                temp_word << char
            end
        end
        
        unique_emails << temp_word if !unique_emails.include?(temp_word)
    end
    unique_emails.length
end