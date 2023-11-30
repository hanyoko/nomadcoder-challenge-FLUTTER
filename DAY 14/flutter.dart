//새롭게 공부한 방법
action: () {
	setState(() {
		if (_emailFormManager.text.isEmpty) {
			MyToast.show(context, LangKeys.enterEmail.tr);
		} else {
			String domain = _domainFormManager.text.isEmpty ? _domainList[_selectedEmail ?? 0] : _domainFormManager.text;

			_emailList.add(_emailFormManager.text + "@" + domain);
			_emailFormManager.controller.text = '';
			//변수로 설정 후 값 넣어줬음
        }
    });
},

_buildEmail(),

---

_buildEmail() {
    if (_emailList.isEmpty) {
      return const SizedBox();
    }
    return Column(
        children: [
            MyText.label(LangKeys.authorEmailList.tr, margin: const EdgeInsets.only(top: FixedPadding.md * 2)),
            SizedBox(
                child: Column(
                    children: [
                    for (String email in _emailList)
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Container(
                                    margin: const EdgeInsets.only(top: FixedPadding.md * 2),
                                    child: InkWell(
                                        child: Text(email, style: Fonts.body(color: COLOR_DARK_2)),
                                    ),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(top: FixedPadding.md * 2),
                                    child: InkWell(
                                        onTap: () {
                                        _emailList.remove(email);
                                        setState(() {});
                                        },
                                        child: SvgPicture.asset('assets/icons/delete.svg'),
                                    ),
                                )
                            ],
                        ),
                    ],
                ),
            ),
        ],
    );
}