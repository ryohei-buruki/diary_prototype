class AccountsController < ApplicationController
  def index
  end

  def new
    @account = Account.new
  end

  def create
    Account.create(account_params)
    redirect_to accounts_path
  end

  def show
    @account = Account.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def account_params
    params.require(:account).permit(:name, :email, :password, :password_confirmation)
  end
end
