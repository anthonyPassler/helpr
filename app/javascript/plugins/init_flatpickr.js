import flatpickr from "flatpickr";

const initFlatPickr = () => {
  flatpickr("#post_date", { appearence: 'bottom', minDate: "today", dateFormat: "d.m.Y" });
}
export {initFlatPickr}
