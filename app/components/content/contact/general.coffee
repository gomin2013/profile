import {div, ul, li} from 'react-dom-factories'
import '../../../stylesheets/content/contact/general.scss'

export General = ->
  div { className: 'general' },
    ul { className: 'list' },
      li { className: 'location' }, 'Bangkok, Thailand'
      li { className: 'email' }, 'gomin2013@hotmail.com'
      li { className: 'tel' }, '+66 80 438 4487'
