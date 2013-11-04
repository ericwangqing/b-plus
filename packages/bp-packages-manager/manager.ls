trun-first-letter-to-capital = (str)->
  str.char-at(0).to-upper-case! + str.slice(1)

convert-to-capital = (str)->
  tokens = str.split '-'
  [trun-first-letter-to-capital token for token in tokens].join ''

get-full-template-name = (template-name)->
  template-name

if Meteor.is-client
  console.log "Handlebars: ", Handlebars 
  Handlebars.registerHelper 'BP', (template-name)->
    template = Template[get-full-template-name template-name]
    template!


# Handlebars.registerHelper 'BP', (template-name)->
#   Template[get-full-template-name template-name].apply @, arguments

@Bp-packages-manager = manager =
  use: (pkg-name, config)->
    pkg-name = convert-to-capital pkg-name
    # console.log 'pkg-name: ', pkg-name
    eval "new #{pkg-name}(config).initial();"
    manager 

