const API_SEND_EMAIL_URL = "http://localhost:3000/password_resets";

async function sendResetEmail(email) {
  const response = await fetch(API_SEND_EMAIL_URL, {
    method: "POST",
    credentials: "include",
    body: JSON.stringify({ email: email }),
    headers: {
      "Content-Type": "application/json"
    }
  });
  
  return await response.json();
}

export { sendResetEmail };
