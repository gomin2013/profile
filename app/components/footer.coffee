import {div, p} from 'react-dom-factories'
import '../stylesheets/base/footer.scss'

export Footer = ->
  div { id: 'footer' },
    div { className: 'wrap' },
      p null, '© 2019 Watthajak Jinasam. All rights reserved.'
