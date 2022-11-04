const date = new Date();

const renderCalendar = ()=>{

    console.log(date);


const monthDays = document.querySelector(".days");

date.setDate(1);

//last day for each month

const prevLastDay = new Date(date.getFullYear(), date.getMonth(), 0).getDate();

const lastDay = new Date(date.getFullYear(), date.getMonth()+1, 0).getDate();

const firstDayIndex = date.getDay();

const lastDayIndex = new Date(date.getFullYear(), date.getMonth()+1, 0).getDay();

const nextDays = 7 - lastDayIndex - 1;

const months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
];

// h1.innerHTML = months[4];

// console.log(h1);

// document.querySelector(" .datess h1 ").innerHTML
// = months[date.getMonth()];

// document.querySelector(".datess p").innerHTML = date.toDateString();


//for month/////
var monthss = document.getElementById("titlee");

var currentMonth = months[date.getMonth()];
console.log(currentMonth);

monthss.innerHTML = currentMonth;
/////////

document.querySelector('.date p').innerHTML = new Date().toDateString();

///Days

let days = "";

//Previous days

for( let x= firstDayIndex; x > 0; x--)
{
    days += `<div class="prev-date">${prevLastDay - x + 1}</div>`
    
}

//current month days
for(let i =1; i<=lastDay; i++)
{
    if( i === new Date().getDate() && date.getMonth() === new Date().getMonth())
    {
        days += `<div class="today">${i}</div>`; 
    }
    else
    {
        days += `<div>${i}</div>`;
    }

    
}

///next month days

for(let j = 1; j <= nextDays; j++)
{
    days += `<div class="next-date">${j}</div>`
    monthDays.innerHTML = days;
}



}




//for erows for next month

document.querySelector('.prev').addEventListener('click', ()=>
{

    date.setMonth(date.getMonth() -1);
    renderCalendar();

})

document.querySelector('.next').addEventListener('click', ()=>
{
    
    date.setMonth(date.getMonth() +1);
    renderCalendar();

})


renderCalendar();

// const day = date.getDay();
// const year = date.getUTCFullYear();


// console.log(date);

// console.log(day);
// console.log(year);

