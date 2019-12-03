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

    let coef = (coef_vouchers + coef_days) / 2;
    let priceReduction = (parseInt(voucher_input.value) * coef);

    let addTxtPriceReduction = document.getElementById("price-advice");
    addTxtPriceReduction.innerHTML = `Prix de vente conseillé : <span class="weight-font">${Math.ceil(priceReduction)} €</span>`;
  });
}

  // const displayReductionPrice(priceReduction) = {



  // }


  // def discount_rate(brand_id, end_date)
  //   vouchers_count = Voucher.where(brand_id: brand_id)
  //   if vouchers_count.count <= 100
  //     coef_vouchers = 0.006 * vouchers_count.count + 0.35
  //   else
  //     coef_vouchers = 0.95
  //   end
  //   days_remaining = end_date.to_date - Date.today
  //   if days_remaining <= 90
  //     coef_days = 0.95 - (0.006 * days_remaining)
  //   else
  //     coef_days = 0.35
  //   end
  //   coef = (coef_vouchers + coef_days) / 2
  //   price = 50
  //   return (price * coef).round
  // end
