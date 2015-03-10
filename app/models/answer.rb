class Answer < ActiveRecord::Base
  def display_key_value
    if key_type == 'integer'
      key_value.to_i rescue 'Not a number'
    elsif key_type == 'csv_list'
      key_value.split(',').sort.join(' | ')
    else
      key_value
    end
  end
end
