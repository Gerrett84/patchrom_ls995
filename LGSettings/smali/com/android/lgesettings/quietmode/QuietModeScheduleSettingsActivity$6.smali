.class Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$6;
.super Ljava/lang/Object;
.source "QuietModeScheduleSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$6;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "_dialog"

    .prologue
    .line 386
    const-string v0, "QuietModeScheduleSettingsActivity"

    const-string v1, "onDismiss listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$6;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$802(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 388
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$6;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$6;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBScheduledTimeMode(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$6;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->access$400(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->save()V

    .line 390
    return-void
.end method