class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end



  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

      if @post.save
        redirect_to @post, notice: 'Postagem criada com sucesso.'
      else
        render :new
      end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:description)
    end
end
