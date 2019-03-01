import {render} from 'react-dom'
import {div} from 'react-dom-factories'
import {Header} from './components/header.coffee'
import {Content} from './components/content.coffee'
import {Footer} from './components/footer.coffee'
import './stylesheets/application.sass'

App =
  div null,
    Header null
    Content null
    Footer null

render App, document.getElementById('page')
