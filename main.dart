import 'package:flutter/material.dart';

void main() {
  runApp(GestorDeMedicamentosApp());
}

class GestorDeMedicamentosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestor de Medicamentos',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/': (context) => ListaMedicamentosScreen(),
        '/add': (context) => AdicionarMedicamentoScreen(),
        '/consult': (context) => ConsultarMedicamentosScreen(),
      },
    );
  }
}

// Tela de Login
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  bool _recuperarSenha = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA3D9A5),
      body: Stack(
        children: [
          Positioned(
            top: 80,  // Ajustei o valor para afastar a imagem do topo
            left: 0,
            right: 0,
            child: FadeTransition(
              opacity: _animation,
              child: Image.asset(
                'assets/icon/app_icon.png',
                width: 120,
                height: 120,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextField(
                      controller: _nomeController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Nome de Usuário',
                        labelStyle: TextStyle(color: Colors.grey[600]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        floatingLabelBehavior: FloatingLabelBehavior.never, // Evita que a label suba
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextField(
                      controller: _senhaController,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: Colors.grey[600]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        floatingLabelBehavior: FloatingLabelBehavior.never, // Evita que a label suba
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _recuperarSenha,
                        onChanged: (bool? value) {
                          setState(() {
                            _recuperarSenha = value!;
                          });
                        },
                      ),
                      Text(
                        'Recuperar Senha',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      String nomeUsuario = _nomeController.text; // Nome do usuário
                      if (nomeUsuario.isNotEmpty) {
                        // Passa o nome do usuário como argumento para a tela principal
                        Navigator.pushReplacementNamed(context, '/', arguments: nomeUsuario);
                      } else {
                        // Caso o campo de nome de usuário esteja vazio, você pode mostrar um erro
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Por favor, insira um nome de usuário.')) 
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Color(0xFFA3D9A5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    ),
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

// Tela principal "Início"
class ListaMedicamentosScreen extends StatefulWidget {
  @override
  _ListaMedicamentosScreenState createState() => _ListaMedicamentosScreenState();
}

class _ListaMedicamentosScreenState extends State<ListaMedicamentosScreen> {
  List<Map<String, String>> medicamentos = [];
  late String nomeUsuario;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    nomeUsuario = ModalRoute.of(context)?.settings.arguments as String;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Início'),
        backgroundColor: Color(0xFFA3D9A5), // Cor verde
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(nomeUsuario),
              accountEmail: Text(''),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 50),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFA3D9A5),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Conta'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Conta'),
                      content: Text('Aqui você pode gerenciar as informações da sua conta.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Fechar'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Cadastrar'),
              onTap: () {
                Navigator.pushNamed(context, '/add');
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Consultar'),
              onTap: () {
                Navigator.pushNamed(context, '/consult', arguments: medicamentos);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Dúvidas'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Dúvidas'),
                      content: Text('Entre em contato com o suporte para dúvidas.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Fechar'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/add').then((medicamento) {
                      if (medicamento != null) {
                        setState(() {
                          medicamentos.add(medicamento as Map<String, String>);
                        });
                      }
                    });
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFA3D9A5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add, color: Colors.white, size: 50),
                          SizedBox(height: 10),
                          Text('Cadastrar', style: TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/consult', arguments: medicamentos);
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFA3D9A5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search, color: Colors.white, size: 50),
                          SizedBox(height: 10),
                          Text('Consultar', style: TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Tela de Cadastrar Medicamento
class AdicionarMedicamentoScreen extends StatefulWidget {
  @override
  _AdicionarMedicamentoScreenState createState() =>
      _AdicionarMedicamentoScreenState();
}

class _AdicionarMedicamentoScreenState extends State<AdicionarMedicamentoScreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _doseController = TextEditingController();
  TimeOfDay? _hora;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      setState(() {
        _hora = selectedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastrar Medicamento')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome do Medicamento',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _doseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Dose',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectTime(context),
              child: Text(
                _hora == null ? 'Selecione o Horário' : 'Horário: ${_hora!.format(context)}',
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFA3D9A5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final medicamento = {
                  'nome': _nomeController.text,
                  'dose': _doseController.text,
                  'horario': _hora?.format(context) ?? 'Horário não selecionado',
                };
                Navigator.pop(context, medicamento);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFA3D9A5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              ),
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}

// Tela de Consultar Medicamentos
class ConsultarMedicamentosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>>? medicamentos = ModalRoute.of(context)?.settings.arguments as List<Map<String, String>>?;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Consultar Medicamentos'),
        backgroundColor: Color(0xFFA3D9A5),
      ),
      body: medicamentos == null || medicamentos.isEmpty
          ? Center(child: Text('Nenhum medicamento foi cadastrado ainda!'))
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: medicamentos.length,
                itemBuilder: (context, index) {
                  final medicamento = medicamentos[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    color: Color(0xFFA3D9A5), // Cor verde para o card
                    child: ListTile(
                      title: Text(medicamento['nome']!),
                      subtitle: Text('Dose: ${medicamento['dose']} \nHorário: ${medicamento['horario']}'),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
