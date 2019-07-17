/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { navigate, Link } from "@reach/router";

import Background from "../assets/background-login.jpeg";
import { Card, Input, Button, Label } from "../components/Ui";
import { sendResetEmail } from "../services/resetPassword";

function Forgot() {
  const [error, setError] = React.useState(null);

  async function handleSubmit(e) {
    e.preventDefault();
    sendResetEmail(e.target.elements.email.value);
    navigate("/resetconfirm");
  }

  return (
    <div
      css={{
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        backgroundImage: `url(${Background})`,
        backgroundColor: "#ffffff",
        backgroundSize: "cover",
        height: "100vh"
      }}
    >
      <Card
        css={{
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "center",
          width: "500px",
          height: "300px"
        }}
      >
        <form
          css={{
            width: "100%",
            height: "100%",
            display: "flex",
            flexDirection: "column",
            justifyContent: "space-between"
          }}
          onSubmit={handleSubmit}
        >
          <h2>Ask for new password</h2>
          <div
            css={{
              height: "70%",
              display: "flex",
              flexDirection: "column",
              justifyContent: "space-between"
            }}
          >
            <p>
              Dont't worry, reset your password is easy. Just enter your email
              address.
            </p>

            <Input name="email" type="email" placeholder="Email" />

            {error && (
              <div
                css={{
                  color: "red",
                  textAlign: "center",
                  margin: "0.5em",
                  fontSize: "0.95em"
                }}
              >
                Error: {error}
              </div>
            )}

            <Button>Submit</Button>
          </div>
        </form>
      </Card>
    </div>
  );
}

export default Forgot;
