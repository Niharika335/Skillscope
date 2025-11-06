document.addEventListener("DOMContentLoaded", function () {

  /* === Sidebar Toggle (for mobile view) === */
  const toggleBtn = document.querySelector(".menu-toggle");
  const sidebar = document.querySelector(".sidebar");

  if (toggleBtn && sidebar) {
    toggleBtn.addEventListener("click", () => {
      sidebar.classList.toggle("active");
    });
  }

  /* === Search Filter Functionality === */
  const form = document.getElementById("searchForm");
  const input = document.getElementById("searchInput");

  if (form && input) {
    form.addEventListener("submit", function (e) {
      e.preventDefault();

      const query = input.value.toLowerCase().trim();
      const cards = document.querySelectorAll(".card, .event-card");

      let found = false;

      cards.forEach(card => {
        const text = card.innerText.toLowerCase();
        if (text.includes(query)) {
          card.style.display = "block";
          found = true;
        } else {
          card.style.display = "none";
        }
      });

      // Optional: Show message if no results found
      if (!found && cards.length > 0) {
        alert("No matching results found.");
      }
    });
  }

});
