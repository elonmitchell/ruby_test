class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def create
    @transaction = Transaction.new(transaction_params)

    if @transaction.save
        redirect_to @transaction
    else
        render 'new'
    end
  end

  private

  def transaction_params
        params.require(:transaction).permit(:car_type, :price, :first_vist, :bed_down, :mud_in_bed)
  end
end