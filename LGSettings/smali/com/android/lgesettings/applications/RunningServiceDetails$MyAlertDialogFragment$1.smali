.class Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment;

.field final synthetic val$comp:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->this$0:Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment;

    iput-object p2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->val$comp:Landroid/content/ComponentName;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->this$0:Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment;->getOwner()Lcom/android/lgesettings/applications/RunningServiceDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->val$comp:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/applications/RunningServiceDetails;->activeDetailForService(Landroid/content/ComponentName;)Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;

    move-result-object v0

    .line 611
    .local v0, ad:Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;
    if-eqz v0, :cond_0

    .line 612
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    .line 614
    :cond_0
    return-void
.end method
