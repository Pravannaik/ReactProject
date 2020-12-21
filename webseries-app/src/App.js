import './App.css';

function App(props) {
  return (
    <>
      {console.log(props)}
      <div className="cards">
        <div className="card">
          <img src={props.img} className="card__img" alt="myPic" />
          <div className="card__info">
            <span className="card__category">{props.name}</span>
            <h3 className="card__title">{props.title}</h3>
            <a href={props.link} target="_blank">
              <button> Watch Now </button>
            </a>
          </div>
        </div>
      </div>
    </>
  );
}

export default App;
