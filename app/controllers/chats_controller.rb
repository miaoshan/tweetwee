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
    @chat = chat.create(chat_params)
    @chat.save
    redirect_to chats_path(@chat)
   end

   #def messages

   #end

private

   def chat_params
     params.require(:chat).permit(:name,:topic)
   end
end
