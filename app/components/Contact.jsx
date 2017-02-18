var React = require('react');

export class Contact extends React.Component {

  render () {
    return (
      <div>
        <div className="about-me">
          <h4 className="info-header">Contact information</h4>
          <div className="info-body">
            <div className="address">
              <h5>  Kimmo Halonen </h5>
              <p>
                Tohtorinkatu 34 D 17 <br/>
                33720 Tampere, Finland
              </p>
            </div>
            <div className="tel-email">
              <p>
                +358 40 7307105 <br/>
                <a href="mailto:hemmoi@gmail.com">hemmoi@gmail.com</a>
              </p>
            </div>
            <div className="linkedin-image">
              <p>
                <a href="https://www.linkedin.com/in/kimmokhalonen/" target="_blank">
                  <img style={{width: 30, marginBottom: 5}} src={require('../images/linkedin-logo.jpg')}  alt="LinkedIn image" />
                  Kimmo Halonen
                </a>
              </p>
            </div>
          </div>
        </div>
      </div>
    )
  }
};

module.exports = Contact;
