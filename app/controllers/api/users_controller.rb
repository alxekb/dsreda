class Api::UsersController < ApplicationController
  before_action :user_from_params, only: [:user_index, :user_records, :add_points, :remove_points]

  def users
    @users = User.last(10)
  end

  def user_index
    @records = @user.u_transactions
    @sum = @user.u_transactions.sum(:sum)
  end

  def user_records
    @records = @user.u_transactions
  end

  def add_points
    @record = UTransaction.new(user_id: params[:id], sum: params[:points])
    @status = @record.id if @record.save
  end

  def remove_points; end

  private

  def user_from_params
    @user = User.find_by(id: params[:id])
  end

  def warning
    error
  end
end
