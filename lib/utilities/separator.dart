// Separates the title and link if there is ~ sign which separates them
class SeparateTitleLinkAndDate {
  int i, j, k;
  String title = '';
  String link = '';
  String date = '';
  String mixedTitleLinkAndDate;
  void separate(rawText) {
    this.mixedTitleLinkAndDate = rawText;
    // loop for extracting title text
    // loop stops after finding $ sign
    for (i = 0; mixedTitleLinkAndDate[i] != '~'; i++) {
      title = title + mixedTitleLinkAndDate[i];
    }
    //end of loop

    // value of i is 1 less than the position of ~ sign so should add 1 to get to link text
    i = i + 1;
    // loop for getting the link
    // the string ends having $ sign in last as I'll be throwing $ sign at the mixed text to tell the
    // end of the string
    for (j = i; mixedTitleLinkAndDate[j] != '~'; j++) {
      link = link + mixedTitleLinkAndDate[j];
    }
    //end of loop
    // value of i is 1 less than the position of ~ sign so should add 1 to get to date text
    j = j + 1;
    for (k = j; mixedTitleLinkAndDate[k] != '~'; k++) {
      date = date + mixedTitleLinkAndDate[k];
    }
  }

  // returns separated title as string
  String getTitle() {
    return title;
  }

  //returns separated link as String
  String getLink() {
    return link;
  }

  String getDate() {
    return date;
  }
}
