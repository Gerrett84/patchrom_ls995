.class Lcom/android/server/BootReceiver$1;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iput-object p2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/BootReceiver;->access$000(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    const/4 v1, 0x0

    .line 90
    .local v1, onlyCore:Z
    :try_start_1
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 94
    :goto_1
    if-nez v1, :cond_0

    .line 95
    :try_start_2
    iget-object v2, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/BootReceiver;->access$100(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    :cond_0
    :goto_2
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bugreport_in_power_menu"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    :cond_2
    return-void

    .line 84
    .end local v1           #onlyCore:Z
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BootReceiver"

    const-string v3, "Can\'t log boot events"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 97
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #onlyCore:Z
    :catch_1
    move-exception v0

    .line 98
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "BootReceiver"

    const-string v3, "Can\'t remove old update packages"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_1
.end method
