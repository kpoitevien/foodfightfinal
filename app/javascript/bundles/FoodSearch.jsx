import React, { useState } from "react";

const Search = () => {
  const [searchTerm, setSearchTerm] = useState("");

  const handleSearch = event => setSearchTerm(event.target.value);

  const submitSearch = e => {
    e.preventDefault();
    Turbolinks.visit(`/foods?category=${searchTerm}`);
  };

  return (
    <div className="secondSearchDiv">
      <form onSubmit={submitSearch}>
        <input
          className="secondSearchInput"
          onChange={handleSearch}
          placeholder="Search food altenatives"
        />

        <i class="fas fa-search" type="submit"></i>
        {/* /* <i class="fas fa-search " onClick={submitSearch}></i> */}
      </form>
    </div>
  );
};

export default () => <Search />;
