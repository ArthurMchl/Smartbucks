


<<<<<<< HEAD


    document.querySelector('.input-price').style.backgroundImage = "none";
    const inputPrice = document.querySelector('.input-price')
    const buttonValidate = document.getElementById('button-validate');
    const addTxtPriceReduction = document.getElementById("price-advice");
    let priceReduction = null

    voucher_input.addEventListener("change", (event) => {

    // recuperer la valeur du prix pour effacer si une value 'Bon' existe
    inputPrice.value = "";
    const date = document.getElementById('end_date').value
    const days = Math.ceil((new Date(date) - new Date()) / (60 * 60 * 24 * 1000));
    let coef_vouchers = 0;
    let coef_days = 0;

      if(vc <= 100) {
        coef_vouchers = 0.006 * vc + 0.35;
      } else {
        coef_vouchers = 0.95;
      }
=======
const formNewVoucher = document.getElementById('new_voucher');

if (formNewVoucher) {

  const voucher_input = document.getElementById('voucher_value');
  const vc = parseInt(document.getElementById('voucher_count').dataset.vc);

  voucher_input.addEventListener("blur", (event) => {
    const date = document.getElementById('voucher_end_date').value
    const days = Math.ceil((new Date(date) - new Date()) / (60 * 60 * 24 * 1000));
    let coef_vouchers = 0
    let coef_days = 0
    if(vc <= 100) {
      coef_vouchers = 0.006 * vc + 0.35;
    } else {
      coef_vouchers = 0.95;
    }

    if (days <= 90) {
      coef_days = 0.95 - (0.006 * days);
    } else {
      coef_days = 0.35;
    }
>>>>>>> c966407aca573c6216ed3422230e7c694c430346

      if (days <= 90) {
        coef_days = 0.95 - (0.006 * days);
      } else {
        coef_days = 0.35;
      }
    let coef = (coef_vouchers + coef_days) / 2;

    priceReduction = (parseInt(voucher_input.value) * coef);
    priceReduction = Math.ceil(priceReduction)
    addTxtPriceReduction.innerHTML = `Prix de vente conseillé : <span class="weight-font">${Math.ceil(priceReduction)} €</span>`;
    })

   inputPrice.addEventListener("change", (event) => {

      let alertPrice = document.getElementById("price-alert")

      if(parseInt(inputPrice.value) > parseInt(voucher_input.value)  ) {

        scssStyle(event, buttonValidate, "#EA2027", "#7f8c8d", true)

        alertPrice.innerHTML = "Le prix indiqué est supérieur à la valuer du bon";
        alertPrice.style.color = "#EA2027"

      } else if (parseInt(priceReduction) > parseInt(inputPrice.value))  {

        scssStyle(event, buttonValidate, "#C4E538", "black", false)
        alertPrice.innerHTML = "";

      } else if(parseInt(priceReduction) === parseInt(inputPrice.value)) {

        scssStyle(event, buttonValidate, "#006266", "black", false)
        alertPrice.innerHTML = "";

      } else if(parseInt(inputPrice.value) === parseInt(voucher_input.value)) {

        scssStyle(event, buttonValidate, "#F79F1F", "black", false)
        alertPrice.innerHTML = "";

      } else if(parseInt(priceReduction) < parseInt(inputPrice.value) && parseInt(inputPrice.value) < parseInt(voucher_input.value)) {

        scssStyle(event, buttonValidate, "#FFC312", "black", false)
        alertPrice.innerHTML = ""

      }
    });

   let scssStyle = (event, buttonValidate, colorBoder, colorBack, validation) => {
        event.currentTarget.style.borderColor = colorBoder;
        buttonValidate.style.backgroundColor = colorBack;
        buttonValidate.disabled = validation;
  }
}







