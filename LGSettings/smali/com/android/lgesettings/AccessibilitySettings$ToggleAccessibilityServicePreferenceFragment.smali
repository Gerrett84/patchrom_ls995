.class public Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleAccessibilityServicePreferenceFragment"
.end annotation


# instance fields
.field private mComponentName:Ljava/lang/String;

.field private mDisableWarningMessage:Ljava/lang/CharSequence;

.field private mDisableWarningTitle:Ljava/lang/CharSequence;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private final mSettingsContentObserver:Lcom/android/lgesettings/AccessibilitySettings$SettingsContentObserver;

.field private mShownDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    .line 866
    new-instance v0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/lgesettings/AccessibilitySettings$SettingsContentObserver;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 984
    packed-switch p2, :pswitch_data_0

    .line 998
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 986
    :pswitch_0
    iget v2, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v2, v0, :cond_0

    .line 987
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 988
    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 989
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 1000
    :goto_1
    return-void

    .end local v0           #checked:Z
    :cond_0
    move v0, v1

    .line 986
    goto :goto_0

    .line 992
    :pswitch_1
    iget v2, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 993
    .restart local v0       #checked:Z
    :goto_2
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 994
    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 995
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v0           #checked:Z
    :cond_1
    move v0, v1

    .line 992
    goto :goto_2

    .line 984
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 955
    const/4 v1, 0x0

    .line 956
    .local v1, title:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 957
    .local v0, message:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 969
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 959
    :pswitch_0
    iput v4, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 960
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 961
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 971
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 964
    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 965
    iget-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 966
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 967
    goto :goto_0

    .line 957
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 1004
    invoke-super {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 1005
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 1030
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;-><init>(Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/lgesettings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccessibilitySettings$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 899
    invoke-super {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onPause()V

    .line 900
    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 12
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    #calls: Lcom/android/lgesettings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    invoke-static {v9}, Lcom/android/lgesettings/AccessibilitySettings;->access$700(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    .line 908
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 910
    .local v8, toggledService:Landroid/content/ComponentName;
    if-eqz p2, :cond_0

    .line 912
    const/4 v0, 0x1

    .line 913
    .local v0, accessibilityEnabled:Z
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 931
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    .local v4, enabledServicesBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 937
    .local v2, enabledService:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const/16 v9, 0x3a

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 916
    .end local v0           #accessibilityEnabled:Z
    .end local v2           #enabledService:Landroid/content/ComponentName;
    .end local v4           #enabledServicesBuilder:Ljava/lang/StringBuilder;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    .line 917
    .local v1, enabledAndInstalledServiceCount:I
    invoke-static {}, Lcom/android/lgesettings/AccessibilitySettings;->access$800()Ljava/util/Set;

    move-result-object v7

    .line 918
    .local v7, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 919
    .restart local v2       #enabledService:Landroid/content/ComponentName;
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 924
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_2
    const/4 v9, 0x1

    if-gt v1, v9, :cond_3

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 927
    .restart local v0       #accessibilityEnabled:Z
    :goto_3
    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 924
    .end local v0           #accessibilityEnabled:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 940
    .end local v1           #enabledAndInstalledServiceCount:I
    .end local v7           #installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v0       #accessibilityEnabled:Z
    .restart local v4       #enabledServicesBuilder:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 941
    .local v5, enabledServicesBuilderLength:I
    if-lez v5, :cond_6

    .line 942
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 944
    :cond_6
    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 949
    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    if-eqz v0, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 951
    return-void

    .line 949
    :cond_7
    const/4 v9, 0x0

    goto :goto_4
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5
    .parameter "arguments"

    .prologue
    .line 1043
    invoke-super {p0, p1}, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 1045
    const-string v3, "settings_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1046
    .local v2, settingsTitle:Ljava/lang/String;
    const-string v3, "settings_component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, settingsComponentName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1048
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 1050
    .local v1, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1051
    iput-object v2, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 1052
    iput-object v1, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 1053
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 1057
    .end local v1           #settingsIntent:Landroid/content/Intent;
    :cond_0
    const-string v3, "enable_warning_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 1060
    const-string v3, "enable_warning_message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 1063
    const-string v3, "disable_warning_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 1066
    const-string v3, "disable_warning_message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 1069
    const-string v3, "service_component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mComponentName:Ljava/lang/String;

    .line 1070
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/lgesettings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccessibilitySettings$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 889
    invoke-super {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onResume()V

    .line 890
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportFunctionIcon()Z

    move-result v0

    invoke-static {v0}, Lcom/android/lgesettings/AccessibilitySettings;->access$602(Z)Z

    .line 891
    invoke-static {}, Lcom/android/lgesettings/AccessibilitySettings;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020323

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 894
    :cond_0
    return-void
.end method
