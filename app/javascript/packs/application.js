/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import 'jquery/src/jquery'
import 'jquery-ujs/src/rails'
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap/dist/js/bootstrap';
import 'packs/actioncable_connect'
import 'packs/header'
import 'style/application.scss'
import 'images/default_avatar.png'
import 'images/home_illo.png'
import 'images/welcome_index_logo_1.png'
import 'images/welcome_index_logo_2.png'
import 'images/welcome_index_logo_3.png'
import 'images/welcome_index_logo_4.png'
import 'images/welcome_index_logo_5.png'
import 'images/welcome_index_logo_6.png'
import 'images/welcome_about_us_main.jpg'
import 'images/welcome_about_us_text_img_top.svg'
import 'images/welcome_about_us_text_img_bottom.jpg'

console.log('Hello World from Webpacker');

// Support component names relative to this directory:
var componentRequireContext = require.context("components", true)
var ReactRailsUJS = require("react_ujs")
ReactRailsUJS.useContext(componentRequireContext)
