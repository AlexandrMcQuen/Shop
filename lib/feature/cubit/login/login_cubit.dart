import 'package:equatable/equatable.dart';
import 'package:shop/feature/data/repositories/users_rep.dart';
import 'package:bloc/bloc.dart';

import '../../domain/entities/user/user_entity.dart';

abstract class UserLoginState extends Equatable{
  const UserLoginState();

  @override
  List<Object?> get props => [];
}

class UserLoginLoading extends UserLoginState{
  const UserLoginLoading();
}

class UserLoginError extends UserLoginState{
  const UserLoginError();
}

class UserLoginLoaded extends UserLoginState{
  const UserLoginLoaded({required this.userLoginLoaded});

  final UserEntity? userLoginLoaded;

  @override
  List<Object?> get props => [userLoginLoaded];
}

class UserLoginCubit extends Cubit<UserLoginState>{
  UserLoginCubit(this.userReps) : super(const UserLoginLoading());
  
  final UserReps? userReps;
  
  Future<UserEntity?> fetchLogin() async{
    emit(const UserLoginLoading());
    try{
      final result = await userReps!.getUser();
      emit(UserLoginLoaded(userLoginLoaded: result));
    } catch(e){
      emit(const UserLoginError());
    }
  }
  
}