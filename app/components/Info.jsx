var React = require('react');
var { Tab, Tabs, TabList, TabPanel } = require ('react-tabs');
var About = require('About');
var Creator = require('Creator');
var TechList = require('TechList');
var Contact = require('Contact');

var Info = React.createClass({

  handleSelect(index, last) {
      console.log('Selected tab: ' + index + ', Last tab: ' + last);
    },

  render: function () {
    return (
      <div className="info-page">

        <div className="info-pane">
          <Tabs onSelect={this.handleSelect} selectedIndex={0}>
            <TabList>
              <Tab>About these pages</Tab>
              <Tab>Demo items</Tab>
              <Tab>About Me</Tab>
              <Tab>Contact info</Tab>
            </TabList>
            <TabPanel>
              <About/>
            </TabPanel>
            <TabPanel>
              <TechList/>
            </TabPanel>
            <TabPanel>
              <Creator/>
            </TabPanel>
            <TabPanel>
              <Contact/>
            </TabPanel>
          </Tabs>
        </div>

        <div className="image-pane">
          <img src={require('../images/Homer_Simpson_2006.png')}  alt="Picture of Kimmo Halonen"/>
        </div>

      </div>
    )
  }
});

module.exports = Info;
