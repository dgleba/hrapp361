class AddOpportunitiesBumpToPrPerformanceReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :pr_performance_reviews, :developmment_growth_bump, :boolean
  end
end
