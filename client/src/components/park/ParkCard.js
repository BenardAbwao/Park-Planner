import { Link } from "react-router-dom";
import { FaCampground } from 'react-icons/fa';
import ParkCardCSS from "./ParkCard.module.css";
// import logo from "../../logo.svg";
function ParkCard({ parks, viewCampsites }) {
  return (
    <>
      <div className={ParkCardCSS.fullCard}>
        {parks.length > 0 ? (
          parks.map((park) => (
            <div className={ParkCardCSS.card} key={park.id}>
              {/* image */}
              <div className={ParkCardCSS.image}>
                <img src={park.image} alt={park.name} />
              </div>
              {/* title */}
              <div className={ParkCardCSS.title}>
                <h2>{park.name}</h2>
              </div>
              <div className={ParkCardCSS.info}>
                <p>{park.info}</p>
              </div>
              <div className={ParkCardCSS.location}>
                <h4>{park.location}</h4>
              </div>
              {/* rate */}
              <div className={ParkCardCSS.rate}>
                <p>rate: 2</p>
              </div>
              <div className={ParkCardCSS.campsite}>
                    <Link to="/campsite-page">
                        <h5 id={park.parkCode} onClick={(e) => viewCampsites(e.target.id)}><FaCampground /> View Campsites</h5>
                    </Link>
              </div>
            </div>
          ))
        ) : (
          <>
            <h2>No Parks Found</h2>
          </>
        )}
      </div>
    </>
  );
}

export default ParkCard;
