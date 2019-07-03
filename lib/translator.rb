require "yaml"

def load_library(file)
  data = YAML.load_file(file)
 
  formatted = {"get_emoticon" => {}, "get_meaning" => {}}
  
  data.each do |meaning, [english, japanese]|
    if !formatted["get_meaning"].has_key?(japanese)
      formatted["get_meaning"][japanese] = "foo"
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