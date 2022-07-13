class PostMailer < ApplicationMailer
    default from: 'blog@example.com'

    def new_post_email
        @post = params[:post]
        mail(to: 'heleng@example.com', subject: 'New Post')
    end

    def edit_post_email
        @post = params[:post]
        mail(to: 'heleng@example.com', subject: 'Post updated')
    end
end