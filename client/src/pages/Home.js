// import {collage} from '../images/photo-1665510394116-7bd316a1cba5.avif';
import {  Link } from "react-router-dom";


function Home({user}) {
    return (
        <div className="App">
            {/* <img className="home-img" src={collage} alt={photo}/> */}
            <div className="welcome">
                <p> welcome to your National Park Planner!</p>
            </div>
            <Link to="/parks-page">
                <div className="begin-exploring">
                    <div className="overlay-text">
                        <h1>Begin Exploring. . .</h1>
                    </div>
                </div>
            </Link>
        </div>
    )
}


export default Home;