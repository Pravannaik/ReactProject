import React from 'react'
import {Link} from 'react-router-dom'
import * as Faicon from "react-icons/fa";
import * as Gricon from "react-icons/gr";

function Navbar() {
  return (
    <>
      <div className="navbar">
        <Link to="#" className="menu-bars">
            <Faicon.FaBars/>
        </Link>
      </div>
      <nav className={sidebar ? "menu-bars active" : "menu-bars"}>
          <ul className="menu-bars-items">
              <li className="menubar-toggle">
                  <Link to="#" className="menu-bars">
                      <Gricon.GrClose/>
                  </Link>
              </li>
              <li>Subscription</li>
              <li>Settings</li>
              <li>Sign Up</li>
          </ul>
      </nav>
    </>
  )
}

export default Navbar
