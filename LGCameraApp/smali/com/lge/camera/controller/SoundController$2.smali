.class Lcom/lge/camera/controller/SoundController$2;
.super Ljava/lang/Object;
.source "SoundController.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SoundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SoundController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 174
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeListener_music() id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->setLoadedMusicSoundMaskID(I)V
    invoke-static {v0, p2}, Lcom/lge/camera/controller/SoundController;->access$900(Lcom/lge/camera/controller/SoundController;I)V

    .line 176
    return-void
.end method
