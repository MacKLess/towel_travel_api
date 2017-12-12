require 'rails_helper'

describe "post a destination route", :type => :request do

  before do
    post '/destinations', params: { :planet => 'Dangrabad', :location => 'Oglaroon', :locals => 'Nanites', :transporation => 'Starship Titanic', :review => 'Here I am, brain the size of a planet.', :author => 'Gag Halfrunt'}
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

  it 'returns the review text' do
    expect(JSON.parse(response.body)['review']).to eq('Here I am, brain the size of a planet.')
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['author']).to eq('Gag Halfrunt')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

  it 'returns the planet name' do
    post '/destinations', params: { :planet => '', :location => 'Oglaroon', :locals => 'Nanites', :transporation => 'Starship Titanic', :review => 'Here I am, brain the size of a planet.', :author => 'Gag Halfrunt'}
    expect(JSON.parse(response.body)['planet']).to eq(nil)
  end

  it 'returns the location name' do
    post '/destinations', params: { :planet => 'Dangrabad', :location => '', :locals => 'Nanites', :transporation => 'Starship Titanic', :review => 'Here I am, brain the size of a planet.', :author => 'Gag Halfrunt'}
    expect(JSON.parse(response.body)['location']).to eq(nil)
  end

  it 'returns the locals name' do
    post '/destinations', params: { :planet => 'Dangrabad', :location => 'Oglaroon', :locals => '', :transporation => 'Starship Titanic', :review => 'Here I am, brain the size of a planet.', :author => 'Gag Halfrunt'}
    expect(JSON.parse(response.body)['locals']).to eq(nil)
  end

  it 'returns the transportation name' do
    post '/destinations', params: { :planet => 'Dangrabad', :location => 'Oglaroon', :locals => 'Nanites', :transporation => '', :review => 'Here I am, brain the size of a planet.', :author => 'Gag Halfrunt'}
    expect(JSON.parse(response.body)['transportation']).to eq(nil)
  end

  it 'returns the review text' do
    post '/destinations', params: { :planet => 'Dangrabad', :location => 'Oglaroon', :locals => 'Nanites', :transporation => 'Starship Titanic', :review => '', :author => 'Gag Halfrunt'}
    expect(JSON.parse(response.body)['review']).to eq(nil)
  end

  it 'returns the author name' do
    post '/destinations', params: { :planet => 'Dangrabad', :location => 'Oglaroon', :locals => 'Nanites', :transporation => 'Starship Titanic', :review => 'Here I am, brain the size of a planet.', :author => ''}
    expect(JSON.parse(response.body)['author']).to eq(nil)
  end

  it 'returns an error when content is blank' do
    post '/destinations', params: { :planet => 'Dangrabad', :location => 'Oglaroon', :locals => 'Nanites', :transporation => 'Starship Titanic', :review => 'Here I am, brain the size of a planet.', :author => ''}
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
