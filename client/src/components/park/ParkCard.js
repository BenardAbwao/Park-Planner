import ParkCardCSS from "./ParkCard.module.css";
import logo from "../../logo.svg";
function ParkCard() {
  return (
    <>
      <div className={ParkCardCSS.fullCard}>
        <div className="columns is-multiline">
          <div className={ParkCardCSS.card}>
            {/* image */}
            <div className={ParkCardCSS.image}>
              <img src={logo} alt="title" />
            </div>
            {/* title */}
            <div className={ParkCardCSS.title}>
              <h2>Nairobi Park</h2>
            </div>
            {/* rate */}
            <div className={ParkCardCSS.rate}>
              <p>rate: 2</p>
            </div>
            <div className={ParkCardCSS.buttons}>
              <button>Book Now</button>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}

export default ParkCard;
