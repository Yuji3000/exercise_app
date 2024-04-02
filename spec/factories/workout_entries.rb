FactoryBot.define do
  factory :workout_entry do
    reps { 1 }
    sets { 1 }
    weight { 1.5 }
    workout { nil }
    exercise { nil }
  end
end
