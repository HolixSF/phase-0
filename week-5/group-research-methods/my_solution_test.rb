i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


def my_array_modification_method!(source, thing_to_modify)
  source.map! { |x|
    if x.is_a?(Integer)
      x = x + thing_to_modify
    end
  x 
  }
  #REFACTORED SOLUTION
  #source.map! { |x| x.is_a?(Integer) ? x += thing_to_modify : x } 
end

def my_hash_modification_method!(source, thing_to_modify)
  #Solution 1 but not destructive
  #source.each {|key, value| source[key] = value + thing_to_modify}

  #Solution 2 destructive
  source.values.map! {|value| value + thing_to_modify}
  source
end

p my_array_modification_method!(i_want_pets, 1)
p my_hash_modification_method!(my_family_pets_ages, 2)
p my_family_pets_ages

