var React = require('react');
var Iframe = require("react-iframe");


export class Robot extends React.Component {

  render () {
    return (
      <div className="report">
          <h1 className="robot-header1">Robot Framework Tests</h1>
          <Iframe url="https://s3.eu-west-2.amazonaws.com/demoreports/report.html"/>
      </div>
    )
  }
};

module.exports = Robot;
