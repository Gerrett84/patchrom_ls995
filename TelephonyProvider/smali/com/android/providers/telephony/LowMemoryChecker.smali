.class public Lcom/android/providers/telephony/LowMemoryChecker;
.super Ljava/lang/Object;
.source "LowMemoryChecker.java"


# static fields
.field private static mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/LowMemoryChecker;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/providers/telephony/LowMemoryChecker;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput-object p0, Lcom/android/providers/telephony/LowMemoryChecker;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static getWarningPopup()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/providers/telephony/LowMemoryChecker;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static initWarningPopup()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/LowMemoryChecker;->mDialog:Landroid/app/AlertDialog;

    .line 61
    return-void
.end method

.method public static showWarningActivity(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/telephony/LowMemoryCheckerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public static showWarningIfNecessary(Landroid/app/Activity;Z)Z
    .locals 3
    .parameter "activity"
    .parameter "finishActivity"

    .prologue
    .line 29
    sget-object v0, Lcom/android/providers/telephony/LowMemoryChecker;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/providers/telephony/LowMemoryChecker$1;

    invoke-direct {v2, p1, p0}, Lcom/android/providers/telephony/LowMemoryChecker$1;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/LowMemoryChecker;->mDialog:Landroid/app/AlertDialog;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/LowMemoryChecker;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/android/providers/telephony/LowMemoryChecker;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 52
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
