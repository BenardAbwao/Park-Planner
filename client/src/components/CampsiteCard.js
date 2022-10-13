import RangeDatePicker from './RangeDatePicker'
import { FaCampsite } from 'react-icons/fa';
import { FaGlobeAmericas } from 'react-icons/fa';

function CampsiteCard({campsite, user, handleResData, addresses}) {
    
    const address = addresses.filter(address => address.type === "Physical")
    console.log("CG", campsite)   
    
    return(        
        <div className="card"> 
            <div className="content">
                <h2>{campsite.name}</h2>
                {address.length > 0 ? <h3><FaGlobeAmericas /> {address[0].city}, {address[0].stateCode}</h3> : ""}
                <p>{campsite.description.toUpperCase()}</p>
                <p><FaCampsite /> Total Sites: {campsite.campsites.totalSites}</p>  
                <RangeDatePicker campground={campsite} user={user} handleResData={handleResData} />   
            </div>
        </div>        
    )
}

export default CampsiteCard;