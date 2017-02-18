var React = require('react');
var Iframe = require("react-iframe");

{/* <Iframe url="http://www.example.com" [string width, [string height]] /> */}

export class UnitTests extends React.Component {

  render () {

    return (
        <div className="report">
            <Iframe url="https://s3.eu-west-2.amazonaws.com/demoreports/unitreport.html"/>
        </div>
    )
  }
};

module.exports = UnitTests;
