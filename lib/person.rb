class Person

    attr_accessor :name, :cash, :account

    def initialize(attrs = {})
        set_name(attrs[:name])
        @cash = 0
    end

    def set_name(obj)
        obj == nil ? missing_name : @name = obj
    end
    def missing_name
        raise "An account name is required"
    end
end 