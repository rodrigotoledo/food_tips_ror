class TipsController < ApplicationController
  before_action :set_tip, only: %i[edit update destroy]

  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.new(tip_params)
    if @tip.save
      redirect_to tips_path, notice: "Tip created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @tip.update(tip_params)
      redirect_to tips_path, notice: "Tip updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tip.destroy
    redirect_to tips_path, notice: "Tip deleted successfully."
  end

  private

  def set_tip
    @tip = Tip.find(params[:id])
  end

  def tip_params
    params.expect(tip: [ :title, :best_time, :content, :user_id ])
  end
end
