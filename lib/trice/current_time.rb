module Trice
  module CurrentTime
    def self.fetch
      if Trice.use_time_with_zone
        Time.zone.now
      else
        Time.now
      end
    end
  end
end
