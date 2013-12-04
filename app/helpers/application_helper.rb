module ApplicationHelper

  #retourner un titre basé sur la page.
  def titre
    base_titre = "GSB"
    if @titre.nil?
      base_titre
    else
      "#{base_titre} | #{@titre}"
    end
  end

end
