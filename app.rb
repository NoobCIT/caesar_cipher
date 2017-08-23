require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/caesar_cipher.rb'


get '/' do
  #shift_factor is located in the form for index.erb, sets = to shift
  shift = params['shift_factor'].to_i
  #phrase is in the form for index.erb, sets = to string
  string = params['phrase']
  encrypted = if shift.nil? || string.nil?
                "Waiting for Inputs"
              else
                encrypted_message(string, shift)
              end
  erb :index, :locals => {:encrypted => encrypted}
end

def encrypted_message(string, shift)
  message = caesar_cipher(string, shift)
  "Here's the encryption: #{message}"
end

#lujanfernaud/sinatra-caesar-cipher
