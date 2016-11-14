class DepositsController < ApplicationController
  def index
    load_deposits
  end

  def new
    new_deposit
  end

  private

  def load_deposits
    @deposits ||= deposit_scope.includes(:depositer, :interest_type).order("deposited_on desc")
  end

  def new_deposit
    @deposit ||= deposit_scope.new
  end

  def build_deposit
    new_deposit
    @deposit.attributes = deposit_params
  end

  def deposit_params
    params.require(:deposit).permit(:amount, :deposited_on, :interest_type_id, :interest_percent_id, :depositer_id)
  end

  def deposit_scope
    Deposit.all
  end
end
