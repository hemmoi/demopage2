var React = require('react');
var Iframe = require("react-iframe");

export class Creator extends React.Component {

  render () {
    return (
      <div>
        <div className="about-me">
          <h4 className="info-header">Who am I?</h4>
          <div className="info-body">
            <p>
              My name is Kimmo Halonen. I am a graduate engineer, Finn and bald.
            </p>
            <p>
              For 20-years I worked with Nokia and Microsoft, creating some of the most legendary mobile devices in the world.
            </p>
            <p>
              My area of speciality was standardization, certification and industry collaboration. Over the years, I wrote standards,
              test processes and specifications for over a dozen different emerging mobile technologies, and created totally
              new international certification schemes that are still used today to validate mobile devices.
            </p>
            <p>
              It is impossible to summarize 20-year career in just a few words, so I won’t bother.
              Since you are here, changes are that you have already seen my CV or LinkedIn profile. What's important is, where do we go from here.
            </p>
            <p>
              I’m looking for a new career start. Based on my previous experience, I would be best qualified to work in the area of business analysis,
              quality and test management. However, since I am a strong believer in hands on experience, I would not exclude any exciting possibilities
              to work in SW/product development.
              After all, the whole purpose of these pages is to demonstrate that I can do more than just sit in meetings and write PowerPoints.
            </p>
            <p>
              Here’s also my video CV for your amusement.
            </p>
            <iframe className="video-cv" src="https://www.youtube.com/embed/wXM9EoEN5dg" frameBorder="0" allowFullScreen></iframe>
          </div>
        </div>
        <div>

        </div>
      </div>
    )
  }
};

module.exports = Creator;
