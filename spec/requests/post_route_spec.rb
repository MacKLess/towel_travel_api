require 'rails_helper'

describe "post a destination route", :type => :request do

  before do
    # post FactoryBot.create(:destination)
    post '/destinations', params: { :planet => 'Dangrabad', :location => 'Oglaroon', :locals => 'Nanites', :transportation => 'Starship Titanic'}
  end

  it 'returns the planet name' do
    expect(JSON.parse(response.body)['planet']).to eq('Dangrabad')
  end

  it 'returns the location name' do
    expect(JSON.parse(response.body)['location']).to eq('Oglaroon')
  end

  it 'returns the locals name' do
    expect(JSON.parse(response.body)['locals']).to eq('Nanites')
  end

  it 'returns the transportation name' do
    expect(JSON.parse(response.body)['transportation']).to eq('Starship Titanic')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

  it 'returns the planet name' do
    post '/destinations', params: { :planet => '', :location => 'Oglaroon', :locals => 'Nanites', :transporation => 'Starship Titanic'}
    expect(JSON.parse(response.body)['planet']).to eq(nil)
  end

  it 'returns the location name' do
    post '/destinations', params: { :planet => 'Dangrabad', :location => '', :locals => 'Nanites', :transporation => 'Starship Titanic'}
    expect(JSON.parse(response.body)['location']).to eq(nil)
  end

  it 'returns the locals name' do
    post '/destinations', params: { :planet => 'Dangrabad', :location => 'Oglaroon', :locals => '', :transporation => 'Starship Titanic'}
    expect(JSON.parse(response.body)['locals']).to eq(nil)
  end

  it 'returns the transportation name' do
    post '/destinations', params: { :planet => 'Dangrabad', :location => 'Oglaroon', :locals => 'Nanites', :transporation => ''}
    expect(JSON.parse(response.body)['transportation']).to eq(nil)
  end

  it 'returns an error when content is blank' do
    post '/destinations', params: { :planet => '', :location => 'Oglaroon', :locals => 'Nanites', :transporation => 'Starship Titanic'}
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
