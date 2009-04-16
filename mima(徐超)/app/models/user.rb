class User < ActiveRecord::Base
  has_one :shop

  def has_shop?
    unless self.shop.nil?
      if self.shop.status == 1
        return self.shop
      else
        false
      end
    end
  end
end
