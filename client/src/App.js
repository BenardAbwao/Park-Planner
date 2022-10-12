import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import Calendar from "./pages/CalendarPage";
import Gallery from "./pages/Gallery";
import Navbar from "./components/Navbar";
import Login from "./components/Login";
import Parks from "./pages/Parks"
import Itinerary from "./pages/Itinerary"
import Logout from "./components/Logout"


function App() {
  return (
      <Router>
        <div>
        <Navbar/>
        </div>
        <Routes>
          <Route exact path="/" element={<Home/>}></Route>
          <Route exact path="/parks" element={<Parks/>}></Route>
          <Route exact path="/itinerary" element={<Itinerary/>}></Route>
          <Route exact path="/gallery" element={<Gallery/>}></Route>
          <Route exact path="/calendar" element={<Calendar/>}></Route>
          <Route exact path="/login" element={<Login/>}></Route>
          <Route exact path="/logout" element={<Logout/>}></Route>
        </Routes>
      </Router>
  );
}

export default App;