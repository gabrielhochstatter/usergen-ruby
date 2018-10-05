require 'json'

def get_names 
    file = File.read('./names.json')
    data = JSON.parse(file)
end

def generate_users(amount = 10, filename = 'output.json') 
    names = get_names

    output = []
    
    amount.times do |i|
        random_first_name = names.shuffle.pop
        random_last_name = names.shuffle.pop
        username_template = "#{random_first_name.downcase}_#{random_last_name.downcase}"
        email_template = "#{random_first_name.downcase}.#{random_last_name.downcase[0]}@notrealmail.com"
        created_at = Time.now.strftime('%FT%T%:z')
        template = {
            'id': (i + 1).to_s,
            'firstName': random_first_name,
            'lastName': random_last_name,
            'username': username_template,
            'email': email_template,
            'password': '???',
            'createdAt': created_at,
            'lastLogin': created_at,
            'isVerified': false

        }
        output << template
    end

    json_output = JSON.generate(output)

    File.write("./output/#{filename}", json_output)

    p "#{amount.to_s} fake users were written to #{filename}!"
end

def main
    puts "Welcome to the Random User Generator!"
    puts "How many fake users do you need?"

    amount_of_users = gets.chomp

    puts "Now tell me what the filename should be for these #{amount_of_users} users:"
    
    filename = gets.chomp + '.json'
    
    generate_users(amount_of_users.to_i, filename)
    puts "Succesfully generated #{amount_of_users} fake users! You can find them in /output/#{filename}."

end
