class Order < ActiveRecord::Base
  belongs_to :party
  belongs_to :menu
end
