import flatpickr from "flatpickr";

const initFlatPickr = () => {
  flatpickr("#post_date", { appearance: 'bottom', minDate: "today", dateFormat: "d.m.Y" });
}
export {initFlatPickr}
