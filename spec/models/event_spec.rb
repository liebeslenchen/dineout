require 'spec_helper'

describe Event do
	let!(:diner) { FactoryGirl.build(:diner) }
	let!(:event) { FactoryGirl.build(:event, diner: nil) }

	it 'is not valid without a diner' do
		event.should_not be_valid
	end

	it 'is valid with a diner' do
		event.diner = diner
		event.should be_valid
	end
end
