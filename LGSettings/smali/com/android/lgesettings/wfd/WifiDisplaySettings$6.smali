.class Lcom/android/lgesettings/wfd/WifiDisplaySettings$6;
.super Landroid/database/ContentObserver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/lgesettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/lgesettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/lgesettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/lgesettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/lgesettings/wfd/WifiDisplaySettings;->update()V
    invoke-static {v0}, Lcom/android/lgesettings/wfd/WifiDisplaySettings;->access$500(Lcom/android/lgesettings/wfd/WifiDisplaySettings;)V

    .line 365
    return-void
.end method
