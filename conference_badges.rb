
def badge_maker name
  "Hello, my name is #{name}."
end

def batch_badge_creator speakers
  speakers.collect { |speaker| badge_maker speaker}
end

def assign_rooms speakers
  room_number = 0
  speakers.collect { |speaker| "Hello, #{speaker}! You'll be assigned to room #{room_number += 1}!"}
end

def printer speakers
  batch_badge_creator(speakers).each { |badge| puts badge}
  assign_rooms(speakers).each { |room| puts room}
end
  