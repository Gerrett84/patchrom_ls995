.class Lcom/android/providers/settings/SettingsProvider$Injector;
.super Ljava/lang/Object;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .parameter "soundUri"
    .parameter "ringtoneType"

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, authority:Ljava/lang/String;
    const-string v2, "drm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 67
    .local v1, isDrmAuthority:Z
    if-nez v1, :cond_0

    const-string v2, "media"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :cond_0
    if-eqz v1, :cond_2

    .line 74
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 71
    .restart local p0
    :cond_2
    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getUriForExtraCases(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method static getAuthority(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "soundUri"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, authority:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 80
    const-string v0, ""

    .line 82
    :cond_0
    const-string v2, "drm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 83
    .local v1, isDrmAuthority:Z
    if-eqz v1, :cond_2

    .line 89
    .end local v0           #authority:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 86
    .restart local v0       #authority:Ljava/lang/String;
    :cond_2
    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Landroid/media/ExtraRingtoneManager;->isExtraCases(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    :cond_3
    const-string v0, "media"

    goto :goto_0
.end method
