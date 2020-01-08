require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this
def generate_string_list(list)
  list.map {|element|
    element = "#{element.name} - #{element.size}"
  }
end

def combine_sizes(list)
  list.reduce {|element1, element2|
    if element1.class != Company
      element1 + element2.size
    else
      element1.size + element2.size
    end
  }
end

def only_big_companies(list)
  list.select {|element|
    element.size > 100
  }
  # This returns a Company class
end

def find_beta(list)
  list.select {|element|
    element.name == "Beta"
  }.pop
  # This returns a Company class
end

def find_largest_company(list)
  list.max_by {|element|
    element.size
  }
  # This returns a Company class
end

def sort_companies(list)
  list.sort {|element|
    element.size
  }
end

puts find_largest_company(companies)