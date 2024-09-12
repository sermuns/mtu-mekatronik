// Optimized function to calculate the current week
function getDateWeek(date) {
  const currentDate = typeof date === "object" ? date : new Date();
  const januaryFirst = new Date(currentDate.getFullYear(), 0, 1);
  const daysToNextMonday =
    januaryFirst.getDay() === 1 ? 0 : (7 - januaryFirst.getDay()) % 7;
  const nextMonday = new Date(
    currentDate.getFullYear(),
    0,
    januaryFirst.getDate() + daysToNextMonday,
  );

  return currentDate < nextMonday
    ? 52
    : currentDate > nextMonday
      ? Math.ceil((currentDate - nextMonday) / (24 * 3600 * 1000) / 7)
      : 1;
}

const WEEK_COLUMN_INDEX = 0;

// Cache DOM lookup for performance
function getRowOfCurrentWeek() {
  const tbody = document.querySelector("tbody");
  const currentWeek = getDateWeek(new Date());
  const rows = Array.from(tbody.children);

  return rows.find((row) => {
    const week = parseInt(row.children[WEEK_COLUMN_INDEX].textContent.trim());
    return week === currentWeek;
  });
}

// Optimized highlighting of row using requestAnimationFrame
function highlightRow(row) {
  if (row) {
    requestAnimationFrame(() => {
      row.classList.add("current-week");
    });
  }
}

// Set current moment with requestAnimationFrame for smoother UI updates
function setCurrentMoment(row) {
  if (row) {
    requestAnimationFrame(() => {
      const currentMoment = document.querySelector("#current-moment");
      const lastTd = row.children[row.children.length - 1];
      const link = lastTd.querySelector("a");
      currentMoment.innerHTML = link.outerHTML;
    });
  }
}

// MAIN CODE
window.onload = () => {
  const thisWeekRow = getRowOfCurrentWeek();
  highlightRow(thisWeekRow);
  setCurrentMoment(thisWeekRow);
};
