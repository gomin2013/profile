import {createElement as ele} from 'react'
import {div, ul} from 'react-dom-factories'
import {General} from './content/contact/general.coffee'
import {Social} from './content/contact/social.coffee'
import {Professional} from './content/professional.coffee'
import {Experience} from './content/experience.coffee'
import {Gallery} from './content/gallery.coffee'
import {Skill} from './content/skill.coffee'
import {Education} from './content/education.coffee'
import '../stylesheets/content.scss'
import '../stylesheets/content/contact.scss'

export Content = ->
  div { id: 'content' },
    div { className: 'wrap' },
      div { className: 'inner' },
        div { className: 'contact' },
          General null
          Social null
        ul { className: 'boxes' },
          Professional null
          Experience null
          ele Gallery, null
          ele Skill, null
          Education null
