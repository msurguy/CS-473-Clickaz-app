class Question < ActiveRecord::Base
def next
  self.class.find(:first, :conditions => ["id > ?", self.id])
end
end
