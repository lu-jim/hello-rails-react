import axios from 'axios';

const GET_MESSAGE_REQUEST = 'GET_MESSAGE_REQUEST';
const GET_MESSAGE_SUCCESS = 'GET_MESSAGE_SUCCESS';
const GET_MESSAGE_FAILURE = 'GET_MESSAGE_FAILURE';
const url = '/v1/messages';

const initialState = { message: [] };

const getMessageRequest = () => ({
  type: GET_MESSAGE_REQUEST,
  payload
})
const getMessageSuccess = () => ({
  type: GET_MESSAGE_SUCCESS,
  payload
})
const getMessageFailure = () => ({
  type: GET_MESSAGE_FAILURE
})

export const getMessage = () => {
  return async (dispatch) => {
    dispatch(getMessageRequest());
    try {
      const response = await fetch(url)
    }
  }
}

const reducer = (state = initialState, { type, payload }) => {
  switch (type) {
    default:
      return state;
    case GET_STATS:
      return { ...state, dashboard: payload };
  }
};

export default reducer;
