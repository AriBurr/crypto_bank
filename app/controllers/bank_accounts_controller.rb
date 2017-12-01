class BankAccountsController < ApplicationController
  before_action :set_bank_account, only: [:show, :edit, :update, :destroy]

  def index
    @bank_accounts = current_user.bank_accounts
  end

  def show
  end

  def new
  end

  def create
    @bank_account = current_user.bank_accounts.create(bank_account_params)
    if @bank_account.save
      # success
    else
      # failure
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def bank_account_params
      params.require(:bank_account).permit(:name, :account_number, :active, :balance)
    end

    def set_bank_account
      @bank_account = current_user.bank_accounts.find(parasms[:id])
    end

end
