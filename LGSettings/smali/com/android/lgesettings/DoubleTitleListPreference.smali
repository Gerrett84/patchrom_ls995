.class public Lcom/android/lgesettings/DoubleTitleListPreference;
.super Landroid/preference/ListPreference;
.source "DoubleTitleListPreference.java"


# instance fields
.field private mSubTitle:Landroid/widget/TextView;

.field private mSubTitleRes:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleRes:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/DoubleTitleListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v0, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mTitleRes:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mSubTitleRes:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/lgesettings/DoubleTitleListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04006a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, layout:Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 37
    const v2, 0x7f0a004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mTitle:Landroid/widget/TextView;

    .line 38
    iget-object v2, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mTitleRes:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mTitleRes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    const v2, 0x7f0a00ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mSubTitle:Landroid/widget/TextView;

    .line 44
    iget-object v2, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mSubTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mSubTitleRes:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mSubTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mSubTitleRes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_1
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mTitleRes:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/lgesettings/DoubleTitleListPreference;->mSubTitleRes:Ljava/lang/String;

    .line 66
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/lgesettings/DoubleTitleListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x102026a

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 57
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_0
    return-void
.end method
