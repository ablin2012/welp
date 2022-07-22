import { UPDATE_FILTER, CLEAR_FILTERS } from '../actions/filter_actions'

const defaultFilters = Object.freeze({
  bounds: {},
  name: '',
  price: '',
  category: '',
  location: ''
});

const filtersReducer = (state = defaultFilters, action) => {
    Object.freeze(state);
    if (action.type === UPDATE_FILTER) {
      const newFilter = {
        [action.filter]: action.value
      };
      return Object.assign({}, state, newFilter);
    } else if (action.type === CLEAR_FILTERS) {
      return Object.assign({}, defaultFilters);
    } else {
      return state;
    }
  };
  
  export default filtersReducer;