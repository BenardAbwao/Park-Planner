import React from "react";
import { NavLink } from "react-router-dom";

const Navbar = () => {
  return (
    <nav className="navbar">
      <div className="nav-center">
          <h1 className="logo">Park Planner</h1>
        <ul className="nav-links">
          <li>
            <NavLink to={"/"}>Home</NavLink>
          </li>
          <li>
            <NavLink to={"/parks"}>Parks</NavLink>
          </li>
          <li>
            <NavLink to={"/itinerary"}>Itinerary</NavLink>
          </li>
          <li>
            <NavLink to={"/gallery"}>Gallery</NavLink>
          </li>
          <li>
            <NavLink to={"/calendar"}>Calendar</NavLink>
          </li>
          <li>
            <NavLink to={"/login"}>Login</NavLink>
          </li>
          <li>
            <NavLink to={"/logout"}>Logout</NavLink>
          </li>
        </ul>
      </div>
    </nav>
  );
};

export default Navbar;