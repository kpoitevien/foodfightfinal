import React from "react";
import {
  startOfMonth,
  endOfMonth,
  startOfWeek,
  endOfWeek,
  addDays,
  format
} from "date-fns";
import Cell from "./Cell";

const Cells = props => {
  const monthStart = startOfMonth(props.currentMonth);
  const monthEnd = endOfMonth(monthStart);
  const startDate = startOfWeek(monthStart);
  const endDate = endOfWeek(monthEnd);
  const rows = [];
  let days = [];
  let day = startDate;
  while (day <= endDate) {
    for (let i = 0; i < 7; i++) {
      let dailyTasks = props.tasks[format(day, "yyyy-MM-dd")] || [];
      days.push(
        <Cell key={day} day={day} {...props} dailyTasks={dailyTasks} />
      );
      day = addDays(day, 1);
    }
    rows.push(
      <div className="calendar-row" key={day}>
        {days}
      </div>
    );
    days = [];
  }
  return <div className="body">{rows}</div>;
};

export default Cells;