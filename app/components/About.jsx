var React = require('react');



export class About extends React.Component {

  render () {
    return (
      <div className="about-pages">
        <h4 className="info-header">Welcome to my demo page</h4>
        <div className="info-body">
          <p>
            These are my demo web pages. The plan is not to demonstrate the greatest web application known to humankind,
            although it may come to that at some point. At the moment, I’m still very much a student when it comes to web design.
          </p>
          <p>
            The purpose of these pages is to act as a playground and utilize as many web technologies, tools and processes as possible.
            So, the things demonstrated here also include stuff related to e.g. DevOps and test automation.
          </p>
          <p>
            I will be adding more material and upgrading these pages continuously as I learn new things. This is only the first release,
            so be sure to visit these pages frequently to see what kind of new and exciting things have been added.
          </p>

        </div>
      </div>
    )
  }
};

module.exports = About;
