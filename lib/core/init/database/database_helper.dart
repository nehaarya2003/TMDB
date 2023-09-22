import 'package:path/path.dart';
import 'package:sample/data/model/movie.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;

  static const int _version = 1;
  static const String _dbName = "Movies.db";

  final String _moviesTable = " movies";
  final String _movieID = "id";
  final String _movieTitle = "title";
  final String _movieURL = "imageUrl";
  final String _movieDescription = "description";

  Future<Database> get database async {
    _database ??= await initializeDatabase();
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    String dbPath = join(await getDatabasesPath(), _dbName);
    var notesDb =
        await openDatabase(dbPath, version: _version, onCreate: createDb);
    return notesDb;
  }

  void createDb(Database db, int version) async {
    await db.execute(
        "Create table $_moviesTable($_movieID integer primary key, $_movieTitle text, $_movieURL text, $_movieDescription text)");
  }

  //Crud Methods
  Future<List<Movie>> getAllMovies() async {
    Database db = await database;
    var result = await db.query(_moviesTable);
    return List.generate(result.length, (i) {
      return Movie.fromJson(result[i]);
    });
  }
}
