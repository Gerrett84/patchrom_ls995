.class Lcom/android/lgesettings/PointerSpeedPreference$1;
.super Landroid/database/ContentObserver;
.source "PointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/PointerSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/PointerSpeedPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/PointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/lgesettings/PointerSpeedPreference$1;->this$0:Lcom/android/lgesettings/PointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/PointerSpeedPreference$1;->this$0:Lcom/android/lgesettings/PointerSpeedPreference;

    #calls: Lcom/android/lgesettings/PointerSpeedPreference;->onSpeedChanged()V
    invoke-static {v0}, Lcom/android/lgesettings/PointerSpeedPreference;->access$000(Lcom/android/lgesettings/PointerSpeedPreference;)V

    .line 47
    return-void
.end method
