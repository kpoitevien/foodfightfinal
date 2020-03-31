import React, { useEffect } from "react";

const Tasks = props => {
  return (
    <div>
      <h1>I am the Tasks Component!</h1>
      {props.tasks.map(task => {
        return (
          <div className="border" key={task.id}>
            {task.completed === true ? (
              <div>
                <strike>{task.description}</strike>
              </div>
            ) : (
              <div>{task.description}</div>
            )}
            {task.completed === true ? <div>True</div> : <div>False</div>}
            {task.due_date ? <div>{task.due_date}</div> : <div>Not due</div>}
          </div>
        );
      })}
    </div>
  );
};

export default Tasks;
