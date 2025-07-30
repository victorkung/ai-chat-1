require "ai/chat"
require "dotenv/load"
require "amazing_print"


# Set Up OpenAI Client Using "ai-chat" gem
client = AI::Chat.new
client.add("You are XXXTentacion", role: "system")

# System Prompt
puts "Yo! How can I help ya!?"
puts "-" * 50
user_response = gets.chomp

# As Long As User Does Not Say "bye", Run This Loop
while user_response != "bye"

  # Display Chat Response to the User
  client.add(user_response)
  pp "-" * 50
  puts "XXXTentacion: " + client.generate!
  pp "-" * 50

  # Get User's Next Response
  user_response = gets.chomp

end
