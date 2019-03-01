import {div, h1, span, picture, source, img} from 'react-dom-factories'
import '../stylesheets/base/header.scss'

export Header = ->
  div { id: 'header' },
    div { className: 'wrap' },
      div { className: 'main' },
        picture null,
          source { srcSet: require('../images/main-img-small.png'), media: '(max-width: 680px)' }
          source { srcSet: require('../images/main-img-medium.jpg'), media: '(max-width: 980px)' }
          img { srcSet: require('../images/main-img.jpg'), alt: '*' }
      h1 null,
        'Watthajak Jinasam'
        span null, 'Programmer'
