import {div, ul, li, a} from 'react-dom-factories'
import '../../../stylesheets/content/contact/social.scss'

export Social = ->
  div { className: 'social' },
    ul { className: 'list' },
      li { className: 'linkedin' },
        a { href: 'https://www.linkedin.com/in/gomin2013', target: '_blank' }
      li { className: 'pinterest' },
        a { href: 'https://www.pinterest.com/gomin2012/', target: '_blank' }
      li { className: 'github' },
        a { href: 'https://github.com/gomin2013', target: '_blank' }
      li { className: 'line' },
        a { href: 'http://line.me/ti/p/~gomin.2012', target: '_blank' }
      li { className: 'twitter' },
        a { href: 'https://twitter.com/gomin2013', target: '_blank' }
      li { className: 'facebook' },
        a { href: 'https://www.facebook.com/gomin.2012', target: '_blank' }
