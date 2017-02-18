var React = require('react');

export class TechList extends React.Component {

  render () {
    return (
      <div className="tech-pages">
        <h4 className="info-header">Used technologies</h4>
        <div className="info-body">
          <table className="tech-table">
            <tbody>
              <tr>
                <td>AWS</td>
                <td>AWS/S3 is used to store automated Unit and Robot Framework test reports.</td>
              </tr>
              <tr>
                <td>Firebase</td>
                <td>Todo application uses Firebase as a database to store tasks.</td>
              </tr>
              <tr>
               <td>Foundation</td>
               <td>These pages have been styled using Foundation framework.</td>
              </tr>
              <tr>
               <td>Git</td>
               <td>Git is used for project file version control.</td>
              </tr>
              <tr>
               <td>GitHub</td>
               <td>GitHub is used as a remote storage for the project files.</td>
              </tr>
              <tr>
               <td>Heroku</td>
               <td>Heroku is used as a production environment to host these pages.</td>
              </tr>
              <tr>
               <td>Karma</td>
               <td>Karma is used as a test runner for the automated unit tests.</td>
              </tr>
              <tr>
               <td>Node.js</td>
               <td>Node.js is used for creating a runtime environment for development.</td>
              </tr>
              <tr>
               <td>React</td>
               <td>These pages have been coded using React.</td>
             </tr>
             <tr>
              <td>Redux</td>
              <td>Todo application uses Redux for state management.</td>
            </tr>
             <tr>
               <td>Robot Framework</td>
               <td>Automated UI tests for these pages have been implemented using Robot Framework.</td>
             </tr>
             <tr>
               <td>Webpack</td>
               <td>Webpack is used for bundling project files for deployment.</td>
             </tr>
           </tbody>
         </table>
        </div>
      </div>
    )
  }
};

module.exports = TechList;
