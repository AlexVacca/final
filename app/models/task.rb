class Task < ActiveRecord::Base


belongs_to :user


validates :content, presence: true,
                      length: { minimum: 6 }
validates :user_id, presence: true
validates :tittle, presence: true
validates :duration, presence: true
end
