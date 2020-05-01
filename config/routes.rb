Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'top#index'

  resources :room, only: %i(new create edit update destroy) do
    resources :theme do
    	member do
      		get 'fase01think'
      		get 'fase01answer'
      		patch 'fase01updateTime'
      		patch 'fase01update'
      		get 'fase01answerBranch'
      		get 'fase01good'
      		get 'fase02think'
      		get 'fase02answer'
      		patch 'fase02update'
      		get 'fase02answerBranch'
      		get 'fase02good'
      		get 'fase0102bad'
    	end
    end
  end

end
