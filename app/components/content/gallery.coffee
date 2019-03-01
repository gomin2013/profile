import {Component} from 'react'
import {li, h2} from 'react-dom-factories'
import {Filter} from './gallery/filter.coffee'
import {Items} from './gallery/items.coffee'
import '../../stylesheets/content/gallery.scss'
import imagesloaded from 'imagesloaded'
import Isotope from 'isotope'
import lightbox from 'lightbox'

export class Gallery extends Component

  componentDidMount: ->
    jQueryBridget('imagesloaded', imagesloaded, $)
    jQueryBridget('isotope', Isotope, $)

    galleryItems = $('.gallery .items .list')
    galleryFilter = $('.gallery .filter a')

    galleryItems.imagesloaded ->
      galleryItems.isotope {
        itemSelector: 'li'
        layoutMode: 'masonry'
      }

      lightbox.option({
        fitImagesInViewport: false
      })

    galleryFilter.click ->
      galleryFilter.removeClass('active')
      $(this).addClass('active')

      dataFilter = if $(this).data('filter') == '*' then '' else $(this).data('filter')

      $(".gallery .items .list a").attr('data-lightbox', "gallery")
      $(".gallery .items .list #{dataFilter} a").attr('data-lightbox', "gallery#{dataFilter.split('.').join('-')}")

      galleryItems.isotope {
        filter: dataFilter
      }

  render: ->
    li { className: 'gallery' },
      h2 null, 'Gallery'
      Filter null
      Items null
