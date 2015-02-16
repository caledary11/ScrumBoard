class Task < ActiveRecord::Base
  belongs_to :story
  state_machine initial: :to_do do
    state :to_do, value: 0
    state :in_process, value: 1
    state :to_verify, value: 2
    state :done, value: 3
  end
end
