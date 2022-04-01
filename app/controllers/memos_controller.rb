class MemosController < ApplicationController
  def index
  end

  def new
  end

  def create
    Memo.create(title:params["memos"]["title"],body:params["memos"]["body"])
    redirect_to "/"
  end
end
