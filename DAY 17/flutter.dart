//저자회원 상세정보 위치 → 필수정보 다음으로 이동
//print 찍어봤을 때 provider에 값이 비워지는 현상 해결해야함
//await가 걸려있을 때 push가 될 때 signupinit이 발생.
        

action: () async {
    await Frame.pagePush(context, const ScreenUser());
    context.read<MyProvider>().signupInit();
},
        
//현재 정상적으로 이동
_provider.userType == UserType.general ? Frame.pagePush(context, const ScreenEnterEmail()) : Frame.pagePush(context, const ScreenEnterInfoAuthor());