import CampsiteCard from "./CampsiteCard";
import { Link } from "react-router-dom";
import { FaBackward } from 'react-icons/fa';

function CampsitesPage({parkCampsites, user, handleResData}) {
    
   
    return (
        <div className="page-body">
            <div className="back">
                <Link to="/parks-page">
                    <h2><FaBackward /> Back to Parks</h2>      
                </Link>
            </div>
            <div className="results">
                { parkCampsites.length > 0 ?
                    parkCampsites.map((campsite) => 
                    <CampsiteCard key={campsite.id} campsite={campsite} user={user} handleResData={handleResData} addresses={campsite.addresses}/>
                    ) :
                    <h2>Sorry, no campgrounds at this park.</h2>
                }       
            </div>
        </div>
    )
}

export default CampsitesPage;