.class Landroid/webkit/LGWebNotifications$1;
.super Ljava/lang/Object;
.source "LGWebNotifications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/LGWebNotifications;->requestPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/LGWebNotifications;


# direct methods
.method constructor <init>(Landroid/webkit/LGWebNotifications;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Landroid/webkit/LGWebNotifications$1;->this$0:Landroid/webkit/LGWebNotifications;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 301
    iget-object v0, p0, Landroid/webkit/LGWebNotifications$1;->this$0:Landroid/webkit/LGWebNotifications;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/LGWebNotifications;->mPermissionRequestDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/webkit/LGWebNotifications;->access$202(Landroid/webkit/LGWebNotifications;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 302
    iget-object v0, p0, Landroid/webkit/LGWebNotifications$1;->this$0:Landroid/webkit/LGWebNotifications;

    #getter for: Landroid/webkit/LGWebNotifications;->mCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/LGWebNotifications;->access$300(Landroid/webkit/LGWebNotifications;)Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->setNotificationSendRequestCallback()V

    .line 303
    return-void
.end method