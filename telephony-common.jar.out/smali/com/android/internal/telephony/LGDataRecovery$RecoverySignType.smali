.class Lcom/android/internal/telephony/LGDataRecovery$RecoverySignType;
.super Ljava/lang/Object;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoverySignType"
.end annotation


# static fields
.field private static final OVERALL_RECOVERY_ALLOWED:I = 0x1

.field private static final OVERALL_RECOVERY_NOT_ALLOWED:I = 0x0

.field private static final RECOVERY_NEEDED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGDataRecovery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LGDataRecovery;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/LGDataRecovery$RecoverySignType;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
