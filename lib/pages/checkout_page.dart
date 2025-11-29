import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/cart_provider.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String paymentMethod = "Pix"; // Método padrão selecionado
  final TextEditingController addressController = TextEditingController();
  final TextEditingController couponController = TextEditingController();

  double discount = 0.0;

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();
    final total = cart.totalPrice - discount;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Finalizar Compra"),
        backgroundColor: const Color(0xFF5A4633),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // =======================
            // ENDEREÇO DE ENTREGA
            // =======================
            const Text(
              "Endereço de Entrega",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: addressController,
              decoration: InputDecoration(
                hintText: "Digite seu endereço completo...",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // =======================
            // MÉTODO DE PAGAMENTO
            // =======================
            const Text(
              "Método de Pagamento",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Column(
              children: [
                paymentTile("Pix"),
                paymentTile("Cartão de Crédito"),
                paymentTile("Boleto Bancário"),
              ],
            ),

            const SizedBox(height: 25),

            // =======================
            // CUPOM DE DESCONTO
            // =======================
            const Text(
              "Cupom de Desconto",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: couponController,
                    decoration: InputDecoration(
                      hintText: "Digite o cupom...",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  ),
                  onPressed: () {
                    setState(() {
                      if (couponController.text.toUpperCase() == "LUZ10") {
                        discount = cart.totalPrice * 0.10; // 10%
                      } else {
                        discount = 0;
                      }
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(discount > 0
                            ? "Cupom aplicado com sucesso!"
                            : "Cupom inválido."),
                      ),
                    );
                  },
                  child: const Text(
                    "Aplicar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // =======================
            // RESUMO DO PEDIDO
            // =======================
            const Text(
              "Resumo do Pedido",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    offset: const Offset(1, 3),
                  )
                ],
              ),
              child: Column(
                children: [
                  summaryRow("Subtotal", cart.totalPrice),
                  summaryRow("Desconto", -discount),
                  const Divider(),
                  summaryRow("Total Final", total, bold: true),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // =======================
            // BOTÃO DE FINALIZAR COMPRA
            // =======================
            ElevatedButton(
              onPressed: () {
                if (addressController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Digite um endereço para continuar!"),
                    ),
                  );
                  return;
                }

                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text("Compra Finalizada!"),
                    content: Text(
                      "Pagamento via $paymentMethod confirmado.\n\n"
                      "Total pago: R\$ ${total.toStringAsFixed(2)}",
                    ),
                    actions: [
                      TextButton(
                        child: const Text("OK"),
                        onPressed: () {
                          cart.clear();
                          Navigator.of(context).pop(); // fecha popup
                          Navigator.of(context).pop(); // volta checkout
                          Navigator.of(context).pop(); // volta carrinho
                        },
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                minimumSize: const Size(double.infinity, 55),
              ),
              child: const Text(
                "Finalizar Compra",
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ===========================
  // Widgets auxiliares
  // ===========================

  Widget paymentTile(String method) {
    return RadioListTile(
      title: Text(method),
      activeColor: Colors.brown,
      value: method,
      groupValue: paymentMethod,
      onChanged: (value) {
        setState(() {
          paymentMethod = value.toString();
        });
      },
    );
  }

  Widget summaryRow(String title, double value, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: bold ? 18 : 16, fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
          Text(
            "R\$ ${value.toStringAsFixed(2)}",
            style: TextStyle(fontSize: bold ? 18 : 16, fontWeight: bold ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
