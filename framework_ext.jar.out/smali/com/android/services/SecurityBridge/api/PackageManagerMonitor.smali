.class public Lcom/android/services/SecurityBridge/api/PackageManagerMonitor;
.super Ljava/lang/Object;
.source "PackageManagerMonitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public approveAppInstallRequest(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "apkFilePath"
    .parameter "originalAPKFilePath"

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
