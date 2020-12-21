import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import Menu from './Menu';

//For mapping all array elements to card

// const iter = Data.map((currValue) => {
//   return (
//     <App name={currValue.name} img={currValue.img} title={currValue.title} link={currValue.link}/>
//   );
// });


ReactDOM.render(
  <React.StrictMode>
    <Menu />
    {/* <BrowserRouter>
      <div className="header">
        <img src="/Images/logo1.png" className="header__img" alt="myPic" />
      </div>
      <div className="navbar">
          <Menu/>
      </div>
       {iter} 
    </BrowserRouter> */}
  </React.StrictMode>,
  document.getElementById('root')
);

