
import HomeCSS from "../components/home/Home.module.css";
import Park from "../components/park/ParkCard";
import SearchBar from "../components/search/SearchBar";

import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faBuilding } from "@fortawesome/free-solid-svg-icons";
import { faMonument } from "@fortawesome/free-solid-svg-icons";
import { faUmbrellaBeach } from "@fortawesome/free-solid-svg-icons";
import { faCocktail } from "@fortawesome/free-solid-svg-icons";

function Home({ parks }) {
  parks = parks.slice(0, 6);
  return (
    <>
      <div className={HomeCSS.home}>
        {/* hero image*/}
        <div className={HomeCSS.hero}>
          <img
            src="https://images.unsplash.com/photo-1519046904884-53103b34b206?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"
            alt="cover"
          />
        </div>
        {/* search bar  */}
        <div className={HomeCSS.search}>
          <SearchBar />
        </div>
        {/* about us*/}
        <div className={HomeCSS.about}>
          <div className={HomeCSS.icons}>
            <div>
              <FontAwesomeIcon icon={faCocktail} className={HomeCSS.icon} />
              <p>relax</p>
            </div>
            <div>
              <FontAwesomeIcon icon={faBuilding} className={HomeCSS.icon} />
              <p>Cultural</p>
            </div>
            <div>
              <FontAwesomeIcon
                icon={faUmbrellaBeach}
                className={HomeCSS.icon}
              />
              <p>Beach</p>
            </div>
            <div>
              <FontAwesomeIcon icon={faMonument} className={HomeCSS.icon} />
              <p>Historical</p>
            </div>
          </div>
          <div className={HomeCSS.content}>
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
          <h1>
            Most <>Popular</> trips
          </h1>
          <Park parks={parks} />
        </div>
      </div>
    </>
  );
}

export default Home;
