require 'csv'

module Faker
  class Commit

    def self.generate
      commits = []
      CSV.foreach("lib/faker_fdays.csv") do |row|
        commits << row
      end
      commits.sample[0]
    end

  end
end