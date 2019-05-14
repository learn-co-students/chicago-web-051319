require 'rest-client'
require 'json'
require 'colorize'

def get_search_term
  puts "Hello! Let's find some books! Please enter a search term: "
  gets.chomp
end

def get_books_from_api(search_term)
  RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{search_term}")
end

def has_volume_info?(hash)
  hash["volumeInfo"]
end

def get_title(book_hash)
  if has_volume_info?(book_hash) && book_hash["volumeInfo"]["title"]
    return book_hash["volumeInfo"]["title"]
  end
end

def get_authors(book_hash)
  if has_volume_info?(book_hash) && book_hash["volumeInfo"]["authors"]
    return book_hash["volumeInfo"]["authors"].join(", ")
  end
end

def get_description(book_hash)
  if has_volume_info?(book_hash) && book_hash["volumeInfo"]["description"]
    return book_hash["volumeInfo"]["description"][0..140] + "..."
  end
end

def get_line_break
  "*" * 52
end

def print_it(string)
  if string
    puts string.blue
  end
end

def print_all_info(results)
  if results
    results.each do |book|
      print_it(get_title(book))
      print_it(get_authors(book))
      print_it(get_description(book))
      print_it(get_line_break)
    end
  else
    print_unfound_error
  end
end

def print_unfound_error
  print_it("Sorry, couldn't find any volumes based on that search.")
end

def run!
  searched = get_search_term
  response = get_books_from_api(searched)
  response_hash = JSON.parse(response.body)
  print_all_info(response_hash["items"])
end

run!
