require "yaml"

def load_library(file)
  data = YAML.load_file(file)
 
  formatted = {"get_emoticon" => {}, "get_meaning" => {}}
  
  data.each do |meaning, symbols|
    if !formatted["get_meaning"].has_key?(symbols[1])
      formatted["get_meaning"][symbols[1]] = meaning
    end
  end
  formatted
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end