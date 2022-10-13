// import {collage} from '../images/photo-1665510394116-7bd316a1cba5.avif';
// import {  Link } from "react-router-dom";
import logo from "../../logo.svg";
import HomeCSS from "../components/home/Home.module.css";
import Park from "../components/park/ParkCard"

function Home({ user }) {
  return (
    <>
      <div className={HomeCSS.home}>
        {/* hero image*/}
        <div className={HomeCSS.hero}>
          <img src={logo} alt="#" />
        </div>
        {/* search bar  */}

        {/* about us*/}
        <div className={HomeCSS.about}>
          <div className={HomeCSS.icons}>
            <div className={HomeCSS.icon}>
              <p>relax</p>
            </div>
            <div className={HomeCSS.icon}>
              <p>Cultural</p>
            </div>
            <div className={HomeCSS.icon}>
              <p>Beach</p>
            </div>
            <div className={HomeCSS.icon}>
              <p>Historical</p>
            </div>
          </div>
          <div className={HomeCSS.ishalf}>
            <p>
              Our specialty is the ability to design unique trips and safaris to
              fit every type of tourist,providing a unique opportunity to
              combine bush and beach adventures in hidden treasures and
              spectacular sceneries of the world
            </p>
          </div>
        </div>
        {/* popular trips  */}
        <div className={HomeCSS.popular}>
            <h1>Most <>Popular</> trips</h1>
            <Park/>
        </div>
      </div>
    </>
  );
}

export default Home;
