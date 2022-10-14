import React, { useState } from "react";
//from login page
import SignupCSS from "./Login.module.css";
import Input from "./input/Input";

import Error from "../components/styles/Error";
import FormField from "../components/styles/FormField";

function Signup({ onLogin }) {
  //puts state for all input fields
  const [input, setInput] = useState({
    username: "",
    email: "",
    passwordConfirmation: "",
    password: "",
  });
  const [errors, setErrors] = useState([]);
  const [isLoading, setIsLoading] = useState(false);

  //each input field changes
  const handleOnChange = (e) => {
    const { name, value } = e.target;
    setInput({ ...input, [name]: value });
  };

  //submit form - submits input values to the console
  const handleOnSubmit = (e) => {
    e.preventDefault();
    setErrors([]);
    setIsLoading(true);
    fetch("/signup", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        username: input.username,
        email: input.email,
        password: input.password,
        password_confirmation: input.passwordConfirmation,
      }),
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

  return (
    <>
      <form onSubmit={handleOnSubmit} className={SignupCSS.form}>
        <div className={SignupCSS.formContainer}>
          <div className={SignupCSS.title}>
            <h1>park Planner</h1>
          </div>
          <div className={SignupCSS.subtitle}>
            <h2>sign up</h2>
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
            id="email"
            type="email"
            name="email"
            value={input.email}
            onChange={handleOnChange}
            label="Email"
          />
          <Input
            id="passwordConfirmation"
            type="password"
            name="passwordConfirmation"
            value={input.passwordConfirmation}
            onChange={handleOnChange}
            label="Confirm Password"
          />
          <Input
            id="password"
            type="password"
            name="password"
            value={input.password}
            onChange={handleOnChange}
            label="Password"
          />
          <div className={SignupCSS.buttons}>
            <button type="submit">
              {isLoading ? "Loading..." : "Sign Up"}
            </button>
          </div>
          <FormField>
            {errors.map((err) => (
              <Error key={err}>{err}</Error>
            ))}
          </FormField>
        </div>
      </form>
    </>
  );
}
export default Signup;
