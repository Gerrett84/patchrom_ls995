.class public Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataDisableFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2597
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 2599
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2604
    :goto_0
    return-void

    .line 2601
    :cond_0
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {v0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;-><init>()V

    .line 2602
    .local v0, dialog:Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2603
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataDisable"

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/high16 v7, 0x104

    const/4 v6, 0x1

    .line 2608
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 2610
    .local v2, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2611
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x1010355

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2612
    const v4, 0x7f080115

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2614
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2615
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    .line 2617
    .local v3, enabled:Z
    const-string v4, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_0

    .line 2618
    const v4, 0x7f080ed3

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2633
    :goto_0
    const v4, 0x104000a

    new-instance v5, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment$1;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment$1;-><init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2644
    new-instance v4, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment$2;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment$2;-><init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2656
    new-instance v4, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment$3;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment$3;-><init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2680
    const/4 v4, 0x0

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2682
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 2620
    :cond_0
    const-string v4, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_1

    .line 2621
    const v4, 0x7f08100d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2623
    :cond_1
    const-string v4, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_2

    .line 2624
    const v4, 0x7f080ed5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2626
    :cond_2
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_3

    .line 2628
    const v4, 0x7f0810af

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2630
    :cond_3
    const v4, 0x7f0807e7

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 2688
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary;

    .line 2689
    .local v0, target:Lcom/android/lgesettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2692
    sput-boolean v2, Lcom/android/lgesettings/DataUsageSummary;->aboidBlink:Z

    .line 2694
    #calls: Lcom/android/lgesettings/DataUsageSummary;->isPositiveResult()Z
    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->access$3800()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2695
    const/4 v1, 0x1

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageSummary;->access$1000(Lcom/android/lgesettings/DataUsageSummary;Z)V

    .line 2699
    :goto_0
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setConfirmDialogShowed(Z)V
    invoke-static {v2}, Lcom/android/lgesettings/DataUsageSummary;->access$200(Z)V

    .line 2700
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPositiveResult(Z)V
    invoke-static {v2}, Lcom/android/lgesettings/DataUsageSummary;->access$3700(Z)V

    .line 2704
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2706
    if-eqz v0, :cond_1

    .line 2707
    #calls: Lcom/android/lgesettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$400(Lcom/android/lgesettings/DataUsageSummary;)V

    .line 2709
    :cond_1
    return-void

    .line 2697
    :cond_2
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/lgesettings/DataUsageSummary;->access$1000(Lcom/android/lgesettings/DataUsageSummary;Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 2714
    return-void
.end method
