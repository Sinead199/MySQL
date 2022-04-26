USE personaltrainer;

SELECT
        InvoiceId,
        Description,
        Price,
        Quantity,
        ServiceDate,
        (Price * Quantity) AS LineItemTotal
FROM InvoiceLineItem
WHERE (Price * Quantity) BETWEEN '15' AND '25';