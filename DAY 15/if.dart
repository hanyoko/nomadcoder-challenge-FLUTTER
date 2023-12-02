//오류 해결하기
action: () {
  setState(() {
    if (_emailFormManager.text.isEmpty || (_selectedDropdownEmail == 2  && _domainFormManager.text.isEmpty)) {
      MyToast.show(context, LangKeys.enterEmail.tr);
      return;
    } else {
      _bCertify = true;
    }

    if (_bCertify = true) {
      _timer?.cancel();
      _startTimer();
      MyToast.show(context, LangKeys.enterCertifyNum.tr);
      return;
    }
    
    if (_verifyFormManager.text.isEmpty) {
      MyToast.show(context, LangKeys.enterCertifyNum.tr);
      // return;
    }

    if (_seconds == 0) {
      MyToast.show(context, LangKeys.timeOver.tr);
      return;
    }

    if (_verifyFormManager.text != _bCertifyNum) {
      MyToast.show(context, LangKeys.notSameCertifyNum.tr);
      return;
    }
    String domain = _domainFormManager.text.isEmpty ? domainList[_selectedDropdownEmail ?? 0] : _domainFormManager.text;
    
    Frame.pagePushReplace(context,
      ScreenAgreeInfo(
        _provider.koName,
        _emailFormManager.text + '@' + domain
      )
    );
  });
}