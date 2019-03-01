import {div, ul, li, h2, h3, p, span} from 'react-dom-factories'
import '../../stylesheets/content/education.scss'

export Education = ->
  li { className: 'education' },
    h2 null, 'Education'
    ul { className: 'list' },
      li null,
        div { className: 'title' },
          h3 null,
            'Rajamangala University of Technology Suvarnabhumi'
            span null, 'Business Information Technology - Bachelor • GPA 3.79'
          p { className: 'period' }, '2010-2012'
