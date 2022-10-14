import React, { useState } from "react";
import LoginCSS from "./Login.module.css";
import Input from "./input/Input";

function Login({ onLogin }) {
  const [input, setInput] = useState({
    username: "",
    password: "",
  });

  const [errors, setErrors] = useState([]);
  const [isLoading, setIsLoading] = useState(false);

  const handleOnSubmit = (e) => {
    e.preventDefault();
    setIsLoading(true);
    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ username: input.username, password: input.password }),
    }).then((r) => {
      setIsLoading(false);
      if (r.ok) {
        r.json().then((user) => onLogin(user));
      } else {
        r.json().then((err) => setErrors(err.errors));
      }
    });
    console.log(input, "submitted");
  };

  const handleOnChange = (e) => {
    const { name, value } = e.target;
    setInput({ ...input, [name]: value });
  };
  return (
    <>
      <form onSubmit={handleOnSubmit} className={LoginCSS.form}>
        <div className={LoginCSS.formContainer}>
          <div className={LoginCSS.title}>
            <h1>park Planner</h1>
          </div>
          <div className={LoginCSS.subtitle}>
            <h2>login</h2>
          </div>
          <Input
            id="username"
            type="text"
            name="username"
            value={input.username}
            onChange={handleOnChange}
            label="Username"
          />
          <Input
            id="password"
            type="password"
            name="password"
            value={input.password}
            onChange={handleOnChange}
            label="password"
          />
          <div className={LoginCSS.buttons}>
            <button type="submit">{isLoading ? "Loading..." : "Login"}</button>
          </div>
          <div>
            {errors.map((err) => (
              <span key={err}>{err}</span>
            ))}
          </div>
        </div>
      </form>
    </>
  );
}
export default Login;
