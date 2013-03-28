require 'spec_helper'
require 'lib/singular_to_plural'

describe String do
  describe ".plural" do
    SingularToPlural.each do |singular, plural|
      it "pluralizes #{singular}" do
        expect(singular.plural).to eq plural
      end
    end

    SingularToPlural.each do |singular, plural|
      it "doesn't pluralize #{plural}" do
        expect(plural.plural).to eq plural
      end
    end
  end
end
