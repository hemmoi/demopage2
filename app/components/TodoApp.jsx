var React = require('react');
var uuid = require('node-uuid');
var moment = require('moment');

import TodoList from 'TodoList'
import AddTodo from 'AddTodo';
import TodoSearch from 'TodoSearch';

export class TodoApp extends React.Component {
  render () {
    return (
      <div>
        <div className="row">
          <div className="column small-centered small-11 medium-6 large-5">
            <div className="container">
              <img src={require('../images/todo.png')} style={{height: 90}} alt="Header for Todo app"/>
              <TodoSearch/>
              <TodoList/>
              <AddTodo/>
            </div>
          </div>
        </div>
      </div>
    )
  }
};

module.exports = TodoApp;
