class DashboardController < ApplicationController
  allow_unauthenticated_access
  def index
    @tips = Tip.best_times.keys.each_with_object({}) do |best_time, hash|
      hash[best_time] = Tip.where(best_time: best_time).limit(3)
    end
  end

  def tip
    @tip = Tip.find(params[:id])
  rescue
    redirect_to root_path
  end
end
