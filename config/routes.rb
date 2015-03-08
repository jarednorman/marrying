Rails.application.routes.draw do
  root to: redirect('/rsvp/new')
  resources 'rsvp', only: [:new]
end
