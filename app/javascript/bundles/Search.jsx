import React, { useState } from "react";

const Search = () => {
  const [searchTerm, setSearchTerm] = useState("");

  const handleSearch = event => setSearchTerm(event.target.value);

  const submitSearch = e => {
    e.preventDefault();
    Turbolinks.visit(`/foods?category=${searchTerm}`);
  };

  return (
    <div className="searchDiv">
      <form onSubmit={submitSearch}>
        <input
          className="searchInput"
          onChange={handleSearch}
          placeholder="Search food altenatives"
        />
        <button id="searchSubmit" type="submit">
          🔍
          {/* /* <i class="fas fa-search " onClick={submitSearch}></i> */}
        </button>
      </form>
    </div>
  );
};

export default () => <Search />;
