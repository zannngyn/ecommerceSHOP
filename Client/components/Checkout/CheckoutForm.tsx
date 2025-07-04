import React, { useEffect, useRef, useState } from "react";
import {
  PaymentElement,
  useStripe,
  useElements
} from "@stripe/react-stripe-js";
import { useRouter, useParams } from "next/navigation";
import { cardCheckoutHandler } from "@/app/api/paymentSystem";
export default function CheckoutForm({ orderID, userID }: { orderID: number, userID: number }) {
  const stripe = useStripe();
  const elements = useElements();
  const router = useRouter();
  const orderid = useRef(0);
  const params = useParams<{ productID: string, colorID: string, sizeID: string }>()
  const orderCreationError = useRef(false);
  const [message, setMessage] = useState<null | string>(null);
  const [isLoading, setIsLoading] = useState(false);
  async function createOrder(paymentid: string, paymentStatus: string) {
    setIsLoading(true);
    const createOrder = await cardCheckoutHandler({ userid: userID, productid: params.productID, colorid: params.colorID, sizeid: params.sizeID, paymentid, paymentStatus })
    switch (createOrder.status) {
      case 200:
        orderid.current = createOrder.data.orderid;
        setIsLoading(false);
        router.push(`/order-confirmation/${createOrder.data.orderid}`)
        break;
      default:
        orderCreationError.current = true;
        setIsLoading(false);
        break;
    }
  }
  useEffect(() => {
    if (!stripe) {
      return;
    }

    const clientSecret = new URLSearchParams(window.location.search).get(
      "payment_intent_client_secret"
    );

    if (!clientSecret) {
      return;
    }
    stripe.retrievePaymentIntent(clientSecret).then(async ({ paymentIntent }) => {
      if (paymentIntent != undefined)
        switch (paymentIntent.status) {
          case "succeeded":
            setMessage("Thanh toán thành công!");
            break;
          case "processing":
            setMessage("Thanh toán đang được xử lý.");
            break;
          case "requires_payment_method":
            setMessage("Thanh toán không thành công, vui lòng thử lại.");
            break;
          default:
            setMessage("Đã có lỗi xảy ra.");
            break;
        }
    });
  }, [stripe]);

  // const handleSubmit = async (e:React.FormEvent<HTMLFormElement>) => {
  //   e.preventDefault();
  //   if (!stripe || !elements) {
  //     // Stripe.js hasn't yet loaded.
  //     // Make sure to disable form submission until Stripe.js has loaded.
  //     return;
  //   }
  //   setIsLoading(true);

  //   const { error } = await stripe.confirmPayment({
  //     elements,
  //     confirmParams: {
  //       // Make sure to change this to your payment completion page
  //       return_url: `${process.env.NEXT_PUBLIC_DOMAIN}/order-confirmation/${orderID}`,

  //     },
  //   })
  //   // This point will only be reached if there is an immediate error when
  //   // confirming the payment. Otherwise, your customer will be redirected to
  //   // your `return_url`. For some payment methods like iDEAL, your customer will
  //   // be redirected to an intermediate site first to authorize the payment, then
  //   // redirected to the `return_url`.
  //   if (error.type === "card_error" || error.type === "validation_error") {
  //     error.message && setMessage(error.message);
  //   } else {
  //     setMessage("An unexpected error occurred.");
  //   }

  //   setIsLoading(false);
  // };
  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (!stripe || !elements) {
      // Stripe.js hasn't yet loaded.
      // Make sure to disable form submission until Stripe.js has loaded.
      return;
    }
    setIsLoading(true);

    const { error, paymentIntent } = await stripe.confirmPayment({
      elements,
      confirmParams: {
        // Remove the return_url
      },
      redirect: 'if_required', // This ensures that if a redirect is needed, it will handle it
    });

    if (error) {
      if (error.type === "card_error" || error.type === "validation_error") {
        error.message && setMessage(error.message);
      } else {
        setMessage("Đã có lỗi xảy ra.");
      }
      setIsLoading(false);
      return;
    }

    if (paymentIntent) {
      switch (paymentIntent.status) {
        case "succeeded":
          setMessage("Thanh toán thành công!");
          await createOrder(paymentIntent.id, 'Succeeded');
          break;
        case "processing":
          setMessage("Thanh toán đang được xử lý.");
          await createOrder(paymentIntent.id, 'Processing');
          break;
        case "requires_payment_method":
          setMessage("Thanh toán không thành công, vui lòng thử lại.");

          break;
        default:
          setMessage("Đã có lỗi xảy ra.");
          break;
      }
    }

    setIsLoading(false);
  };

  const paymentElementOptions: { layout: 'tabs' } = {
    layout: "tabs"
  }

  return (
    <form id="payment-form" onSubmit={handleSubmit}>

      <PaymentElement id="payment-element" options={paymentElementOptions} />
      <button disabled={isLoading || !stripe || !elements} type="submit" id="submit" className="flex mt-5 w-full items-center justify-center rounded-lg bg-primary-700 px-5 py-2.5 text-sm font-medium text-white hover:bg-primary-800 focus:outline-none focus:ring-4  focus:ring-primary-300 dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">
        <span>
          {isLoading ? <div className="relative"><div className=''>
            <div className='drop-shadow-custom-xl rounded-xl w-[120px] mx-auto'>
              <div className="border-gray-300 my-auto mx-auto h-8 w-8 animate-spin rounded-full border-8 border-t-blue-600" />
            </div>

          </div></div> : "Thanh toán ngay"}
        </span>
      </button>
      {/* Hiển thị thông báo lỗi hoặc thành công */}
      {message && <div id="payment-message"><p className="text-red-500 ml-16 font-bold">{message}</p></div>}
    </form>
  );
}