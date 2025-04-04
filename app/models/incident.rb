class Incident < ApplicationRecord
  validates :title, :description, :severity, presence: true
  validates :severity, inclusion: { in: %w[Low Medium High], message: "%{value} is not a valid severity level" }
  before_create :set_reported_at

  private

  def set_reported_at
    self.reported_at ||= Time.current
  end
end
