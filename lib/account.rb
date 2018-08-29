class Account

    STANDARD_VALIDITY_YRS = 5

    attr_accessor :owner, :exp_date

    def initialize(attrs = {})
        @pin_code = rand(1000..9999)
        set_owner(attrs[:owner])
        @exp_date = set_expire_date
    end


    private

    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
        raise "An account owner is required"
    end

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end


end