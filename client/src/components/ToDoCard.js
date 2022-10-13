import TableDatePicker from './TableDatePicker'
import { FaGlobeAmericas } from 'react-icons/fa';

function ToDoCard({toDo, user, handleResData}) {
    
    console.log("ToDo", toDo)
    
    return(
        <div className="card">
            <div className="still">
            </div>
            <div className="content">
                <h2>{toDo.title}</h2>
                <h3><FaGlobeAmericas /> {toDo.relatedParks[0].fullName}</h3>
                <p>{toDo.shortDescription.toUpperCase()}</p>
                <TableDatePicker toDo={toDo} user={user} handleResData={handleResData}/>  
            </div>
        </div>
    )
}

export default ToDoCard;