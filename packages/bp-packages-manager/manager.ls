trun-first-letter-to-capital = (str)->
  str.char-at(0).to-upper-case! + str.slice(1)

convert-to-capital = (str)->
  tokens = str.split '-'
  [trun-first-letter-to-capital token for token in tokens].join ''

@Bp-packages-manager = manager =
  use: (pkg-name, config)->
    pkg-name = convert-to-capital pkg-name
    # console.log 'pkg-name: ', pkg-name
    eval "new #{pkg-name}(config).initial();"
    manager

