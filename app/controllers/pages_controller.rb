class PagesController < ApplicationController
  
  def home
    redirect_to recipes_path if logged_in? #se estiver logado envia direto pra pagina de receitas
    
  end
  
end