import { Calendar, dateFnsLocalizer } from "react-big-calendar";
import format from "date-fns/format";
import parse from "date-fns/parse";
import startOfWeek from "date-fns/startOfWeek";
import getDay from "date-fns/getDay";
import "react-big-calendar/lib/css/react-big-calendar.css";
import Bg from "../images/sea-2361247__340.jpg"

const locales = {
    "en-US": require("date-fns/locale/en-US") 
  }
  const localizer = dateFnsLocalizer({
    format,
    parse,
    startOfWeek,
    getDay,
    locales
  })

function CalendarPage({reservations}) 

{
    return (
        <>
            <img className="calendar-bg" src={Bg} alt="bg" />
            <Calendar localizer={localizer} events={reservations} startAccessor="start" endAccessor="end" style={{height: 650, margin: "50px"}} />
        </>
    )
}

export default CalendarPage