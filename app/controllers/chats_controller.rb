class ChatsController < ApplicationController

  def index
    @chats = Chat.all
  end

  def new
    @chat = Chat.new
  end
  def show
    @chat = Chat.find(params[:id])
    # byebug
  end

  def edit
    @chat = Chat.find(params[:id])
  end

  def create
    @chat = Chat.create(chat_params)
    @chat.save
    redirect_to chats_path(@chat)
   end

   def update
     @chat = Chat.find(params[:id])
     @chat.update(chat_params)
     redirect_to chat_path(@chat)
   end

   def destroy
     @chat = Chat.find_by_id(params[:id])
      @chat.destroy
      redirect_to chats_path
   end

private

   def chat_params
     params.require(:chat).permit(:name,:topic)
   end
end
