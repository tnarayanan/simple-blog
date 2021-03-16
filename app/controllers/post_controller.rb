class PostController < ApplicationController
  def create
  end

  def store
    @post = Post.new({:title => params[:title], :body => params[:body], :author=> params[:author], :key => Digest::SHA1.hexdigest([Time.now, rand].join)[0..10], :email => current_user.email})
    @post.save
    redirect_to('/')
  end

  def view
  end
end
