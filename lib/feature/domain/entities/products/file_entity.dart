import 'package:equatable/equatable.dart';

class FileEntity extends Equatable{
  final String url;
  final String name;
  final String originalName;
  final String extension;
  final String size;

  const FileEntity({required this.url, required this.name, required this.originalName, required this.extension, required this.size});

  @override

  List<Object?> get props => [url ,name, originalName, extension, size];
}