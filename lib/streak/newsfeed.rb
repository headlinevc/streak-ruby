module Streak
    class Newsfeed < StreakObject
      def self.box(key, api_key=nil)
        res = Streak.request(:get, "/v1/boxes/#{key}/newsfeed", {}, api_key)
        convert_to_streak_object(res, Newsfeed)
      end
    end
  end
  