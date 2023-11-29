//ListView 사용방법
Widget listViewBuild() {
    List<String> filterList = [];
    for (String item in _searchAgencyList) {
      if (item.contains(textEditingController.text)){
        filterList.add(item);
      }
    }
    return Container(
      height: filterList.length > 7 ? 202 : null,
      margin: const EdgeInsets.symmetric(vertical: FixedPadding.md, horizontal: FixedPadding.md + FixedPadding.sm),
      child: Scrollbar(
        controller: _scrollController,
        thickness: 6.0,
        radius: const Radius.circular(8.0),
        trackVisibility: true,
        thumbVisibility: true,
        child: ListView.separated(
          controller: _scrollController,
          shrinkWrap: true,
          itemCount: filterList.length,
          separatorBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(top: FixedPadding.md),
            );
          },
          itemBuilder: (BuildContext context, index) {
            return Text(filterList[index]);
          },
        )
      ),
    );
  }