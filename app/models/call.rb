class Call < ApplicationRecord
  belongs_to :employee#, class_name: "object", foreign_key: "object_id"
end
