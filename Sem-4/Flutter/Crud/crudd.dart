import 'package:flutter/material.dart';

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  bool isSearch = false;
  TextEditingController name = TextEditingController();
  List userList = [];
  List searchResult = [];
  TextEditingController search = TextEditingController();
  TextEditingController editText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearch ? Text('Search') : Text('Users'),
        backgroundColor: Colors.indigoAccent,
        actions: [
          IconButton(onPressed: () {
            setState(() {
              isSearch = !isSearch;
            });
          }, icon: isSearch ? Icon(Icons.list) : Icon(Icons.search))],
      ),
      body: !isSearch
          ? Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11)),
                        labelText: 'Name'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          if (name.text.isNotEmpty) {
                            setState(() {
                              userList.add(name.text.toString());
                            });
                            name.clear();
                          }
                        },
                        child: Text('Add')))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${userList[index]}'),
                  trailing: Wrap(
                    children: [
                      IconButton(
                        onPressed: () {
                          editText.text = userList[index];
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              title: Text('Edit'),
                              content: TextFormField(
                                controller: editText,
                                decoration: InputDecoration(
                                    labelText: 'Name',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12)
                                    )
                                ),
                              ),
                              actions: [
                                ElevatedButton(onPressed: (){
                                  if(editText.text.isNotEmpty){
                                    setState(() {
                                      userList[index] = editText.text.toString();
                                    });
                                  }
                                  Navigator.pop(context);
                                }, child: Text('Edit')
                                ),
                                ElevatedButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text('Cancel')
                                ),
                              ],
                            );
                          },
                          );
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              title: Text('Delete'),
                              content: Text('Are you sure want to delete?'),
                              actions: [
                                ElevatedButton(onPressed: (){
                                  setState(() {
                                    userList.removeAt(index);
                                  });
                                  Navigator.pop(context);
                                }, child: Text('Yes')),
                                ElevatedButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text('No')),
                              ],
                            );
                          },
                          );
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
              itemCount: userList.length,
            ),
          )
        ],
      )
          : Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: search,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11)),
                        labelText: 'Search'),
                    onChanged: (value) {
                      searchResult.clear();
                      for(var name in userList){
                        if(name.toString().toLowerCase().contains(value.toString().toLowerCase())){
                          setState(() {
                            searchResult.add(name);
                          });
                        }
                        if(value.isEmpty){
                          setState(() {
                            searchResult.clear();
                          });
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${searchResult[index]}'),
                  leading: Text('${index + 1}'),
                  trailing: Wrap(
                    children: [
                      IconButton(
                        onPressed: () {
                          editText.text = searchResult[index];
                          print(userList.indexOf(editText.text));
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              title: Text('Edit'),
                              content: TextFormField(
                                controller: editText,
                                decoration: InputDecoration(
                                    labelText: 'Name',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12)
                                    )
                                ),
                              ),
                              actions: [
                                ElevatedButton(onPressed: (){
                                  if(editText.text.isNotEmpty){
                                    setState(() {
                                      userList[userList.indexOf(searchResult[index])] = editText.text.toString();
                                      searchResult[index] = editText.text.toString();
                                    });
                                  }
                                  Navigator.pop(context);
                                }, child: Text('Edit')
                                ),
                                ElevatedButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text('Cancel')
                                ),
                              ],
                            );
                          },
                          );
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              title: Text('Delete'),
                              content: Text('Are you sure want to delete?'),
                              actions: [
                                ElevatedButton(onPressed: (){
                                  setState(() {
                                    print(userList.indexOf(searchResult[index]));
                                    userList.removeAt(userList.indexOf(searchResult[index]));
                                    searchResult.removeAt(index);
                                  });
                                  Navigator.pop(context);
                                }, child: Text('Yes')),
                                ElevatedButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text('No')),
                              ],
                            );
                          },
                          );
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
              itemCount: searchResult.length,
            ),
          )
        ],
      ),
    );
  }
}
