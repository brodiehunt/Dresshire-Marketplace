class Conversation < ActiveRecord::Base
  # belongs_to :sender_id, :foreign_key => :sender_id, class_name: "User"
  # belongs_to :recipient_id, :foreign_key => :recipient_id, class_name: "User"
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
  has_many :messages, dependent: :destroy

  validates_uniqueness_of :sender_id, :scope => :recipient_id 

  # checks to see if a conversation between either user exists. 
  scope :between, -> (sender_id, recipient_id) do
    where("(conversations.sender_id = ? AND conversations.recipient_id = ?) OR (conversations.sender_id = ? AND conversations.recipient_id = ?)", sender_id, recipient_id, recipient_id, sender_id)
  end

end
