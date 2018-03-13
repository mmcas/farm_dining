elements = document.querySelectorAll(".edit_button")
if (elements) {

  elements.forEach (function (element) {
    element.addEventListener("click", function( event ) {
      // display the current click count inside the clicked div
      const id = this.dataset.order_id
      document.querySelector(`[data-edit_id="${id}"]`).style.display = 'block';
    }, false)
  });
}
