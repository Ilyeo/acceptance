module ApplicationHelper
  def split_privacy_names
    Hash[Achievement.privacies.map { |k, v| [ k.split('_').first.capitalize, k]}]
  end
end
