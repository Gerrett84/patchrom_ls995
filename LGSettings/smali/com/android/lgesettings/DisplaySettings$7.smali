.class Lcom/android/lgesettings/DisplaySettings$7;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/lgesettings/DisplaySettings$7;->this$0:Lcom/android/lgesettings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$7;->this$0:Lcom/android/lgesettings/DisplaySettings;

    #calls: Lcom/android/lgesettings/DisplaySettings;->updatePlcModeOnCheckbox()V
    invoke-static {v0}, Lcom/android/lgesettings/DisplaySettings;->access$500(Lcom/android/lgesettings/DisplaySettings;)V

    .line 241
    return-void
.end method
