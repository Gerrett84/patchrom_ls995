.class public interface abstract Lcom/lge/uicc/ISmartCardInfo;
.super Ljava/lang/Object;
.source "ISmartCardInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/ISmartCardInfo$Stub;
    }
.end annotation


# virtual methods
.method public abstract smartCardGetATR()Lcom/android/internal/telephony/uicc/SmartCardResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract smartCardTransmit([B)Lcom/android/internal/telephony/uicc/SmartCardResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
