let path = require("path");
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const webpack = require('webpack');

module.exports = {
  mode: "development",
  entry: "./app/application.coffee",
  output: {
    path: path.resolve(__dirname, "docs/assets/"),
    publicPath: "assets/",
    filename: "script.js"
  },
  devServer: {
    inline: true,
    contentBase: "./docs",
    port: 3000,
    https: true,
    headers: {
      'Access-Control-Allow-Origin': '*'
    }
  },
  module: {
    rules: [{
      test: /\.pug$/,
      use: ['pug-loader']
    }, {
      test: /\.coffee$/,
      use: [
        {
          loader: 'coffee-loader',
          options: {
            transpile: {
              presets: ['@babel/preset-env']
            }
          }
        }
      ]
    }, {
      test: /\.s[ac]ss$/,
      use: ExtractTextPlugin.extract({
        fallback: 'style-loader',
        use: ['css-loader', 'postcss-loader', 'sass-loader'],
        publicPath: '../assets/'
      })
    }, {
      test: /\.(png|jpe?g|gif)$/,
      use: [
        {
          loader: 'file-loader',
          options: {
            context: 'app',
            name: '[path][name].[ext]'
          },
        },
        {
          loader: 'image-webpack-loader',
          options: {
            mozjpeg: {
              progressive: true,
              quality: 80
            },
            optipng: {
              enabled: false,
            },
            pngquant: {
              quality: '80-100',
              speed: 4
            },
            gifsicle: {
              interlaced: false,
            }
          },
        },
      ]
    }, {
      test: /\.(woff(2)?|ttf|eot)(\?v=\d+\.\d+\.\d+)?$/,
      use: [{
        loader: 'file-loader',
        options: {
          name: '[name].[ext]',
          outputPath: 'fonts/'
        }
      }]
    }, {
      test: /\.svg$/,
      use: [
        {
          loader: 'file-loader',
          options: {
            context: 'app',
            name: '[path][name].[ext]'
          },
        },
        {
          loader: 'svgo-loader',
          options: {
            externalConfig: "svgo-config.yml"
          },
        }
      ]
    }]
  },
  resolve: {
    alias: {
      jquery: 'jquery/dist/jquery.min.js',
      imagesloaded: 'imagesloaded/imagesloaded.pkgd.min.js',
      isotope: 'isotope-layout/dist/isotope.pkgd.min.js',
      lightbox: 'lightbox2/dist/js/lightbox.min.js',
      easyPieChart: 'easy-pie-chart/dist/jquery.easypiechart.min.js',
      isInViewport: 'is-in-viewport/lib/isInViewport.min.js'
    }
  },
  plugins: [
    new ExtractTextPlugin('style.css'),
    new HtmlWebpackPlugin({
      template: path.resolve(__dirname, 'app/index.pug'),
      filename: path.resolve(__dirname, 'docs/index.html'),
    }),
    new webpack.ProvidePlugin({
      $: 'jquery',
      jQueryBridget: 'jquery-bridget'
    })
  ]
};
