.class Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$6;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/lgesettings/applications/InstalledAppDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/lgesettings/applications/InstalledAppDetails;

    move-result-object v1

    #getter for: Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->access$100(Lcom/android/lgesettings/applications/InstalledAppDetails;)Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/lgesettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->access$1000(Lcom/android/lgesettings/applications/InstalledAppDetails;Ljava/lang/String;)V

    .line 1344
    return-void
.end method