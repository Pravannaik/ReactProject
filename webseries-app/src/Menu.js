import React from 'react'
import './index.css'
import './App.css'
import App from './App';
import Data from './Data';
import {BrowserRouter, Route, Switch, Link} from 'react-router-dom'




function Menu() {
  return (
    <>
    <BrowserRouter>
        <div>
            <div className="header">
                <img src="/Images/logo1.png" className="header__img" alt="myPic" />
            </div>
            <Content/>
            <Switch>
                <Route exact path="/" component={All}/>     
                <Route path="/netflix" component={Netflix}/>
                <Route path="/amazon" component={Amazon}/>
                <Route path="/sony" component={Sony}/>
                <Route path="/hotstar" component={Hotstar}/>
                <Route path="/voot" component={Voot}/>
            </Switch>
        </div>
        </BrowserRouter>
    </>
  )
}

const Content = () => {
    return(
        <>
            <div className="contitem">
                <ul>
                    <Link to="/" className="link">All</Link>
                    <Link to="/netflix" className="link">Netflix</Link>
                    <Link to="/amazon" className="link">Amazon</Link>
                    <Link to="/sony" className="link">Sony</Link>
                    <Link to="/hotstar" className="link">Hotstar</Link>
                    <Link to="/voot" className="link">Voot</Link>
                </ul>
            </div>
        </>
    )
}

const All = () => {

    const Iter = Data.filter(dta => ((dta.title).toLocaleLowerCase()).includes(" ")).map((currValue) => {
        return (
            <App name={currValue.name} img={currValue.img} title={currValue.title} link={currValue.link}/>
            //console.log(urlData+":"+((currValue.title).toLocaleLowerCase()).includes(urlData))
          );
      });

    return Iter
}

const Netflix = () => {
      
        const Iter = Data.filter(dta => ((dta.title).includes("Netflix"))).map((currValue) => {
            return (
                <App name={currValue.name} img={currValue.img} title={currValue.title} link={currValue.link}/>
                //console.log(urlData+":"+((currValue.title).toLocaleLowerCase()).includes(urlData))
            );
        });

        return Iter
}
  
const Amazon = () => {

    const Iter = Data.filter(dta => ((dta.title).includes("Amazon"))).map((currValue) => {
        return (
            <App name={currValue.name} img={currValue.img} title={currValue.title} link={currValue.link}/>
            //console.log(urlData+":"+((currValue.title).toLocaleLowerCase()).includes(urlData))
          );
      });

    return Iter
}

const Sony = () => {
    
    const Iter = Data.filter(dta => ((dta.title).includes("Sony"))).map((currValue) => {
        return (
            <App name={currValue.name} img={currValue.img} title={currValue.title} link={currValue.link}/>
            //console.log(urlData+":"+((currValue.title).toLocaleLowerCase()).includes(urlData))
          );
      });

    return Iter
}

const Hotstar = () => {
    
    const Iter = Data.filter(dta => ((dta.title).includes("Hotstar"))).map((currValue) => {
        return (
            <App name={currValue.name} img={currValue.img} title={currValue.title} link={currValue.link}/>
            //console.log(urlData+":"+((currValue.title).toLocaleLowerCase()).includes(urlData))
          );
      });

    return Iter
}

const Voot = () => {
    
    const Iter = Data.filter(dta => ((dta.title).includes("Voot"))).map((currValue) => {
        return (
            <App name={currValue.name} img={currValue.img} title={currValue.title} link={currValue.link}/>
            //console.log(urlData+":"+((currValue.title).toLocaleLowerCase()).includes(urlData))
          );
      });

    return Iter
}

export default Menu
