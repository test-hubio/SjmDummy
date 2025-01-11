import React from "react";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

import Routes from "./utils/routes.utils";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";


const App = () => {
  const router = createBrowserRouter(Routes);
  return <RouterProvider router={router} />;
};

export default App;
