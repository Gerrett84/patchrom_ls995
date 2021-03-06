.class public Lcom/android/lgesettings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
.implements Lcom/android/lgesettings/DialogCreatable;


# instance fields
.field private mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mTargetLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 41
    invoke-virtual {p0, p0}, Lcom/android/lgesettings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/LocalePicker;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/lgesettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    .line 47
    if-eqz p1, :cond_0

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/Locale;

    const-string v1, "locale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 50
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/lgesettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08087c

    new-instance v2, Lcom/android/lgesettings/LocalePicker$1;

    invoke-direct {v2, p0, p1}, Lcom/android/lgesettings/LocalePicker$1;-><init>(Lcom/android/lgesettings/LocalePicker;I)V

    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/lgesettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iput-object p1, p0, Lcom/android/lgesettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/LocalePicker;->showDialog(I)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 59
    invoke-static {p1}, Lcom/android/lgesettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/android/lgesettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/lgesettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/LocalePicker;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/LocalePicker;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/LocalePicker;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/LocalePicker;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 101
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/LocalePicker;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "LocalePicker"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    new-instance v0, Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/lgesettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/lgesettings/LocalePicker;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/LocalePicker;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/lgesettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 78
    return-void
.end method
