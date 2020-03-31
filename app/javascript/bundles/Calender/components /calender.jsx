import React, { Component } from "react";
import {
  addMonths,
  subMonths,
  startOfMonth,
  endOfMonth,
  startOfWeek,
  endOfWeek,
  format
} from "date-fns";
import Header from "./Header";
import Days from "./Days";
import Cells from "./Cells";
import axios from "axios";
import CalendarModal from "./CalendarModal";

const token = document
  .querySelector('meta[name="csrf-token"]')
  .getAttribute("content");

const csrfHeaders = {
  "X-Requested-With": "XMLHttpRequest",
  "X-CSRF-TOKEN": token
};

export default class Calendar extends Component {
  state = {
    currentMonth: new Date(),
    currentDate: new Date(),
    tasks: {},
    task: { description: "", due_date: "", errors: [] },
    selectedDate: new Date(),
    modalOpen: false
  };

  fetchTasks = currentMonth => {
    const monthStart = startOfMonth(currentMonth);
    const monthEnd = endOfMonth(monthStart);
    const startDate = format(startOfWeek(monthStart), "yyyy-MM-dd");
    const endDate = format(endOfWeek(monthEnd), "yyyy-MM-dd");
    axios
      .get(`/calendar/index.json?start_date=${startDate}&end_date=${endDate}`)
      .then(response => this.setState({ tasks: response.data, currentMonth }));
  };

  handleDescriptionChange = event => {
    let { task } = this.state;
    task.description = event.target.value;
    this.setState({ task });
  };

  handleFormSubmit = event => {
    event.preventDefault();
    let { task, tasks } = this.state;
    const selectedDate = format(this.state.selectedDate, "yyyy-MM-dd");
    task.due_date = selectedDate;
    axios
      .post("/tasks.json", { task }, { headers: csrfHeaders })
      .then(response => {
        if (tasks[selectedDate]) {
          tasks[selectedDate].push(response.data);
        } else {
          tasks[selectedDate] = [response.data];
        }
        this.setState({
          tasks,
          task: { description: "", due_date: "", errors: [] }
        });
      })
      .catch(error => {
        if (error.response.status === 422) {
          task.errors = error.response.data.errors;
          this.setState({ task });
        }
      });
  };

  nextMonth = () => {
    const currentMonth = addMonths(this.state.currentMonth, 1);
    this.fetchTasks(currentMonth);
  };

  prevMonth = () => {
    const currentMonth = subMonths(this.state.currentMonth, 1);
    this.fetchTasks(currentMonth);
  };

  handleDateClick = day => {
    this.setState({ selectedDate: day, modalOpen: true });
  };

  closeModal = () => {
    this.setState({
      modalOpen: false,
      task: { description: "", due_date: "", errors: [] }
    });
  };

  render() {
    const {
      currentMonth,
      currentDate,
      tasks,
      task,
      modalOpen,
      selectedDate
    } = this.state;

    return (
      <div className="calendar">
        <Header
          currentMonth={currentMonth}
          prevMonth={this.prevMonth}
          nextMonth={this.nextMonth}
        />
        <Days />
        <Cells
          currentMonth={currentMonth}
          currentDate={currentDate}
          tasks={tasks}
          handleDateClick={this.handleDateClick}
        />
        <CalendarModal
          modalOpen={modalOpen}
          selectedDate={selectedDate}
          closeModal={this.closeModal}
          dailyTasks={tasks[format(selectedDate, "yyyy-MM-dd")] || []}
          task={task}
          handleDescriptionChange={this.handleDescriptionChange}
          handleFormSubmit={this.handleFormSubmit}
        />
      </div>
    );
  }

  componentDidMount() {
    const { currentMonth } = this.state;
    this.fetchTasks(currentMonth);
  }
}