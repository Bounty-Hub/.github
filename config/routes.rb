Rails.application.routes.draw do
  # ... existing code ...

  post '/bounty_claims', to: 'bounty_claims#create'
end