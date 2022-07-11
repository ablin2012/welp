import React from 'react';
import Root from './components/root'
import ReactDOM from "react-dom";
import configureStore from "./store/store";
import { login } from './actions/session_actions';
import { fetchBusinesses } from './actions/business_actions'


document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("root");
    let store;
    if (window.currentUser) {
        const preloadedState = {
            entities: {
            users: { [window.currentUser.id]: window.currentUser }
            },
            session: { id: window.currentUser.id }
        };
        store = configureStore(preloadedState);
        delete window.currentUser;
    } else {
        store = configureStore();
    }

    //window testing deletethis after project launch
    window.getState = store.getState;
    window.dispatch = store.dispatch;
    window.login = login;
    window.fetchBusinesses = fetchBusinesses;


    ReactDOM.render(<Root store={store} />, root)
})