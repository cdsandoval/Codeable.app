const API_LOGIN_URL = "http://localhost:3000/login";
const API_LOGOUT_URL = "http://localhost:3000/logout";

const API_SEND_EMAIL_URL = "http://localhost:3000/logout";

function sendResetEmail(email) {
  return async dispatch => {

    const response = await fetch(API_SEND_EMAIL_URL, {
      method: "POST",
      credentials: "include",
      body: JSON.stringify({ email: email }),
      headers: {
        "Content-Type": "application/json"
      }
    });

    const payload = await response.json();

    if (!response.ok) {
      dispatch({ type: "SEND_RESET_EMAIL_ERROR", payload: payload.errors });
    } else {
      dispatch({ type: "SEND_RESET_EMAIL_SUCCESS", payload });
    }
  };
}

function login(user) {
  return async dispatch => {
    dispatch({ type: "LOGIN_REQUEST" });

    const response = await fetch(API_LOGIN_URL, {
      method: "POST",
      credentials: "include",
      body: JSON.stringify(user),
      headers: {
        "Content-Type": "application/json"
      }
    });

    const payload = await response.json();

    if (!response.ok) {
      dispatch({ type: "LOGIN_ERROR", payload: payload.errors });
    } else {
      dispatch({ type: "LOGIN_SUCCESS", payload });
    }
  };
}

function logout() {
  return async dispatch => {
    const response = await fetch(API_LOGOUT_URL, {
      method: "DELETE",
      credentials: "include"
    });

    if (!response.ok) {
      dispatch({ type: "DEFAULT" });
    } else {
      dispatch({ type: "LOGOUT" });
    }
  };
}

export { login, logout ,sendResetEmail};
