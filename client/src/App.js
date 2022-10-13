import React, { useEffect, useState } from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import Calendar from "./pages/CalendarPage";
import Gallery from "./pages/Gallery";
import Navbar from "./components/Navbar";
import Login from "./components/Login";
import Parks from "./pages/Parks"
import Itinerary from "./pages/Itinerary"
import Signup from "./components/Signup"


function App() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  if (!user) return <Login onLogin={setUser} />;
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
          <Route exact path="/login" element={<Login onLogin={setUser}/>}></Route>
          <Route exact path="/signup" element={<Signup/>}></Route>
        </Routes>
      </Router>
  );
}

export default App;