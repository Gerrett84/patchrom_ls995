.class final enum Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPatternKidsMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

.field public static final enum Cancel:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

.field public static final enum CancelDisabled:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

.field public static final enum Gone:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

.field public static final enum Retry:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

.field public static final enum RetryDisabled:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    const-string v1, "Cancel"

    const v2, 0x7f080106

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->Cancel:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    .line 243
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    const-string v1, "CancelDisabled"

    const v2, 0x7f080106

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->CancelDisabled:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    .line 244
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    const-string v1, "Retry"

    const v2, 0x7f080547

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->Retry:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    .line 245
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    const-string v1, "RetryDisabled"

    const v2, 0x7f080547

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->RetryDisabled:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    .line 246
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    const-string v1, "Gone"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->Gone:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    .line 241
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->Cancel:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->CancelDisabled:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->Retry:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->RetryDisabled:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->Gone:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->$VALUES:[Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "text"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 254
    iput p3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->text:I

    .line 255
    iput-boolean p4, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->enabled:Z

    .line 256
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;
    .locals 1
    .parameter

    .prologue
    .line 241
    const-class v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->$VALUES:[Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    invoke-virtual {v0}, [Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    return-object v0
.end method
