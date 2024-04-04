%group 15Down 
  
  %hook PHInCallUIUtilities

    -(BOOL)isSpringBoardLocked
    {
      return NO;
    }

  %end

%end

%group 15AndUp 

  %hook PHBottomBar

    - (void)setCurrentState:(long long)arg1 animated:(_Bool)arg2 animationCompletionBlock:(id)arg3 {
      if (arg1 == 3) //3 creates the Sliding button, so we replace it with 0
       arg1 = 0;

      %orig;
    }

  %end

%end

%ctor {
  if (@available(iOS 15, *))
    %init(15AndUp);
  else
    %init(15Down);
}