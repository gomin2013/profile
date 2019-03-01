import {ul, li, div, a, img} from 'react-dom-factories'
import {FaSearchPlus} from 'react-icons/fa'
import Galleries from '../gallery.json'

export Items = ->
  div { className: 'items' },
    ul { className: 'list' },
      for gal, i in Galleries
        li { key: i, className: gal.categories.join(' ') },
          a { href: require('../../../images/gallery/' + gal.name + '_full.jpg'), 'data-lightbox': 'gallery' },
            img { src: require('../../../images/gallery/' + gal.name + '.jpg'), alt: gal.caption }
            FaSearchPlus null
