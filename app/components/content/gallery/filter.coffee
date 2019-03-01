import {ul, li, div, a} from 'react-dom-factories'

export Filter = ->
  div { className: 'filter' },
    ul { className: 'list' },
      li { className: 'all' },
        a { className: 'active', 'data-filter': '*' }, 'All'
      li { className: 'responsive' },
        a { 'data-filter': '.responsive' }, 'Responsive'
      li { className: 'design' },
        a { 'data-filter': '.design' }, 'Design'
      li { className: 'wordpress' },
        a { 'data-filter': '.wordpress' }, 'Wordpress'
      li { className: 'php' },
        a { 'data-filter': '.php' }, 'PHP'
