# require modules here
require 'yaml'
<<<<<<< HEAD
def load_library(file)
=======
require 'pry'
def load_library(file)
  # code goes here
>>>>>>> b1903fd2a6794db8a44f021dc18fd2368c99221e
  
  library = YAML.load_file(file)
  
  library.each_with_object({}) do |(key, value), emote_hash|
    
    if emote_hash.include?(key) == false
      emote_hash[key] = {}
<<<<<<< HEAD
      emote_hash[key][:english] = {}
      emote_hash[key][:japanese] = {}
    end
    
    emote_hash[key][:english] = library[key][0]
    emote_hash[key][:japanese] = library[key][1]
  
  end

=======
    end
    
    if emote_hash[key].include?(:english) == false
      emote_hash[key][english] = {}
      emote_hash[key][japanese] = {}
    end
    
    emote_hash[key][english] = library[key][0]
    emote_hash[key][japanese] = library[key][1]
  end
  
  return emote_hash
  
>>>>>>> b1903fd2a6794db8a44f021dc18fd2368c99221e
end

def get_japanese_emoticon(file, emote)
  
  emote_hash = load_library(file)
  
  emote_hash.each do |meaning, language|

    language.each do |lang, face|
      
      if emote == face
        return emote_hash[meaning][:japanese]
      end
    end
  end
  
  return "Sorry, that emoticon was not found"
  
endgame

def get_english_meaning(file, emote)

  emote_hash = load_library(file)
  
  emote_hash.each do |meaning, language|
    
    language.each do |lang, face|
      
      if emote == face
        return meaning
      end
    end
  end
  
  return "Sorry, that emoticon was not found"
  
end