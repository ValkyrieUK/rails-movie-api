class Movie < ActiveRecord::Base

  def self.search(query)
    return where('FALSE') if query.blank?

    conditions = []
    search_columns = [ :title ]

    query.split(' ').each do |word|
      search_columns.each do |column|
        conditions << " lower(#{column}) LIKE lower(#{sanitize("%#{word}%")}) "
      end
    end

    conditions = conditions.join('OR')    
    self.where(conditions)
  end
end
