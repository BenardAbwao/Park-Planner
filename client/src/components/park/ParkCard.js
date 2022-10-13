import ParkCardCSS from "./ParkCard.module.css";
// import logo from "../../logo.svg";
function ParkCard({ parks }) {
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
                {/* rate */}
                <div className={ParkCardCSS.rate}>
                  <p>rate: 2</p>
                </div>
                <div className={ParkCardCSS.buttons}>
                  <button>Book Now</button>
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
