import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

import '../../domain/entities/user/user_entity.dart';
import '../../domain/repositories/users_rep.dart';

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
  UserLoginCubit(this._userReps) : super(const UserLoginLoading());
  
  final UserRep? _userReps;
  
  Future<UserEntity?> fetchLogin() async{
    emit(const UserLoginLoading());
    try{
      final result = await _userReps!.getUser();
      emit(UserLoginLoaded(userLoginLoaded: result));
    } catch(e){
      emit(const UserLoginError());
    }
  }
  
}