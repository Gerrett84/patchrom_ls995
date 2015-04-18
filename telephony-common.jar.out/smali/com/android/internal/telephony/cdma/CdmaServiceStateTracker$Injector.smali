.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$Injector;
.super Ljava/lang/Object;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPlmn(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tracker"
    .parameter "operator"

    .prologue
    move-object v0, p1

    .local v0, plmn:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .local v1, records:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v1           #records:Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    move-object v0, p1

    .line 98
    :cond_0
    return-object v0
.end method

.method static getSpn(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tracker"
    .parameter "serviceProviderName"

    .prologue
    .line 102
    move-object v1, p1

    .line 103
    .local v1, spn:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 104
    .local v0, records:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 105
    check-cast v2, Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    move-object v1, p1

    .line 110
    :cond_0
    return-object v1
.end method
