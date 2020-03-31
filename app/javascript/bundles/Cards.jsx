import React, { useState, useEffect } from "react";
import Card from "react-bootstrap/Card";
import Button from "react-bootstrap/Button";
import CardGroup from "react-bootstrap/CardGroup";
import axios from "axios";

const Cards = () => {
  const [food, setFood] = useState([]);
  const searchParams = new URLSearchParams(location.search);

  const fetchFood = async () => {
    const category = searchParams.get("category");
    const url = category ? `/foods.json?category=${category}` : "/foods.json";
    const { data } = await axios.get(url);
    const food = data || [];
    setFood(food);
  };

  useEffect(() => {
    fetchFood();
  }, []);

  return (
    <div id="cardsMainDiv">
      {food.map(eachFood => {
        return (
          <div className="cardParentDiv">
            {eachFood.recipes.map(recipe => {
              return (
                <CardGroup className="cardGroupDiv">
                  <Card style={{ width: "18rem" }}>
                    <Card.Img className="cardImage" src={recipe.image} />

                    <Card.Body>
                      <Card.Title>{recipe.food_name}</Card.Title>

                      <Button
                        className="cardButton"
                        href={`/recipes/${recipe.id}`}
                      >
                        Recipe
                      </Button>
                    </Card.Body>
                  </Card>
                </CardGroup>
              );
            })}
          </div>
        );
      })}
    </div>
  );
};
export default () => <Cards />;
