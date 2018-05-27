class Pastry 
    attr_accessor :name, :src, :price, :description
    def initialize(name, src, price, description)
        @name = name
        @src = src
        @price = price
        @description = description
    end
end

class Cookie < Pastry 
    attr_accessor :name, :src, :price, :description
    def initialize(name ,src, price, description)
        super(name ,src, price, description)
    end
end

class Muffin < Pastry 
    attr_accessor :name, :src, :price, :description
    def initialize(name ,src, price, description)
        super(name ,src, price, description)
    end
end

class Cupcake < Pastry 
    attr_accessor :name, :src, :price, :description
    def initialize(name ,src, price, description)
        super(name ,src, price, description)
    end
end

class Cake < Pastry
    attr_accessor :name, :src, :price, :description
    def initialize(name ,src, price, description)
        super(name ,src, price, description)
    end
end

class Beverage < Pastry
    attr_accessor :name, :src, :price, :description
    def initialize(name ,src, price, description)
        super(name ,src, price, description)
    end
end

class Bread < Pastry
    attr_accessor :name, :src, :price, :description
    def initialize(name ,src, price, description)
        super(name ,src, price, description)
    end
end

