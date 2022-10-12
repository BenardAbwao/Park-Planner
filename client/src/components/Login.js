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
  };

  const handleOnChange = (e) => {
    const { name, value } = e.target;
    setInput({ ...input, [name]: value });
  };
  return (
    <>
      <form onSubmit={handleOnSubmit} className={LoginCSS.form}>
        <div className={LoginCSS.formContainer}>
          <Input
            id="email"
            type="text"
            name="email"
            value={input.email}
            onChange={handleOnChange}
            label="password"
          />
          <Input
            id="password"
            type="password"
            name="password"
            value={input.password}
            onChange={handleOnChange}
            label="password"
          />
        </div>
      </form>
    </>
  );
}
export default Login;
