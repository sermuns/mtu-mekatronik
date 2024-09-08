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

function getRowOfCurrentWeek() {
  const tbody = document.querySelector("tbody");
  const currentWeek = getDateWeek(new Date());

  for (const row of tbody.children) {
    // find week of row
    const week = parseInt(row.children[WEEK_COLUMN_INDEX].textContent.trim());

    // if week is current week
    if (week == currentWeek) {
      return row;
    }
  }
}

function highlightRow(row) {
  row.classList.add("current-week");
}

// extract <a> from last <td> child of row, put in place of #current-moment
function setCurrentMoment(row) {
  const currentMoment = document.querySelector("#current-moment");
  const lastTd = row.children[row.children.length - 1];
  const link = lastTd.querySelector("a");

  currentMoment.innerHTML = link.outerHTML;
}

// MAIN CODE
window.onload = () => {
  const thisWeekRow = getRowOfCurrentWeek();
  highlightRow(thisWeekRow);
  setCurrentMoment(thisWeekRow);
}
