.class Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$1;
.super Landroid/os/Handler;
.source "ChooseBackupPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$1;->this$0:Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    .line 145
    :cond_0
    return-void
.end method
