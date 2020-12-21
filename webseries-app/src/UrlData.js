import Data from './Data';
import App from './App';
import React from 'react'


const urlData = (window.location.pathname).substring(1)

console.log(urlData)
const iter = Data.filter(dta => ((dta.title).toLocaleLowerCase()).includes(urlData)).map((currValue) => {
  return (
      <App name={currValue.name} img={currValue.img} title={currValue.title} link={currValue.link}/>
      //console.log(urlData+":"+((currValue.title).toLocaleLowerCase()).includes(urlData))
    );
});

export default iter
