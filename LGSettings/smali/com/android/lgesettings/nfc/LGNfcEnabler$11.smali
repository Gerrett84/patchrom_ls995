.class Lcom/android/lgesettings/nfc/LGNfcEnabler$11;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;->airplaneNfcDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$11;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$11;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->switchVZW:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$400(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setChecked(Z)V

    .line 1107
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1108
    return-void
.end method