.class Lcom/android/lgesettings/wifi/WifiConnectionHistory$1;
.super Ljava/lang/Object;
.source "WifiConnectionHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiConnectionHistory;->onCreateAlertDialg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$1;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$1;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->deleteAllMessages()V

    .line 465
    return-void
.end method
