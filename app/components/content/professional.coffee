import {li, div, h2, p} from 'react-dom-factories'
import '../../stylesheets/content/professional.scss'

export Professional = ->
  li { className: 'professional' },
    h2 null, 'Professional Profile'
    div { className: 'text' },
      p null, '''
        Proficient and creative WordPress developer with a strong history in website development.
        Expert in all aspects of WordPress website creation, including design, plugins, and implementation.
        Well-versed in numerous programming languages including jQuery HTML CSS and responsive web design.
        Enthusiastic web professional motivated by challenging projects and deadlines.
        '''
