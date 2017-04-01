var React = require('react');
var ReactDOM = require('react-dom');
var {Route, Router, IndexRoute, hashHistory} = require('react-router');
var Main = require('Main');
var Info = require('Info');
var UnitTests = require('UnitTests');
var Robot = require('Robot');
var DemoTodo = require('DemoTodo');
var JqueryDemo = require('JqueryDemo');


// Load foundation
$(document).foundation();


// App css
require('style!css!sass!applicationStyles')

ReactDOM.render(
  <Router history={hashHistory}>
    <Route path="/" component={Main}>
      <Route path="todo" component={DemoTodo}/>
      <Route path="jquery" component={JqueryDemo}/>
      <Route path="unit" component={UnitTests}/>
      <Route path="robot" component={Robot}/>
      <IndexRoute component={Info}/>
    </Route>
  </Router>,
  document.getElementById('app')
);
