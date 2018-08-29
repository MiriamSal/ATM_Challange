class Account

    attr_accessor :owner

    def initialize(attrs = {})

        set_owner(attrs[:owner])
    end

    private

    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
        raise "An account owner is required"
    end


end