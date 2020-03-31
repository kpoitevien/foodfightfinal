import React, { useState, UseEffect } from "react";
import ReactCardFlip from "react-card-flip";
import Card from "react-bootstrap/Card";
import Button from "react-bootstrap/Button";
import CardGroup from "react-bootstrap/CardGroup";

class CancerousCard extends React.Component {
  constructor() {
    super();
    this.state = {
      isFlipped: false
    };
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    e.preventDefault();
    this.setState(prevState => ({ isFlipped: !prevState.isFlipped }));
  }

  render() {
    return (
      <ReactCardFlip
        isFlipped={this.state.isFlipped}
        flipDirection="horizontal"
      >
        <div>
          <CardGroup className="cardGroupDiv">
            <Card style={{ width: "18rem" }}>
              <Card.Img
                className="cardImage"
                src="https://scontent.fmia1-2.fna.fbcdn.net/v/t1.0-9/31297440_2062891483953936_888062708392394752_n.jpg?_nc_cat=111&_nc_sid=8024bb&_nc_oc=AQkfmWuAvpd8BrbQQW35BL4Jyzmpnw5f_Mr9ckUASuXfSSj-3JwmGLGvvk-INuYN578&_nc_ht=scontent.fmia1-2.fna&oh=d6d217af9460e8db78a535ddf9033b87&oe=5E988E86"
              ></Card.Img>
              <Card.Body>
                <Card.Title>Master Fry Burger</Card.Title>

                <Card.Text>Dangerously good</Card.Text>

                <button className="cardButton" onClick={this.handleClick}>
                  Alternatives
                </button>
              </Card.Body>
            </Card>
          </CardGroup>
        </div>

        <div>
          <CardGroup className="cardGroupDiv">
            <Card style={{ width: "18rem" }}>
              <Card.Img
                className="cardImage"
                src="https://www.feastingathome.com/wp-content/uploads/2017/05/Grillable-Sprouted-Lentil-Burger-102.jpg"
              ></Card.Img>
              <Card.Body>
                <Card.Title>Sprouted lentil Burger</Card.Title>

                <Card.Text>Dangerously Healthy</Card.Text>

                <button onClick={this.handleClick}>Alternatives</button>
              </Card.Body>
            </Card>
          </CardGroup>
        </div>
      </ReactCardFlip>
    );
  }
}
export default CancerousCard;
