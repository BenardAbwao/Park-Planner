import React, { useState } from "react";
import LoginCSS from "./Login.module.css";
import Input from "./input/Input";

function Login() {
  const [input, setInput] = useState({
    email: "",
    password: "",
  });

  const handleOnSubmit = (e) => {
    e.preventDefault();
    console.log(input, "submitted")
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
            id="email"
            type="text"
            name="email"
            value={input.email}
            onChange={handleOnChange}
            label="Email"
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
            <button type="submit">Publish</button>
          </div>
        </div>
      </form>
    </>
  );
}
export default Login;
