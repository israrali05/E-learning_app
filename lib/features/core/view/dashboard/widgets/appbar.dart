import 'package:flutter/material.dart';

import '../../../../../repository/authentication_repository/authentication_repository.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSize{
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // -- AppBar Text And Icon
      leading: const Icon(
        Icons.menu,
        size: 30,
        color: Colors.black,
      ),
      title: Text(
        'E-Learning',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        // -- User Profile
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(20)),
          child: IconButton(
            onPressed: () {
              AuthenticationRepository.instance.logout();
            },
            icon: const Icon(
              Icons.person,
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
