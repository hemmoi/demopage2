var React = require('react');
var Iframe = require("react-iframe");
var Robot = React.createClass({

  render: function () {

    return (
      <div className="report">
          <h3 className="page-title">Robot Framework Report</h3>
          <Iframe url="https://s3.eu-west-2.amazonaws.com/demoreports/report.html"/>
      </div>
    )
  }
});

module.exports = Robot;
