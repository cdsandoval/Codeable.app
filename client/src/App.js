/** @jsx jsx */
import React from "react";
import { Router } from "@reach/router";
import { jsx } from "@emotion/core";
import Login from "./views/Login";
import Classes from "./views/Classes";
import Forgot from "./views/Forgot";
import ResetConfirmation from "./views/ResetConfirmation";

function App() {
  const container = {
    display: "grid"
  };
  return (
    <div css={container}>
      <Router>
        <Login path="/" />
        <Classes path="/lessons" />
        <Forgot path="/forgot" />
        <ResetConfirmation path="/resetconfirm" />
      </Router>
    </div>
  );
}

export default App;
