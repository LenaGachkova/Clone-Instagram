class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :author, presence: true
    after_commit :post_created_mail, on: :create
    after_commit :post_updated_mail, on: :update

    private

    def post_created_mail
        PostMailer.with(post: self).new_post_email.deliver 
    end

    def post_updated_mail
        PostMailer.with(post: self).edit_post_email.deliver
    end
end
