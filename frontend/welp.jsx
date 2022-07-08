import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store";

document.addEventListener("DOMContentLoaded", () => {
    //window testing deletethis after project launch
    window.getState = store.getState;
    window.dispatch = store.dispatch;


    const root = document.getElementById("root");
    const store = configureStore();

    ReactDOM.render(<h1>Welcome to Welp</h1>, root)
})