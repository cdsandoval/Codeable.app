import React from "react";
import { Link } from "@reach/router";

function Lesson({ title, index }) {
  return (
    <div>
      <Link to="/lesson" />
      <h1>
        Welcome to Modulo {index} : {title.replace(/\W/g, " ").toUpperCase()}
      </h1>
    </div>
  );
}

export default Lesson;
