class Account

    STANDARD_VALIDITY_YRS = 5

    attr_accessor :owner, :exp_date, :account_status

    def initialize(attrs = {})
        @pin_code = rand(1000..9999)
        set_owner(attrs[:owner])
        @exp_date = set_expire_date
        @account_status = :active
    
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

    # def deactivate
    #     @account_status = :deactivated
    # end

    def self.deactivate(account)
        account.account_status = :deactivated
    end

end