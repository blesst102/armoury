class Personnel < ApplicationRecord
    has_many :armrequests, :dependent => :delete_all
end
