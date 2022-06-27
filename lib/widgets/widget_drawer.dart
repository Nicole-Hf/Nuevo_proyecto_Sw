import 'package:app_conductor/pages/pasajero/home_page.dart';
import 'package:app_conductor/pages/pasajero/profile_widget.dart';
import 'package:app_conductor/variables.dart';
import 'package:app_conductor/widgets/register_widget.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20,),
          UserAccountsDrawerHeader(
            accountName: Text(name, style: const TextStyle(fontSize: 13),),
            accountEmail: const Text(''),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('U', style: TextStyle(fontSize: 40.0),),
            ),
          ),
          ListTile(
            title: const Text('Perfil',
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
            leading: const Icon(
              Icons.edit,
              size: 20.0,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const EditProfileWidget()));
            },
          ),
          ListTile(
            title: const Text('Mapa',
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
            leading: const Icon(
              Icons.map,
              size: 20.0,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MyHomePage()
              ));
            },
          ),
          ListTile(
            title: const Text('Mis viajes',
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
            leading: const Icon(
              Icons.cabin,
              size: 20.0,
              color: Colors.grey,
            ),
            onTap: () {
              debugPrint('Button clicked');
            },
          ),
          ListTile(
            title: const Text('Configuraciones',
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
            leading: const Icon(
              Icons.adjust_sharp,
              size: 20.0,
              color: Colors.grey,
            ),
            onTap: () {
              debugPrint('Button clicked');
            },
          ),
          ListTile(
            title: const Text('Logout',
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
            leading: const Icon(
              Icons.logout,
              size: 20.0,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const CreateAccountWidget()), 
                (route) => false
              );
            },
          ),           
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50, bottom: 50),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),                            
                        )
                      )
                    ),
                    onPressed: () {},
                    child: const Text('Modo Conductor', style: TextStyle(fontSize: 20)),
                  ),
                )
              ),
            )
          )
        ],
      ),
    );
  }
}