/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import React from 'react';
import ReactDOM from 'react-dom';
import 'jquery/src/jquery';
import 'jquery-ujs/src/rails';
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap/dist/css/bootstrap-theme';
import 'bootstrap/dist/js/bootstrap';
import 'packs/sign_up';
import 'packs/actioncable_connect';
import 'style/application.scss';
import 'images/default_avatar.png';
import 'images/about1.jpg';
import 'images/about2.jpg';
import 'images/about3.jpg';
import 'images/about4.jpg';

// ReactDOM.render(<App />, document.getElementById('root'));
console.log('Hello World from Webpacker');


// Support component names relative to this directory:
var componentRequireContext = require.context("components", true)
var ReactRailsUJS = require("react_ujs")
ReactRailsUJS.useContext(componentRequireContext)
