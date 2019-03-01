import {Component} from 'react'
import {div, ul, li, h2, h3, p, span} from 'react-dom-factories'
import Skills from './skill.json'
import '../../stylesheets/content/skill.scss'
import 'easyPieChart'
import 'isInViewport'

skillLevels = ['Beginner', 'Novice', 'Intermediate', 'Expert', 'Advance']

skillLevelTitle = (skillLevel) ->
  skillLevels[Math.trunc(skillLevel/20)]

animatePieCharts = (size) ->
  $('.pie-chart').css { width: size, height: size }
  $('.pie-chart:in-viewport').easyPieChart {
    barColor: '#f2968f'
    lineWidth: 5
    scaleColor: false
    size: size
    trackColor: '#f5f5f5'
    onStep: (from, to, percent) ->
      $(this.el).find('.percent span').text(Math.round(percent))
  }

export class Skill extends Component

  componentDidMount: ->
    animatePieCharts(140)

    $(window).scroll -> animatePieCharts(140)

  render: ->
    li { className: 'skill' },
      h2 null, 'Technical Skills'
      ul { className: 'list' },
        for skill, i in Skills
          li { key: i },
            div { className: 'pie-chart', 'data-percent': skill.level },
              div { className: 'percent' },
                span null, skill.level
                '%'
            div { className: 'text' },
              div { className: 'title' },
                h3 null,
                  skill.title
                  span null, skillLevelTitle(skill.level)
              p null,
                skill.description.join('\n')
