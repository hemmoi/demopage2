var React = require('react');
var ReactDOM = require('react-dom');
var {Provider} = require('react-redux');
var {Route, Router, IndexRoute, hashHistory} = require('react-router');

var TodoApp = require('TodoApp');
var actions = require('actions');
var store = require('configureStore').configure();
var TodoAPI = require('TodoAPI');

//store.dispatch(actions.startAddTodos());

var Todo = React.createClass({

  render: function () {

    return (
      <Provider store={store}>
        <TodoApp/>
      </Provider>
    )
  }
});

module.exports = Todo;
