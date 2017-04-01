var React = require('react');
var Iframe = require("react-iframe");


export class JqueryDemo extends React.Component {

  render () {
    return (
      <div className="report">
          <Iframe url="http://79.170.40.246/kimmohalonen.com/content/twitter/"/>
      </div>
    )
  }
};

module.exports = JqueryDemo;
