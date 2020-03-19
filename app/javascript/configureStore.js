import { createStore, applyMiddleware, combineReducers } from "redux";

import thunk from 'redux-thunk';

import { composeWithDevTools } from 'redux-devtools-extension';

import reducers from "./reducers";

const rootReducer = combineReducers({...reducers});

export default function configureStore() {
  const store = createStore(
    rootReducer,
    composeWithDevTools(
      applyMiddleware(
        thunk,
      )
    )
  );
  return store;
}