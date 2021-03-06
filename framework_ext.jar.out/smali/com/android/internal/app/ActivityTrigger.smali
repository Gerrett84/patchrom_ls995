.class public Lcom/android/internal/app/ActivityTrigger;
.super Ljava/lang/Object;
.source "ActivityTrigger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTrigger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private native native_at_browserActivity(Ljava/lang/String;)I
.end method

.method private native native_at_deinit()V
.end method

.method private native native_at_resumeActivity(Ljava/lang/String;)V
.end method

.method private native native_at_startActivity(Ljava/lang/String;)V
.end method


# virtual methods
.method public activityBrowserTrigger(Ljava/lang/String;)I
    .locals 1
    .parameter "url"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActivityTrigger;->native_at_browserActivity(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public activityResumeTrigger(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 67
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 69
    .local v0, activity:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActivityTrigger;->native_at_resumeActivity(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public activityStartTrigger(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 57
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 59
    .local v0, activity:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActivityTrigger;->native_at_startActivity(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->native_at_deinit()V

    .line 47
    return-void
.end method
