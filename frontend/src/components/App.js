import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import { UserProvider } from "../providers/UserContext";
import { ProtectedRoute, NoAuthRoute } from "../routes";
import HomePage from "./HomePage";
import PostDetail from "./posts/PostDetail";
import Posts from "./posts/Posts";
import ParkingAreaDetail from "./parkingarea/ParkingAreaDetail";
import ParkingAreas from "./parkingarea/ParkingAreas";
import NewParkingAreaForm from './parkingarea/NewParkingAreaForm';
import NavBar from "./NavBar";
import NotFound from "./errors/NotFound";
import InternalServer from "./errors/InternalServer";
import PasswordReset from "./user/PasswordReset";
import PasswordResetEmail from "./user/PasswordResetEmail";
import EmailVerification from "./user/EmailVerification";
import DeleteAccount from "./user/DeleteAccount";
import Footer from "./Footer";
import Signup from "./auth/Signup";
import Login from "./auth/Login";
import Logout from "./auth/Logout";
import User from "./user/User";
import ScrollToTop from "./ScrollToTop";
import NewPostForm from "./posts/NewPostForm";
import MapWithDirections from './parkingarea/MapWithDirections';
import ExperienceForm from "./ai/ExperienceForm";

const App = () => {
  return (
    <Router>
      <div className="main">
        <UserProvider>
          <ScrollToTop />
          <NavBar />
          <Switch>
            <Route exact path="/" component={HomePage} />
            {/* Only logged in user can enter */}
            <ProtectedRoute path="/logout" component={Logout} />
            <ProtectedRoute path="/user" component={User} />
            <Route path="/new-parking-area" component={NewParkingAreaForm} />
            <Route path="/new-post" component={NewPostForm} />
            <Route path="/directions" component={MapWithDirections} />
            <Route path="/ai" component={ExperienceForm} />


            {/* Everyone except logged in user can enter */}
            <NoAuthRoute path="/signup" component={Signup} />
            <NoAuthRoute path="/login" component={Login} />
            {/* Everyone can enter*/}
            <Route
              exact
              path="/password/reset"
              component={PasswordResetEmail}
            />
            <Route
              path="/password/reset/:uid/:token"
              component={PasswordReset}
            />
            <Route path="/verify/:uid/:token" component={EmailVerification} />
            <Route path="/delete/:uid/:token" component={DeleteAccount} />
            <Route path="/posts" component={Posts} />
            <Route path="/post/:slug" component={PostDetail} />
            <Route path="/parkingareas" component={ParkingAreas} />
            <Route path="/parkingarea/:slug" component={ParkingAreaDetail} />
            {/* Error pages */}
            <Route path="/500" component={InternalServer} status={500} />
            <Route path="*" component={NotFound} status={404} />
          </Switch>
        </UserProvider>
      </div>
      <Footer />
    </Router>
  );
};

export default App;
