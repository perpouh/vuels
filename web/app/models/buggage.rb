class Buggage < ApplicationRecord
  enum statuses: {
    received: 1,
    departure_center: 2,
    departure_base: 3,
    arrival_base: 4,
    arrival_center: 5,
    delivered: 6,
    redelivery: 7
  }
  enum specified_time: {
    morning: 1,
    lunchtime: 2,
    afternoon: 3,
    evening: 4,
    night: 5
  }
end
