import { useState } from "react";
import DatePicker from "react-datepicker";
import { FaCalendarAlt } from 'react-icons/fa';

function RangeDatePicker({campsite, user, handleResData}) {
    const [startDate, setStartDate] = useState(new Date());
    const [endDate, setEndDate] = useState(new Date());
    const [setResData] = useState({})

    function renderResData() {
        const newResData = {
            title: `${campsite.name}`,
            category: "campsite",
            start: startDate,
            end: endDate,
            user_id: `${user.id}`,
        }
        setResData(newResData);
        console.log(newResData);
        handleResData(newResData);
    }

    return(
        
        <div className="schedule">
            <div className="dates">
                <div className="date-picker">
                    <p>Start Date:</p>
                    <DatePicker
                        selected={startDate}
                        selectsStart
                        startDate={startDate}
                        endDate={endDate} 
                        onChange={date => setStartDate(date)}
                    />
                </div>
                <div className="date-picker">
                <p>End Date:</p>
                    <DatePicker
                        selected={endDate}
                        selectsEnd
                        startDate={startDate}
                        endDate={endDate}
                        minDate={startDate}
                        onChange={date => setEndDate(date)}
                    />
                </div>
            </div>
            <h5 onClick={renderResData}><FaCalendarAlt /> Add to Itinerary</h5>
   </div>
        
    )
}

export default RangeDatePicker;