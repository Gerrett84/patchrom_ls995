.class public Landroid/app/DialogFragment;
.super Landroid/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 177
    iput v0, p0, Landroid/app/DialogFragment;->mStyle:I

    .line 178
    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 179
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    .line 180
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    .line 189
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    .line 260
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    .line 270
    return-void
.end method

.method dismissInternal(Z)V
    .locals 4
    .parameter "allowStateLoss"

    .prologue
    const/4 v3, 0x1

    .line 273
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    if-eqz v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 276
    :cond_0
    iput-boolean v3, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 277
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    .line 278
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 280
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 282
    :cond_1
    iput-boolean v3, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 283
    iget v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    if-ltz v1, :cond_2

    .line 284
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Landroid/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(II)V

    .line 286
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 289
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 290
    if-eqz p1, :cond_3

    .line 291
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 552
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 553
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DialogFragment:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mStyle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 555
    const-string v0, " mTheme=0x"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/DialogFragment;->mTheme:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCancelable="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 557
    const-string v0, " mShowsDialog="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 558
    const-string v0, " mBackStackId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 559
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mDialog="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 560
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mViewDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 561
    const-string v0, " mDismissed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 562
    const-string v0, " mShownByMe="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 563
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 395
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_0

    .line 396
    invoke-super {p0, p1}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 414
    :goto_0
    return-object v0

    .line 399
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 400
    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    packed-switch v0, :pswitch_data_0

    .line 410
    :goto_1
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_0

    .line 402
    :pswitch_0
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 408
    :pswitch_1
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_1

    .line 414
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShowsDialog()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Landroid/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 459
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 461
    iget-boolean v2, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    if-nez v2, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v2, :cond_2

    .line 466
    const-string v2, "DialogFragment"

    const-string/jumbo v3, "mDialog is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 471
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 472
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 473
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "DialogFragment can not be attached to a container view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 475
    :cond_3
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 477
    :cond_4
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 478
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v3, p0, Landroid/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 479
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const-string v3, "DialogFragment"

    invoke-virtual {v2, v3, p0, p0}, Landroid/app/Dialog;->takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 480
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You can not set Dialog\'s OnCancelListener or OnDismissListener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_5
    if-eqz p1, :cond_0

    .line 484
    const-string v2, "android:savedDialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 485
    .local v0, dialogState:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 486
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 357
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 358
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 363
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 445
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 380
    iget v0, p0, Landroid/app/Fragment;->mContainerId:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 382
    if-eqz p1, :cond_0

    .line 383
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mStyle:I

    .line 384
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 385
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    .line 386
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 387
    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    .line 390
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 380
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 441
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 539
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 540
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 545
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 548
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 368
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 374
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 448
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    .line 455
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 502
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 503
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 505
    .local v0, dialogState:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 506
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 509
    .end local v0           #dialogState:Landroid/os/Bundle;
    :cond_0
    iget v1, p0, Landroid/app/DialogFragment;->mStyle:I

    if-eqz v1, :cond_1

    .line 510
    const-string v1, "android:style"

    iget v2, p0, Landroid/app/DialogFragment;->mStyle:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    :cond_1
    iget v1, p0, Landroid/app/DialogFragment;->mTheme:I

    if-eqz v1, :cond_2

    .line 513
    const-string v1, "android:theme"

    iget v2, p0, Landroid/app/DialogFragment;->mTheme:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    :cond_2
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    if-nez v1, :cond_3

    .line 516
    const-string v1, "android:cancelable"

    iget-boolean v2, p0, Landroid/app/DialogFragment;->mCancelable:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 518
    :cond_3
    iget-boolean v1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    if-nez v1, :cond_4

    .line 519
    const-string v1, "android:showsDialog"

    iget-boolean v2, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 521
    :cond_4
    iget v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 522
    const-string v1, "android:backStackId"

    iget v2, p0, Landroid/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 524
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 493
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 494
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 496
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 498
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 528
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 529
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 532
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 316
    iput-boolean p1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    .line 317
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 318
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0
    .parameter "showsDialog"

    .prologue
    .line 345
    iput-boolean p1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 346
    return-void
.end method

.method public setStyle(II)V
    .locals 2
    .parameter "style"
    .parameter "theme"

    .prologue
    .line 206
    iput p1, p0, Landroid/app/DialogFragment;->mStyle:I

    .line 207
    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 208
    :cond_0
    const v0, 0x1030312

    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 210
    :cond_1
    if-eqz p2, :cond_2

    .line 211
    iput p2, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 213
    :cond_2
    return-void
.end method

.method public show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .parameter "transaction"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 244
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    .line 246
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 247
    iput-boolean v1, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 248
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    .line 249
    iget v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    return v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .parameter "manager"
    .parameter "tag"

    .prologue
    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    .line 229
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 230
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 231
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 232
    return-void
.end method
