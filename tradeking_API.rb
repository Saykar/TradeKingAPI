require 'rubygems'
require 'oauth'

Consumer_Key	= 'W7vBe8hQTapuM2leeiqUIuROTEbxnxFP0zbxeu5'
Consumer_Secret =	'IbpAC4lhfW8TiYT8HuaLQ6Q7jxKCq2DcZ4vwD2'
Access_Token =	'qwQ5akLig2MPRARv1OCInjoapV7Yiy3OtAQBe9j'
Access_Token_Secret =	'rerv4GNghlGKDAHNO58KBE0swqn1Vu6ilbnFBB2'

@consumer = OAuth::Consumer.new(Consumer_Key, Consumer_Secret, {:site => 'https://api.tradeking.com'})

@access_token = OAuth::AccessToken.new(@consumer, Access_Token, Access_Token_Secret)

#puts @access_token.get('/v1/accounts.json', {'Accept' => 'application/json'}).body

puts @access_token.get('/v1/market/ext/quotes.json?symbols=tibx', {'Accept' => 'application/json'}).body  