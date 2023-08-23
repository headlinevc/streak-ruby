module Streak
  class Search < StreakObject
    def self.query(query)
      self.query_hash({query: query})
    end

    def self.query_hash(query)
      res = Streak.request(:get, "/v1/search", query)
      convert_to_streak_object(res, Search)
    end
  end
end
