import GroundItinerary from '../components/GroundItinerary';
import ToDoItinerary from '../components/ToDoItinerary';
import PictureItin from '../images/photo-1665510394116-7bd316a1cba5.avif'
import { FaCampground } from 'react-icons/fa';
import { FaWalking } from 'react-icons/fa';


function Itinerary({reservations, deleteRes}) {
    
    const cgRes = reservations.filter((res) => res.category === "campground");
    const tdRes = reservations.filter((res) => res.category === "to-do") 

    return (
        <div className="page-body">
            <img src={PictureItin} alt="React Logo" />
            <div className="page-divide">
                <div className="no-content">

                </div>
                <div className="reservations">
                    <div className="camping-res">
                        <h2><FaCampground /> Camping</h2>
                        {cgRes.map((reservation) => <GroundItinerary key={reservation.id} reservation={reservation} deleteRes={deleteRes} />)}
                    </div>
                    <div className="todo-res">
                        <h2><FaWalking />Activities</h2>
                        {tdRes.map((reservation) => <ToDoItinerary key={reservation.id} reservation={reservation}deleteRes={deleteRes} />)}
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Itinerary;