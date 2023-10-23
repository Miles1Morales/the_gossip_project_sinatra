require 'gossip'

class ApplicationController < Sinatra::Base
    end 

    get '/gossip/new' do
    erb :new_gossip
    end

    post '/gossips/new/' do
        author = params["gossip_author"]
        content = params["gossip_content"]
    gossip = Gossip.new(author, content)
        redirect '/'
      end

    post '/gossips/new/' do
        puts "Salut, je suis dans le serveur"
        puts "Ceci est le contenu du hash params : #{params}"
        puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
        puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
        puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
      end
    

