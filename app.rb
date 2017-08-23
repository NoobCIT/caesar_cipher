require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/caesar_cipher.rb'

get '/' do
  #shift_factor is from index.erb, sets = to shift
  #phrase is also from index.erb, sets = to string
  shift = params['shift_factor'].to_i
  string = params['phrase']
  #Then it runs code below
  encrypted = if shift.nil? && string.nil?
                "Waiting for Inputs"
              else
                encrypted_message(string, shift)
              end
  erb :index, :locals => {:encrypted => encrypted, :shift => shift}
end

def encrypted_message(string, shift)
  message = caesar_cipher(string, shift)
  "Here's the encryption: #{message}"
end
