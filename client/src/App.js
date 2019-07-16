/** @jsx jsx */
import React from "react";
import Login from "./views/Login";
import { jsx } from "@emotion/core";
import Classes from "./views/Classes";
import { Router } from "@reach/router";
import Forgot from "./views/Forgot";
import Lesson from "./views/Lesson";

function App() {
  const container = {
    display: "grid"
  };
  return (
    <div css={container}>
      <Router>
        <Login path="/" />
        <Classes path="lessons" />
        <Lesson path="lessons/sublesson/:index/:title" />
        <Forgot path="/forgot" />
      </Router>
    </div>
  );
}

export default App;
