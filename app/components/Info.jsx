var React = require('react');
var { Tab, Tabs, TabList, TabPanel } = require ('react-tabs');
var About = require('About');
var Creator = require('Creator');
var TechList = require('TechList');
var Contact = require('Contact');

export class Info extends React.Component {

  handleSelect(index, last) {
      console.log('Selected tab: ' + index + ', Last tab: ' + last);
    }

  render () {
    return (
      <div className="info-page">

        <div className="image-pane">
          <img src={require('../images/demopage-self3.png')} style={{height: 600}} alt="Picture of Kimmo Halonen"/>
        </div>

        <div className="info-pane">
          <Tabs onSelect={this.handleSelect} selectedIndex={0}>
            <TabList>
              <Tab>About these pages</Tab>
              <Tab>Demo info</Tab>
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
      </div>
    )
  }
};

module.exports = Info;
