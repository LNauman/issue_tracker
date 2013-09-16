require 'spec_helper'

describe Issue do
  describe '.categories' do
    it 'includes Bug' do
    expect(Issue.categories).to include('Bug')
    end

    it 'includes Features Request' do
      expect(Issue.categories).to include('Feature Request')
    end

    it 'includes Customer Service' do
      expect(Issue.categories).to include('Customer Service')
    end
  end

  describe '.severities' do
    it 'includes Low' do
      expect(Issue.severities).to include('Low')
    end 

    it 'includes Moderate' do
      expect(Issue.severities).to include('Moderate')
    end

    it 'includes High' do 
      expect(Issue.severities).to include('High')
    end

    it {should_not have_valid(:severity).when(nil)}
  end
end
