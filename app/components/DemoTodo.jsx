var React = require('react');
var ReactDOM = require('react-dom');
var {Provider} = require('react-redux');
var {Route, Router, IndexRoute, hashHistory} = require('react-router');
var store = require('configureStore').configure();
var actions = require('actions');
var TodoApp = require('TodoApp');

var TodoAPI = require('TodoAPI');

store.dispatch(actions.startAddTodos());

var DemoTodo = React.createClass({

  render: function () {

    return (
      <Provider store={store}>
        <TodoApp/>
      </Provider>
    )
  }
});

module.exports = DemoTodo;
