import React, { useContext, useState, useEffect } from "react";
import { UserContext } from "../providers/UserContext";
import { NavLink, useHistory } from "react-router-dom";
import { GiHamburgerMenu } from "react-icons/gi";

const NavBar = () => {
  const { user } = useContext(UserContext);
  const [open, setOpen] = useState(false);
  const [isMobile, setIsMobile] = useState(false);
  const history = useHistory();


  const handleResize = () => {
    if (window.innerWidth < 600) {
      setIsMobile(true);
    } else {
      setIsMobile(false);
    }
  };

  const handleMobileMenu = () => {
    setOpen(false);
  };

  useEffect(() => {
    window.addEventListener("resize", handleResize);
    handleResize();
  }, []);

  useEffect(() => {
    if (open) {
      document.documentElement.style.overflowY = "hidden";
    } else {
      document.documentElement.style.overflowY = "auto";
    }
  }, [open]);

  const handleGetDirections = () => {
    history.push("/directions"); // "directions" rotası, MapWithDirections bileşenini gösteren sayfa rotası
  };

  const renderDesktop = () => {
    return (
        <>
            <li>
                <NavLink className="navbar-item" exact to="/">
                    <strong>Home</strong>
                </NavLink>
            </li>
            <li>
                <NavLink className="navbar-item" to="/posts">
                    Posts
                </NavLink>
            </li>
            <li>
                <NavLink className="navbar-item" to="/parkingareas">
                    Parking Areas
                </NavLink>
            </li>
            {user !== null ? (
                <>
                    <li>
                        <NavLink className="navbar-item" to="/new-parking-area">
                            Add Parking Area
                        </NavLink>
                    </li>
                    <li>
                        <NavLink className="navbar-item" to="/new-post">
                            Add Post
                        </NavLink>
                    </li>
                    <li>
                        <NavLink className="navbar-item" to="/directions" onClick={handleGetDirections}>
                            Get Directions
                        </NavLink>
                    </li>
                    <li>
                        <NavLink className="navbar-item" to="/user">
                            User Panel
                        </NavLink>
                    </li>
                    <li>
                        <NavLink className="navbar-item" to="/logout">
                            Log Out
                        </NavLink>
                    </li>
                </>
            ) : (
                <>
                    <li>
                        <NavLink className="navbar-item" to="/signup">
                            Sign Up
                        </NavLink>
                    </li>
                    <li>
                        <NavLink className="navbar-item" to="/login">
                            Log In
                        </NavLink>
                    </li>
                </>
            )}
            {/*<li>*/}
            {/*    <button className="navbar-item" onClick={handleGetDirections}>*/}
            {/*        Get Directions*/}
            {/*    </button>*/}
            {/*</li>*/}
        </>
    );
  };

    return (
        <>
            <nav>
                <ul className="navbar">
                    <li>
                        <img
                            src={window.location.origin + "/media/car_logo.jpg"}
              className="logo"
              alt="Logo"
            />
          </li>
          {isMobile ? (
            <button className="navbar-hamburger" onClick={() => setOpen(!open)}>
              <GiHamburgerMenu
                style={{ fill: open ? "var(--primary)" : "var(--secondary)" }}
              />
            </button>
          ) : (
            renderDesktop()
          )}
        </ul>
      </nav>
      {isMobile && (
        <div
          className="navbar-mobile"
          style={{
            transform: open ? "translateX(0)" : "translateX(100%)",
          }}
        >
          <ul className="navbar-mobile-items">
            <li onClick={handleMobileMenu}>
              <NavLink className="mobile-link" exact to="/">
                <strong>Home</strong>
              </NavLink>
            </li>
            <li onClick={handleMobileMenu}>
              <NavLink className="mobile-link" to="/posts">
                Posts
              </NavLink>
            </li>
            <li onClick={handleMobileMenu}>
              <NavLink className="mobile-link" to="/parkingareas">
                Parking Areas
              </NavLink>
            </li>
            {user !== null ? (
                <>
                  <li onClick={handleMobileMenu}>
                    <NavLink className="mobile-link" to="/new-parking-area">
                      Add Parking Area
                    </NavLink>
                  </li>
                  <li onClick={handleMobileMenu}>
                    <NavLink className="mobile-link" to="/new-post">
                      Add Post
                    </NavLink>
                  </li>
                  <li onClick={handleMobileMenu}>
                    <NavLink className="mobile-link" to="/user">
                      User Panel
                    </NavLink>
                  </li>
                  <li onClick={handleMobileMenu}>
                    <NavLink className="mobile-link" to="/logout">
                      Log Out
                    </NavLink>
                  </li>
                </>
            ) : (
                <>
                  <li onClick={handleMobileMenu}>
                    <NavLink className="mobile-link" to="/signup">
                      Sign Up
                    </NavLink>
                  </li>
                  <li onClick={handleMobileMenu}>
                    <NavLink className="mobile-link" to="/login">
                      Log In
                    </NavLink>
                  </li>
                </>
            )}
            <li onClick={handleMobileMenu}>
              <button className="mobile-link" onClick={handleGetDirections}>
                Get Directions
              </button>
            </li>
          </ul>
        </div>
      )}
      </>
  );
};

export default NavBar;
