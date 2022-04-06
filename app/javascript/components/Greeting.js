import React, { useEffect } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import { getMessage } from '../redux/greeting/greeting';
import PropTypes from 'prop-types';

const Greeting = () => {
  const dispatch = useDispatch();
  const message = useSelector((state) => state.greeting);

  useEffect(() => {
    dispatch(getMessage());
  }, []);
  return(<p> {message}</p>);
};

Greeting.propTypes = {
  greeting: PropTypes.string,
};
export default Greeting;
