import 'package:flutter/material.dart';
import 'package:portfolio_brl_trainees/data/brl_members.dart';
import 'package:portfolio_brl_trainees/data/external_collaborator.dart';
import 'package:portfolio_brl_trainees/data/trainee_list.dart';
import 'package:portfolio_brl_trainees/widgets/member_grid.dart';

class ProfileScreenPage extends StatelessWidget {
  const ProfileScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            stops: const [0.2, 0.5, 0.7, 1],
            colors: [
              Colors.deepPurple.shade100,
              Colors.deepPurple.shade50,
              Colors.white,
              Colors.white
            ],
          ),
        ),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              /*----------------------------------------------------BRL Members CARDS----------------------------------------------------------------------*/
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: Text(
                      "BRL Members",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'mont',
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple.shade400,
                      ),
                    ),
                  ),
                ),
              ),
              MemberGrid(list: brlMembers),
              /*----------------------------------------------------Trainee CARDS----------------------------------------------------------------------*/
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: Text(
                      "BRL Trainees",
                      style: TextStyle(
                        color: Colors.deepPurple.shade400,
                        fontSize: 25,
                        fontFamily: 'mont',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              MemberGrid(list: trainees),
              /*----------------------------------------------------External Collaborators CARDS----------------------------------------------------------------------*/
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: Text(
                      "External Collaborators",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'mont',
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple.shade400,
                      ),
                    ),
                  ),
                ),
              ),
              MemberGrid(list: externalColab),
            ],
          ),
        ),
      ),
    );
  }
}
