.class Landroid/inputmethodservice/IInputMethodSessionWrapper;
.super Lcom/android/internal/view/IInputMethodSession$Stub;
.source "IInputMethodSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_APP_PRIVATE_COMMAND:I = 0x64

.field private static final DO_DISPATCH_GENERIC_MOTION_EVENT:I = 0x55

.field private static final DO_DISPATCH_KEY_EVENT:I = 0x46

.field private static final DO_DISPATCH_TRACKBALL_EVENT:I = 0x50

.field private static final DO_DISPLAY_COMPLETIONS:I = 0x41

.field private static final DO_FINISH_INPUT:I = 0x3c

.field private static final DO_FINISH_SESSION:I = 0x6e

.field private static final DO_TOGGLE_SOFT_INPUT:I = 0x69

.field private static final DO_UPDATE_CURSOR:I = 0x5f

.field private static final DO_UPDATE_EXTRACTED_TEXT:I = 0x43

.field private static final DO_UPDATE_SELECTION:I = 0x5a

.field private static final DO_VIEW_CLICKED:I = 0x73

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;)V
    .locals 1
    .parameter "context"
    .parameter "inputMethodSession"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;-><init>()V

    .line 73
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 74
    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    .line 75
    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "action"
    .parameter "data"

    .prologue
    .line 209
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 210
    return-void
.end method

.method public dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 3
    .parameter "seq"
    .parameter "event"
    .parameter "callback"

    .prologue
    .line 188
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x55

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 190
    return-void
.end method

.method public dispatchKeyEvent(ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 3
    .parameter "seq"
    .parameter "event"
    .parameter "callback"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 179
    return-void
.end method

.method public dispatchTrackballEvent(ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 3
    .parameter "seq"
    .parameter "event"
    .parameter "callback"

    .prologue
    .line 182
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 184
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .parameter "completions"

    .prologue
    .line 167
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x41

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 169
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 82
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    if-nez v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 84
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 159
    const-string v0, "InputMethodWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :sswitch_0
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodSession;->finishInput()V

    goto :goto_0

    .line 89
    :sswitch_1
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/view/inputmethod/CompletionInfo;

    check-cast v0, [Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0

    .line 92
    :sswitch_2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/ExtractedText;

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0

    .line 96
    :sswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 97
    .local v7, args:Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    new-instance v4, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodCallback;

    invoke-direct {v4, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;-><init>(Lcom/android/internal/view/IInputMethodCallback;)V

    invoke-interface {v2, v3, v0, v4}, Landroid/view/inputmethod/InputMethodSession;->dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    .line 101
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 105
    .end local v7           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 106
    .restart local v7       #args:Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    new-instance v4, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodCallback;

    invoke-direct {v4, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;-><init>(Lcom/android/internal/view/IInputMethodCallback;)V

    invoke-interface {v2, v3, v0, v4}, Landroid/view/inputmethod/InputMethodSession;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    .line 110
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 114
    .end local v7           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 115
    .restart local v7       #args:Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    new-instance v4, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodCallback;

    invoke-direct {v4, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$InputMethodEventCallbackWrapper;-><init>(Lcom/android/internal/view/IInputMethodCallback;)V

    invoke-interface {v2, v3, v0, v4}, Landroid/view/inputmethod/InputMethodSession;->dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    .line 119
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 123
    .end local v7           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 124
    .restart local v7       #args:Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v4, v7, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v5, v7, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-interface/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodSession;->updateSelection(IIIIII)V

    .line 126
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 130
    .end local v7           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 134
    :sswitch_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 135
    .restart local v7       #args:Lcom/android/internal/os/SomeArgs;
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    const-string v2, "ACTION_SHOWING_BUBBLE_POPUP"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-static {v0}, Landroid/widget/BubblePopupHelper;->setShowingAnyBubblePopup(Z)V

    goto/16 :goto_0

    .line 141
    :cond_1
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 147
    .end local v7           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_9
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodSession;->toggleSoftInput(II)V

    goto/16 :goto_0

    .line 151
    :sswitch_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    goto/16 :goto_0

    .line 155
    :sswitch_b
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_2

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->viewClicked(Z)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_0
        0x41 -> :sswitch_1
        0x43 -> :sswitch_2
        0x46 -> :sswitch_3
        0x50 -> :sswitch_4
        0x55 -> :sswitch_5
        0x5a -> :sswitch_6
        0x5f -> :sswitch_7
        0x64 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6e -> :sswitch_a
        0x73 -> :sswitch_b
    .end sparse-switch
.end method

.method public finishInput()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 164
    return-void
.end method

.method public finishSession()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 218
    return-void
.end method

.method public getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    return-object v0
.end method

.method public toggleSoftInput(II)V
    .locals 3
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 213
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 214
    return-void
.end method

.method public updateCursor(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "newCursor"

    .prologue
    .line 204
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 206
    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 3
    .parameter "token"
    .parameter "text"

    .prologue
    .line 172
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x43

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 174
    return-void
.end method

.method public updateSelection(IIIIII)V
    .locals 9
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 194
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x5a

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIIIII(IIIIIII)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 197
    return-void
.end method

.method public viewClicked(Z)V
    .locals 4
    .parameter "focusChanged"

    .prologue
    .line 200
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x73

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 201
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
