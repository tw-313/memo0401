class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end

  def new
  end

  def create
    Memo.create(title:params["memos"]["title"],body:params["memos"]["body"])
    redirect_to "/"
  end

  def destroy
    memo = Memo.find(params["id"])
    memo.destroy
    redirect_to "/"
  end

  def edit
    @memo = Memo.find(params["id"])
  end

  def update
    memo = Memo.find(params["id"])
    m.title = params["memos"]["title"]
    m.body = params["memos"]["body"]
  end
end
