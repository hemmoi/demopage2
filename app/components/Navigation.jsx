var React = require('react');
var {Link, IndexLink} = require('react-router');

var Navigation = () => {
    return(
      <div className="top-bar">
        <div className="top-bar-left">
          <ul className="menu">
            <li className="menu-text">
              Demo Page
            </li>
            <li>
              <IndexLink id="info-tab" to="/" activeClassName="active-link">Information</IndexLink>
            </li>
            <li>
              <IndexLink id="todo-tab" to="/todo" activeClassName="active-link">Demo Application</IndexLink>
            </li>
            <li>
              <IndexLink id="unit-tab" to="/unit" activeClassName="active-link">Unit Tests</IndexLink>
            </li>
            <li>
              <IndexLink id="robot-tab" to="/robot" activeClassName="active-link">Robot Framework</IndexLink>
            </li>
          </ul>
        </div>
        <div className="top-bar-right">
          <ul className="menu">
            <li className="menu-text">
              Created by <a href="" target="_blank"> Kimmo Halonen</a>
            </li>
          </ul>
        </div>
      </div>
    );
};



module.exports = Navigation;
