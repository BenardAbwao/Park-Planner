import React, { useState } from "react";
//from login page
import SignupCSS from "./Login.module.css";
import Input from "./input/Input";

function Signup() {
  //puts state for all input fields
  const [input, setInput] = useState({
    email: "",
    password1: "",
    password: "",
  });

  //each input field changes
  const handleOnChange = (e) => {
    const { name, value } = e.target;
    setInput({ ...input, [name]: value });
  };

  //submit form - submits input values to the console
  const handleOnSubmit = (e) => {
    e.preventDefault();
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
            id="email"
            type="text"
            name="email"
            value={input.email}
            onChange={handleOnChange}
            label="Email"
          />
          <Input
            id="password1"
            type="password"
            name="password1"
            value={input.password1}
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
            <button type="submit">Publish</button>
          </div>
        </div>
      </form>
    </>
  );
}
export default Signup;
