<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>캘린더 페이지</title>
    <style>
        /* Add your CSS styles here */
        .calendar-container {
            max-width: 600px;
            margin: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .pagination a {
            color: black;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color .3s;
        }

        .pagination a:hover {
            background-color: #ddd;
        }

        .active {
            background-color: #4CAF50;
            color: white;
        }
        .bold {
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="calendar-container">
     <a href="ViewMatch.jsp"><img src="핵심images/FUTSAL062-removebg-preview.png" alt="" ></a>
        <h1> ⚽ 원하시는 날짜를 선택해주세요 ⚽</h1>

        <div class="pagination" id="pagination"></div>

        <table id="calendar-table">
            <thead>
                <tr>
                    <th>Sun</th>
                    <th>Mon</th>
                    <th>Tue</th>
                    <th>Wed</th>
                    <th>Thu</th>
                    <th>Fri</th>
                    <th>Sat</th>
                </tr>
            </thead>
            <tbody id="calendar-body"></tbody>
            
        </table>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const calendarContainer = document.querySelector(".calendar-container");
            const calendarBody = document.getElementById("calendar-body");
            const paginationContainer = document.getElementById("pagination");

            let currentMonth = new Date().getMonth() + 1; // Current month (1-12)
            let currentYear = new Date().getFullYear();

            function generateCalendar(month, year) {
                calendarBody.innerHTML = "";

                const firstDay = new Date(year, month - 1, 1).getDay();
                const daysInMonth = new Date(year, month, 0).getDate();

                let dayCount = 1;

                for (let i = 0; i < 5; i++) {
                    const row = document.createElement("tr");

                    for (let j = 0; j < 7; j++) {
                        const cell = document.createElement("td");
                        const dayLink = document.createElement("a");

                        if (i === 0 && j < firstDay) {
                            // Empty cells before the first day
                            dayLink.textContent = "";
                        } else if (dayCount <= daysInMonth) {
                            // Fill in the days
                            dayLink.textContent = dayCount;
                            dayLink.href = `Matching.jsp#${year}.${month}.${dayCount}`;
                            if (month === 11 && dayCount >= 19 && dayCount <= 30) {
                                dayLink.classList.add("bold");
                            }
                            dayCount++;
                        }
                       

                        cell.appendChild(dayLink);
                        row.appendChild(cell);
                    }

                    calendarBody.appendChild(row);
                }
            }

            function displayPagination() {
                paginationContainer.innerHTML = "";

                for (let i = 1; i <= 12; i++) {
                    const pageLink = document.createElement("a");
                    pageLink.href = "#";
                    pageLink.textContent = i;

                    pageLink.addEventListener("click", function () {
                        currentMonth = i;
                        generateCalendar(currentMonth, currentYear);
                        highlightActivePage(i);
                    });

                    paginationContainer.appendChild(pageLink);
                }

                // Highlight the current month initially
                highlightActivePage(currentMonth);
            }

            function highlightActivePage(month) {
                const paginationLinks = document.querySelectorAll(".pagination a");
                paginationLinks.forEach(link => link.classList.remove("active"));

                const activeLink = document.querySelector(`.pagination a:nth-child(${month})`);
                if (activeLink) {
                    activeLink.classList.add("active");
                }
            }
            
            // Initial display
            generateCalendar(currentMonth, currentYear);
            displayPagination();
            
        });
    </script>

</body>

</html>