.class Lcom/android/lgesettings/SettingsCarrierLegalActivity$1;
.super Ljava/lang/Object;
.source "SettingsCarrierLegalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/SettingsCarrierLegalActivity;->PrivacyAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SettingsCarrierLegalActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SettingsCarrierLegalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity$1;->this$0:Lcom/android/lgesettings/SettingsCarrierLegalActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity$1;->this$0:Lcom/android/lgesettings/SettingsCarrierLegalActivity;

    #calls: Lcom/android/lgesettings/SettingsCarrierLegalActivity;->PrivacyAlert_Detail()V
    invoke-static {v0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->access$000(Lcom/android/lgesettings/SettingsCarrierLegalActivity;)V

    .line 319
    return-void
.end method
