%hook PHInCallUIUtilities
  // +(BOOL)isSpringBoardPasscodeLocked
  // {
  //   return NO;
  // }
  //
  // +(BOOL)isSpringBoardLocked
  // {
  //   return NO;
  // }

  -(BOOL)isSpringBoardLocked
  {
    return NO;
  }

%end
