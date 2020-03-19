

import React from 'react'


const Home = props => (
  <div>Hello {props.name}!</div>
)

Home.defaultProps = {
  name: 'Paulinko'
}


export default Home