<!DOCTYPE html>
<html>
<head>
    <title>Payment</title>
    <!-- Include the PayPal JavaScript SDK script tag -->
    <script src="https://www.paypal.com/sdk/js?client-id=AVmERfWodunKVbgl7x-jPDB6pel0lgI-1vEOwgOtO_7loP7nXiXo0JYYRjQ3NeNj2pVbaXeCjoFvFD01"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background: url('https://www.practicalcredit.com/wp-content/uploads/2023/02/co-branded-credit-cards.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: rgba(0, 0, 0, 0.5);
            padding: 30px;
            border-radius: 10px;
            margin-top: 130px;
            text-align: center;
            border: 2px solid #ffffff;
        }
        h2 {
            color: #ffffff;
            font-weight: bold;
        }
        .paypal-button-container {
            margin-top: 50px;
        }
        .payment-button {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            font-size: 1.1em;
            transition: background-color 0.3s ease;
        }
        .payment-button i {
            margin-right: 8px;
        }
        .payment-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Payment Form</h2>
        <div id="paypal-button-container" class="paypal-button-container"></div>
    </div>

    <script>
        paypal.Buttons({
            createOrder: function(data, actions) {
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: '10.00' // Replace with the actual amount
                        }
                    }]
                });
            },
            onApprove: function(data, actions) {
                return actions.order.capture().then(function(details) {
                    alert('Payment successful. Transaction completed by ' + details.payer.name.given_name);
                });
            },
            onError: function(err) {
                console.error('Payment error:', err);
                alert('Payment failed. Please try again.');
            }
        }).render('#paypal-button-container');
    </script>
</body>
</html>
