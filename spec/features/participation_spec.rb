#!/bin/env ruby
# encoding: utf-8
require 'spec_helper'

describe 'Participation' do
  my_owner = nil

  before(:all) do
		 event = FactoryGirl.create :event
     my_owner = event.user
     event.users << my_owner
  end

  context 'guest' do    
    it 'is not permitted to participation' do
      visit events_path
      page.should_not have_content 'Teilnehmen'
    end
  end

	context 'user' do
    user = FactoryGirl.create :user

    before(:each) do
		  visit root_path
    	sign_in user
      visit events_path
	  end

    it 'allows to participate' do
		  page.should have_content 'Teilnehmen'
      first(:link, 'Teilnehmen').click
      page.should have_content 'Teilnehmer: Owner ' + user.username 
	  end

    it 'allows to view and participate' do
		  page.should have_content 'Detailansicht'
      first(:link, 'Detailansicht').click
      page.should have_content 'Am Event teilnehmen'
      first(:link, 'Am Event teilnehmen').click      
      page.should have_content 'Teilnehmer: Owner ' + user.username 
	  end

    it 'is not permitted to edit' do
 		  page.should_not have_content 'Bearbeiten' 
    end

    it 'is not permitted to delete' do
 		  page.should_not have_content 'Entfernen' 
    end
  end

  context 'owner' do
    before(:each) do
		  visit root_path
    	sign_in my_owner
      visit events_path
	  end

    it 'allows to edit' do
 		  page.should have_content 'Bearbeiten' 
    end

    it 'allows to delete' do
 		  page.should have_content 'Entfernen' 
    end
  end

end

