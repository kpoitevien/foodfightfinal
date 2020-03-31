import React from "react";
import { isSameMonth, isSameDay, format } from "date-fns";

const Cell = props => {
  return (
    <div
      className={`calendar-col cell ${
        !isSameMonth(props.day, props.currentMonth)
          ? "disabled"
          : isSameDay(props.day, props.currentDate)
          ? "current"
          : ""
      }`}
      onClick={e => {
        props.handleDateClick(props.day);
      }}
    >
      <div className="calendar-events">
        {props.dailyTasks.map(task => {
          return (
            <div key={task.id} className="calendar-event">
              {task.completed ? <s>{task.description}</s> : task.description}
            </div>
          );
        })}
      </div>
      <span className="number">{format(props.day, "d")}</span>
    </div>
  );
};

export default Cell;