def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, books.year from books
  inner join series
  on series.id = books.series_id
  where series.id = 1
  order by books.year "
end

def select_name_and_motto_of_char_with_longest_motto
  "select characters.name , characters.motto from characters
  order by LENGTH(characters.motto) DESC limit 1"
end


def select_value_and_count_of_most_prolific_species
  "select characters.species, count(characters.species) from characters
  group by characters.species order by count(characters.species) DESC limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name
  from authors
  inner join series on authors.id = series.author_id
  inner join subgenres on series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "select series.title from series
  inner join characters on series.id = characters.series_id
  where characters.species = 'human' group by series_id order by count(series_id) DESC limit 1"
end


#   selects all of the character names and their number of books they have appeared in, in descending order (FAILED - 2)

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(books.id) from characters
  inner join character_books on characters.id = character_books.character_id
  inner join books on character_books.book_id = books.id group by character_id order by count(books.id) DESC , characters.name "
end
