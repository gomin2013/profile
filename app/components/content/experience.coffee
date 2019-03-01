import {div, ul, li, h2, h3, p, span} from 'react-dom-factories'
import Experiences from './experience.json'
import '../../stylesheets/content/experience.scss'

export Experience = ->
  li { className: 'experience' },
    h2 null, 'Work Experiences'
    ul { className: 'list' },
      for exp, i in Experiences
        li { key: i },
          div { className: 'title' },
            h3 null,
              exp.position
              span null, [exp.company, exp.type].join(', ')
            p { className: 'period' },
              exp.period.join(' - ')
          if exp.description.text
            p null,
              exp.description.text.join('\n')
          if exp.description.list
            ul { className: 'sub-list' },
              for list, i in exp.description.list
                li { key: i }, list
