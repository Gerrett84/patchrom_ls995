.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;,
        Lcom/android/server/location/GpsLocationProvider$WifiState;,
        Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;,
        Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$Listener;,
        Lcom/android/server/location/GpsLocationProvider$GpsRequest;,
        Lcom/android/server/location/GpsLocationProvider$Injector;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final CHECK_LOCATION:I = 0x1

.field private static DEBUG:Z = false

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final ENABLE:I = 0x2

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final FALLBACK_STANDALONE:I = 0xd

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = -0x1

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_ALMANAC_CORR:I = 0x1000

.field private static final GPS_DELETE_ALMANAC_CORR_GLO:I = 0x40000

.field private static final GPS_DELETE_ALMANAC_GLO:I = 0x8000

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x800

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_EPHEMERIS_GLO:I = 0x4000

.field private static final GPS_DELETE_FREQ_BIAS_EST:I = 0x2000

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVDIR_GLO:I = 0x10000

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_SVSTEER_GLO:I = 0x20000

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_TIME_GLO:I = 0x100000

.field private static final GPS_DELETE_TIME_GPS:I = 0x80000

.field private static final GPS_DELETE_UTC:I = 0x20

.field public static final GPS_ENGINE_STATUS:Ljava/lang/String; = "com.lge.location.GPS_ENGINE_STATUS"

.field public static final GPS_ENGINE_STATUS_CHANGE:Ljava/lang/String; = "com.lge.location.GPS_ENGINE_STATUS_CHANGE"

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field public static final GPS_XTRA_DATA_DOWNLOAD:Ljava/lang/String; = "com.lge.location.GPS_XTRA_DATA_DOWNLOAD"

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_FINISHED:I = 0xa

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_FAILED:I = 0x1000

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties; = null

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REPORT_AGPS_STATUS:I = 0xc

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field private static mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

.field private static mVendorName:Ljava/lang/String;

.field protected static mXtraDownloadDate:J


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientUids:[I

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDownloadXtraDataPending:I

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFallbackStart:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mInjectNtpTimePending:I

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private mLock:Ljava/lang/Object;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field protected mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private mNtpServer:Ljava/lang/String;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mPeriodicTimeInjection:Z

.field protected mPositionMode:I

.field private mProperties:Ljava/util/Properties;

.field private mSnrs:[F

.field private final mSpirentWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mSpirentWakeLock2:Landroid/os/PowerManager$WakeLock;

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private final mWifiScanReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 111
    sput-boolean v1, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    .line 112
    sput-boolean v1, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    .line 117
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 324
    const-string v0, ""

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    .line 325
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadDate:J

    .line 2306
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    .line 2357
    new-array v0, v8, [Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 12
    .parameter "context"
    .parameter "ilocationManager"

    .prologue
    const/4 v11, 0x0

    const/16 v8, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 489
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v6, Ljava/lang/Object;

    invoke-direct/range {v6 .. v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    .line 238
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 241
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 281
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 282
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 294
    const/16 v6, 0x3e8

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 306
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 308
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 335
    new-instance v6, Landroid/location/Location;

    const-string v7, "gps"

    invoke-direct {v6, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 336
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 337
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 369
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mFallbackStart:Z

    .line 375
    new-array v6, v9, [I

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:[I

    .line 376
    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    .line 378
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 431
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 602
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$4;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiScanReceiver:Landroid/content/BroadcastReceiver;

    .line 1976
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$7;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$7;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2297
    new-array v6, v8, [I

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 2298
    new-array v6, v8, [F

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 2299
    new-array v6, v8, [F

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 2300
    new-array v6, v8, [F

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 2301
    const/4 v6, 0x3

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 2304
    const/16 v6, 0x78

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 490
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 491
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 492
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 493
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v6, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 495
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 498
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 499
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v6, "GpsLocationProvider"

    invoke-virtual {v3, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 500
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 502
    const-string v6, "GPS-SPIRENT"

    invoke-virtual {v3, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSpirentWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 503
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSpirentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 504
    const-string v6, "GPS-SPIRENT2"

    invoke-virtual {v3, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSpirentWakeLock2:Landroid/os/PowerManager$WakeLock;

    .line 505
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSpirentWakeLock2:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 507
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$WifiState;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$WifiState;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    .line 509
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 510
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 511
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 513
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 516
    const-string v6, "batteryinfo"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 518
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 520
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/etc/gps.conf"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v1, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 522
    .local v5, stream:Ljava/io/FileInputStream;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v6, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 523
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 526
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "NTP_SERVER"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpServer:Ljava/lang/String;

    .line 528
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "VENDOR"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    .line 531
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_HOST"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 532
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_PORT"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, portString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 535
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 541
    :cond_0
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "C2K_HOST"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 542
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "C2K_PORT"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 545
    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 556
    .end local v1           #file:Ljava/io/File;
    .end local v2           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    const-string v6, "LGU"

    sget-object v7, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 557
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->readXtraDownloadDate()V

    .line 562
    :cond_2
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    .line 563
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->listenForBroadcasts()V

    .line 566
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v7, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    const-string v6, "ro.build.target_operator"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TMO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ro.build.target_country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 579
    const-string v6, "persist.service.privacy.enable"

    const-string v7, "NA"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, privacy_check:Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 583
    sput-boolean v10, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    .line 584
    sput-boolean v10, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    .line 594
    .end local v4           #privacy_check:Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 536
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #portString:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 537
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse SUPL_PORT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 550
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 551
    .local v0, e:Ljava/io/IOException;
    const-string v6, "GpsLocationProvider"

    const-string v7, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 546
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #portString:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 547
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse C2K_PORT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 589
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #privacy_check:Ljava/lang/String;
    :cond_4
    sput-boolean v9, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    .line 590
    sput-boolean v9, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->startNavigating()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider;JJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/location/GpsLocationProvider;[BI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic access$3200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/location/GpsLocationProvider;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->broadcastXtraDownload([B)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$4802(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    return p1
.end method

.method static synthetic access$4902(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleReportAgpsStatus(Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleFallback()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getDefaultApn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/location/GpsLocationProvider;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/location/GpsLocationProvider;I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    return-object v0
.end method

.method private associateToNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "ssid"
    .parameter "password"

    .prologue
    const/4 v6, 0x1

    .line 1567
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "associateToNetwork begin ssid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", password="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1102(Lcom/android/server/location/GpsLocationProvider$WifiState;Ljava/lang/String;)Ljava/lang/String;

    .line 1572
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1300(Lcom/android/server/location/GpsLocationProvider$WifiState;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1573
    .local v1, originalNetworkInfo:Landroid/net/wifi/WifiInfo;
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I
    invoke-static {v3, v4}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3402(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I

    .line 1574
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1202(Lcom/android/server/location/GpsLocationProvider$WifiState;Ljava/lang/String;)Ljava/lang/String;

    .line 1575
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getNetworkPreference()I

    move-result v4

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I
    invoke-static {v3, v4}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3502(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I

    .line 1577
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saved original wifi info. originalNetId  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3400(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", originalNetworkPreference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3500(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    .line 1581
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GpsLocationProvider"

    const-string v4, "network prefence changed to wifi"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_1
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get WPA wifi config for ssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", password="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_2
    if-nez p2, :cond_6

    .line 1585
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->getWifiConfigurationForOpen(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 1589
    .local v2, wc:Landroid/net/wifi/WifiConfiguration;
    :goto_0
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi configuration is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_3
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1300(Lcom/android/server/location/GpsLocationProvider$WifiState;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I
    invoke-static {v3, v4}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3602(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I

    .line 1592
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3600(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v3

    if-gez v3, :cond_7

    .line 1593
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " add Network returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3600(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_4
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #calls: Lcom/android/server/location/GpsLocationProvider$WifiState;->handleFailure()V
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1500(Lcom/android/server/location/GpsLocationProvider$WifiState;)V

    .line 1608
    :cond_5
    :goto_1
    return-void

    .line 1587
    .end local v2           #wc:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->getWifiConfigurationForWPA(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .restart local v2       #wc:Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 1596
    :cond_7
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " add Network returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3600(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_8
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1300(Lcom/android/server/location/GpsLocationProvider$WifiState;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3600(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    .line 1601
    .local v0, b:Z
    if-eqz v0, :cond_9

    .line 1602
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableNetwork returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1604
    :cond_9
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR: enableNetwork returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_a
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #calls: Lcom/android/server/location/GpsLocationProvider$WifiState;->handleFailure()V
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1500(Lcom/android/server/location/GpsLocationProvider$WifiState;)V

    goto :goto_1
.end method

.method private broadcastXtraDownload([B)V
    .locals 5
    .parameter "data"

    .prologue
    .line 2723
    if-eqz p1, :cond_1

    .line 2724
    const-string v1, "end"

    .line 2726
    .local v1, str:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadDate:J

    .line 2728
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->saveXtraDownloadDate()V

    .line 2733
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.location.GPS_XTRA_DATA_DOWNLOAD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2734
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "xtra_download"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2735
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2736
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xtra_download : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :cond_0
    return-void

    .line 2731
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #str:Ljava/lang/String;
    :cond_1
    const-string v1, "fail"

    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 473
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 474
    .local v1, messages:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 475
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 476
    .local v2, supl_init:[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v2           #supl_init:[B
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 481
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 482
    .local v0, supl_init:[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 483
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/16 v2, 0x22

    .line 1630
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1631
    const-string p1, ""

    .line 1639
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1634
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1635
    .local v0, lastPos:I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1639
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "extras"

    .prologue
    .line 1177
    if-nez p1, :cond_1

    .line 1178
    const/4 v0, -0x1

    .line 1205
    .local v0, flags:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_17

    .line 1206
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1207
    const/4 v1, 0x1

    .line 1210
    :goto_1
    return v1

    .line 1180
    .end local v0           #flags:I
    :cond_1
    const/4 v0, 0x0

    .line 1181
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    .line 1182
    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 1183
    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 1184
    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 1185
    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 1186
    :cond_6
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 1187
    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    .line 1188
    :cond_8
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    .line 1189
    :cond_9
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    .line 1190
    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    .line 1191
    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    .line 1192
    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    or-int/lit16 v0, v0, 0x800

    .line 1193
    :cond_d
    const-string v1, "almanac-corr"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit16 v0, v0, 0x1000

    .line 1194
    :cond_e
    const-string v1, "freq-bias-est"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit16 v0, v0, 0x2000

    .line 1195
    :cond_f
    const-string v1, "ephemeris-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit16 v0, v0, 0x4000

    .line 1196
    :cond_10
    const-string v1, "almanac-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1197
    :cond_11
    const-string v1, "svdir-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 1198
    :cond_12
    const-string v1, "svsteer-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    .line 1199
    :cond_13
    const-string v1, "almanac-corr-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 1200
    :cond_14
    const-string v1, "time-gps"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 1201
    :cond_15
    const-string v1, "time-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    .line 1202
    :cond_16
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1210
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private fallback()V
    .locals 3

    .prologue
    .line 1306
    const/16 v0, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1307
    return-void
.end method

.method private getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .locals 7
    .parameter "connType"

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2359
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAGpsConnectionInfo connType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2376
    :goto_0
    return-object v0

    .line 2364
    :pswitch_0
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v1, v1, v4

    if-nez v1, :cond_1

    .line 2365
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    invoke-direct {v2, p0, v4, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V

    aput-object v2, v1, v4

    .line 2366
    :cond_1
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v0, v0, v4

    goto :goto_0

    .line 2368
    :pswitch_1
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v1, v1, v5

    if-nez v1, :cond_2

    .line 2369
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V

    aput-object v2, v1, v5

    .line 2370
    :cond_2
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v0, v0, v5

    goto :goto_0

    .line 2372
    :pswitch_2
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v1, v1, v6

    if-nez v1, :cond_3

    .line 2373
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    invoke-direct {v2, p0, v5, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V

    aput-object v2, v1, v6

    .line 2374
    :cond_3
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v0, v0, v6

    goto :goto_0

    .line 2360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentNetId()I
    .locals 2

    .prologue
    .line 1616
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1300(Lcom/android/server/location/GpsLocationProvider$WifiState;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1617
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    return v1
.end method

.method private getDefaultApn()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2263
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2264
    .local v2, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 2269
    .local v7, apn:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "apn"

    aput-object v5, v3, v6

    const-string v6, "name ASC"

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2273
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2275
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2276
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2279
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2283
    :cond_1
    if-nez v7, :cond_2

    .line 2284
    const-string v7, "dummy-apn"

    .line 2287
    :cond_2
    return-object v7

    .line 2279
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getWifiConfigurationForNoAuth(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .parameter "SSID"

    .prologue
    const/4 v2, 0x0

    .line 1643
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1644
    .local v0, conf:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1645
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1646
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1647
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1648
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1649
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1650
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1651
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1653
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1655
    return-object v0
.end method

.method private getWifiConfigurationForOpen(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .parameter "SSID"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1660
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1661
    .local v0, conf:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1662
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1663
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1664
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1665
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1666
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1667
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1668
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1670
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1671
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1672
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1673
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1674
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1675
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1676
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1677
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1678
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1679
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1681
    return-object v0
.end method

.method private getWifiConfigurationForWEP(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .parameter "SSID"
    .parameter "password"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1720
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1721
    .local v0, conf:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1722
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1723
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1724
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1725
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1726
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1727
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1728
    const/16 v1, 0x28

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1730
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1731
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1732
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1733
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1734
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1735
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1736
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1737
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1738
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1739
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1741
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1742
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1744
    return-object v0
.end method

.method private getWifiConfigurationForWPA(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .parameter "SSID"
    .parameter "password"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1685
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1686
    .local v0, conf:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1687
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1688
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1689
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1690
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 1691
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1692
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1693
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1695
    const-string v1, "[0-9A-Fa-f]{64}"

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1696
    const-string v1, "GpsLocationProvider"

    const-string v2, "A 64 bit hex password entered."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1703
    :goto_0
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1706
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1707
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1708
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 1709
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1710
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1711
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 1712
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1713
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1714
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1716
    return-object v0

    .line 1699
    :cond_0
    const-string v1, "GpsLocationProvider"

    const-string v2, "A normal password entered: I am quoting it."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleDisable()V
    .locals 2

    .prologue
    .line 989
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 998
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 999
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1002
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    .line 1003
    return-void
.end method

.method private handleDownloadXtraData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 850
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-ne v0, v1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_2

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 859
    const-string v0, "LGU"

    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->broadcastXtraDownload([B)V

    goto :goto_0

    .line 863
    :cond_2
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 866
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 867
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$6;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$6;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleFallback()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1311
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v2, "handleFallback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1315
    .local v3, interval:I
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v1

    .line 1318
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1320
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1321
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_1
    :goto_1
    return-void

    .line 1313
    .end local v3           #interval:I
    :cond_2
    const/16 v3, 0x3e8

    goto :goto_0

    .line 1324
    .restart local v3       #interval:I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1325
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1326
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleInjectNtpTime()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 781
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    if-ne v0, v1, :cond_0

    .line 846
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_1

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    goto :goto_0

    .line 790
    :cond_1
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 793
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 794
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$5;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleReportAgpsStatus(Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;)V
    .locals 14
    .parameter "rasm"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1792
    iget v6, p1, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->type:I

    .line 1793
    .local v6, type:I
    iget v5, p1, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->status:I

    .line 1794
    .local v5, status:I
    iget-object v2, p1, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->ipAddr:[B

    .line 1795
    .local v2, ipAddr:[B
    iget-object v4, p1, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->ssid:Ljava/lang/String;

    .line 1796
    .local v4, ssid:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->password:Ljava/lang/String;

    .line 1798
    .local v3, password:Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleReportAgpsStatus with type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ipAddr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ssid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "password = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1807
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v0

    .line 1808
    .local v0, agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    if-nez v0, :cond_2

    .line 1809
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportAGpsStatus agpsConnInfo is null for type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_1
    :goto_0
    return-void

    .line 1814
    :cond_2
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1816
    :pswitch_0
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "GpsLocationProvider"

    const-string v8, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_3
    packed-switch v6, :pswitch_data_1

    .line 1883
    :pswitch_1
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "GpsLocationProvider"

    const-string v8, "type == unknown"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1821
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getCMConnType()I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1822
    .local v1, info:Landroid/net/NetworkInfo;
    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->connect(Landroid/net/NetworkInfo;[B)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$3700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;[B)V

    .line 1823
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    if-eq v7, v12, :cond_4

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    if-ne v7, v13, :cond_6

    .line 1825
    :cond_4
    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getIpAddr()Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1826
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "agpsConnInfo.mIpAddr "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getIpAddr()Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getCMConnType()I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v8

    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getIpAddr()Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1828
    const-string v7, "GpsLocationProvider"

    const-string v8, "call requestRouteToHostAddress failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_5
    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getAgpsType()I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$3800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getBearerType(Landroid/net/NetworkInfo;)I
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;)I

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1834
    :cond_6
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    if-eq v7, v10, :cond_1

    .line 1837
    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getAgpsType()I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto/16 :goto_0

    .line 1843
    .end local v1           #info:Landroid/net/NetworkInfo;
    :pswitch_3
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "GpsLocationProvider"

    const-string v8, "type == AGpsConnectionInfo.CONNECTION_TYPE_WIFI"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_7
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1000(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v7

    if-eqz v7, :cond_9

    .line 1845
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "GpsLocationProvider"

    const-string v8, "Error: request Wifi but WifiState is not WIFI_STATE_CLOSED"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :cond_8
    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getAgpsType()I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    .line 1848
    :cond_9
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1300(Lcom/android/server/location/GpsLocationProvider$WifiState;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1849
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "GpsLocationProvider"

    const-string v8, "wifi enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_a
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1851
    .restart local v1       #info:Landroid/net/NetworkInfo;
    invoke-virtual {p0, v1, v4}, Lcom/android/server/location/GpsLocationProvider;->isWifiConnectedToSSID(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1852
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "GpsLocationProvider"

    const-string v8, "already connected to this SSID. not associating to it..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    :cond_b
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getNetworkPreference()I

    move-result v8

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I
    invoke-static {v7, v8}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3502(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I

    .line 1854
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3500(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v7

    if-ne v7, v10, :cond_e

    .line 1855
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_c

    const-string v7, "GpsLocationProvider"

    const-string v8, "network Preference already TYPE_mWifiState.mWifiManager. do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_c
    :goto_1
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_d

    const-string v7, "GpsLocationProvider"

    const-string v8, "wifi connected, and ssid matches expected!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :cond_d
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getCurrentNetId()I

    move-result v8

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I
    invoke-static {v7, v8}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3402(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I

    .line 1862
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3400(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v8

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I
    invoke-static {v7, v8}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3602(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I

    .line 1863
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1300(Lcom/android/server/location/GpsLocationProvider$WifiState;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1202(Lcom/android/server/location/GpsLocationProvider$WifiState;Ljava/lang/String;)Ljava/lang/String;

    .line 1865
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I
    invoke-static {v7, v12}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1002(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I

    .line 1866
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v12}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 1868
    const/4 v7, 0x4

    const-string v8, "dummy-apn"

    invoke-direct {p0, v7, v8, v11}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1857
    :cond_e
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_f

    const-string v7, "GpsLocationProvider"

    const-string v8, "network Preference not already TYPE_mWifiState.mWifiManager. change it."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_f
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v10}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    goto :goto_1

    .line 1870
    :cond_10
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_11

    const-string v7, "GpsLocationProvider"

    const-string v8, "not already connected to this SSID. associating to it..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_11
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I
    invoke-static {v7, v10}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1002(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I

    .line 1872
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v10}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 1873
    invoke-direct {p0, v4, v3}, Lcom/android/server/location/GpsLocationProvider;->associateToNetwork(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1876
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_12
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_13

    const-string v7, "GpsLocationProvider"

    const-string v8, "ERROR: wifi not enabled.. (we assume it is enabled)"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_13
    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getAgpsType()I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto/16 :goto_0

    .line 1888
    :pswitch_4
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_14

    const-string v7, "GpsLocationProvider"

    const-string v8, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :cond_14
    packed-switch v6, :pswitch_data_2

    .line 1910
    :pswitch_5
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "GpsLocationProvider"

    const-string v8, "GPS_RELEASE_AGPS_DATA_CONN but current network state is unknown!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1894
    :pswitch_6
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 1895
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    if-eq v7, v13, :cond_15

    .line 1896
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$3900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1899
    :cond_15
    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getAgpsType()I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed(I)V

    .line 1900
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v11}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    goto/16 :goto_0

    .line 1905
    :pswitch_7
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_16

    const-string v7, "GpsLocationProvider"

    const-string v8, "case AGpsConnectionInfo.CONNECTION_TYPE_WIFI"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_16
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #calls: Lcom/android/server/location/GpsLocationProvider$WifiState;->restoreOriginalWifiSettings(Z)V
    invoke-static {v7, v11}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$4000(Lcom/android/server/location/GpsLocationProvider$WifiState;Z)V

    goto/16 :goto_0

    .line 1916
    :pswitch_8
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "GpsLocationProvider"

    const-string v8, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1919
    :pswitch_9
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "GpsLocationProvider"

    const-string v8, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1922
    :pswitch_a
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "GpsLocationProvider"

    const-string v8, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1814
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1818
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1890
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 8
    .parameter "request"
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 1045
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_5

    .line 1051
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v0

    new-array v7, v0, [I

    .line 1052
    .local v7, uids:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 1053
    invoke-virtual {p2, v6}, Landroid/os/WorkSource;->get(I)I

    move-result v0

    aput v0, v7, v6

    .line 1052
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1055
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids([I)V

    .line 1057
    iget-wide v0, p1, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1060
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    iget-wide v3, p1, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 1061
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval overflow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p1, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1066
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1068
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1070
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    .end local v6           #i:I
    .end local v7           #uids:[I
    :cond_3
    :goto_1
    return-void

    .line 1072
    .restart local v6       #i:I
    .restart local v7       #uids:[I
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_3

    .line 1074
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->startNavigating()V

    goto :goto_1

    .line 1077
    .end local v6           #i:I
    .end local v7           #uids:[I
    :cond_5
    new-array v0, v2, [I

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids([I)V

    .line 1080
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1083
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1084
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1085
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 899
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 903
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 13
    .parameter "state"
    .parameter "info"

    .prologue
    .line 678
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 680
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 681
    const-string v1, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_7

    const-string v0, "available"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    if-eqz p2, :cond_3

    .line 686
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v9, 0x1

    .line 688
    .local v9, dataEnabled:Z
    :goto_2
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v9, :cond_9

    const/4 v4, 0x1

    .line 689
    .local v4, networkAvailable:Z
    :goto_3
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getDefaultApn()Ljava/lang/String;

    move-result-object v6

    .line 691
    .local v6, defaultApn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 706
    :pswitch_0
    const/4 v8, 0x3

    .line 710
    .local v8, connType:I
    :goto_4
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v7

    .line 712
    .local v7, agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    if-eqz v7, :cond_a

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x4

    if-eq v8, v0, :cond_a

    .line 715
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_3

    .line 716
    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getIpAddr()Ljava/net/InetAddress;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 717
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agpsConnInfo.mIpAddr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getIpAddr()Ljava/net/InetAddress;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getCMConnType()I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getIpAddr()Ljava/net/InetAddress;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    const-string v0, "GpsLocationProvider"

    const-string v1, "call requestRouteToHostAddress failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_1
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_2
    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getAgpsType()I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v0

    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, p2, v6}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getBearerType(Landroid/net/NetworkInfo;)I
    invoke-static {v7, p2}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    .line 726
    const/4 v0, 0x2

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v7, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 769
    .end local v4           #networkAvailable:Z
    .end local v6           #defaultApn:Ljava/lang/String;
    .end local v7           #agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .end local v8           #connType:I
    .end local v9           #dataEnabled:Z
    :cond_3
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 771
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    if-nez v0, :cond_4

    .line 772
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 774
    :cond_4
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-nez v0, :cond_5

    .line 775
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 778
    :cond_5
    :goto_6
    return-void

    .line 678
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 681
    :cond_7
    const-string v0, "unavailable"

    goto/16 :goto_1

    .line 686
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 688
    .restart local v9       #dataEnabled:Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 698
    .restart local v4       #networkAvailable:Z
    .restart local v6       #defaultApn:Ljava/lang/String;
    :pswitch_1
    const/4 v8, 0x1

    .line 699
    .restart local v8       #connType:I
    goto/16 :goto_4

    .line 702
    .end local v8           #connType:I
    :pswitch_2
    const/4 v8, 0x4

    .line 703
    .restart local v8       #connType:I
    goto/16 :goto_4

    .line 728
    .restart local v7       #agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    :cond_a
    if-eqz v7, :cond_15

    const/4 v0, 0x4

    if-ne v8, v0, :cond_15

    .line 730
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1000(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1000(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 732
    :cond_b
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    .line 733
    .local v11, networkState:Landroid/net/NetworkInfo$State;
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    .line 734
    .local v10, detailedState:Landroid/net/NetworkInfo$DetailedState;
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleUpdateNetworkState for TYPE_WIFI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_c
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateNetworkState detailedstate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_d
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 737
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "GpsLocationProvider"

    const-string v1, "ERROR: handleUpdateNetworkState connect to wifi failed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_e
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #calls: Lcom/android/server/location/GpsLocationProvider$WifiState;->handleFailure()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1500(Lcom/android/server/location/GpsLocationProvider$WifiState;)V

    goto :goto_6

    .line 741
    :cond_f
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v10, v0, :cond_10

    .line 744
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleUpdateNetworkState neither connected nor disconnected... return until it is ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 747
    :cond_10
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1000(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1100(Lcom/android/server/location/GpsLocationProvider$WifiState;)Ljava/lang/String;

    move-result-object v12

    .line 748
    .local v12, ssid:Ljava/lang/String;
    :goto_7
    invoke-virtual {p0, p2, v12}, Lcom/android/server/location/GpsLocationProvider;->isWifiConnectedToSSID(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 749
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleUpdateNetworkState succeeded! wifi connected, and ssid matches expected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_11
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #calls: Lcom/android/server/location/GpsLocationProvider$WifiState;->handleSuccess()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$2200(Lcom/android/server/location/GpsLocationProvider$WifiState;)V

    goto/16 :goto_5

    .line 747
    .end local v12           #ssid:Ljava/lang/String;
    :cond_12
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1200(Lcom/android/server/location/GpsLocationProvider$WifiState;)Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    .line 752
    .restart local v12       #ssid:Ljava/lang/String;
    :cond_13
    const-string v0, "GpsLocationProvider"

    const-string v1, "isWifiConnectedToSSID returned false!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #calls: Lcom/android/server/location/GpsLocationProvider$WifiState;->handleFailure()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1500(Lcom/android/server/location/GpsLocationProvider$WifiState;)V

    goto/16 :goto_5

    .line 756
    .end local v10           #detailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v11           #networkState:Landroid/net/NetworkInfo$State;
    .end local v12           #ssid:Ljava/lang/String;
    :cond_14
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "GpsLocationProvider"

    const-string v1, "ignore wifi update if we are not in OPENING or CLOSING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 759
    :cond_15
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_16

    const-string v0, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_16
    const/4 v0, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2302(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 761
    const/4 v0, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v7, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 762
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2400(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto/16 :goto_5

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasCapability(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    .line 1301
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hibernate()V
    .locals 7

    .prologue
    .line 1293
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1294
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1295
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1297
    .local v0, now:J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1298
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 486
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private listenForBroadcasts()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 632
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 633
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    const-string v3, "sms"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 635
    const-string v3, "localhost"

    const-string v4, "7275"

    invoke-virtual {v1, v3, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 638
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 639
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    :try_start_0
    const-string v3, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 647
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 648
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    const-string v3, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 655
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 656
    .local v2, intentFilter1:Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 657
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 658
    return-void

    .line 642
    .end local v2           #intentFilter1:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 643
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "GpsLocationProvider"

    const-string v4, "Malformed SUPL init mime type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native native_agps_data_conn_closed(I)V
.end method

.method private native native_agps_data_conn_failed(I)V
.end method

.method private native native_agps_data_conn_open(ILjava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private reportAGpsStatus(II[BLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "type"
    .parameter "status"
    .parameter "ipAddr"
    .parameter "ssid"
    .parameter "password"

    .prologue
    .line 1773
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportAGpsStatus with type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ipAddr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "password = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_0
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;-><init>(Lcom/android/server/location/GpsLocationProvider;II[BLjava/lang/String;Ljava/lang/String;)V

    .line 1784
    .local v0, rasm:Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1785
    .local v7, msg:Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v7, Landroid/os/Message;->what:I

    .line 1786
    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1788
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1789
    return-void
.end method

.method private reportLocation(IDDDFFFJ)V
    .locals 11
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 1337
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    if-eqz v7, :cond_0

    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportLocation lat: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v0, p4

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " timestamp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p11

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_0
    and-int/lit16 v7, p1, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_4

    .line 1342
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "GpsLocationProvider"

    const-string v8, "WTF!!! fix fail!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_1
    const-string v7, "DCM"

    sget-object v8, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "KDDI"

    sget-object v8, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1345
    :cond_2
    iget v7, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1346
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mFallbackStart:Z

    if-nez v7, :cond_3

    .line 1347
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1348
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->fallback()V

    .line 1349
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mFallbackStart:Z

    .line 1448
    :cond_3
    :goto_0
    return-void

    .line 1357
    :cond_4
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v8

    .line 1358
    :try_start_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1359
    and-int/lit8 v7, p1, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_5

    .line 1360
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v7, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1361
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide v0, p4

    invoke-virtual {v7, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 1362
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v7, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1365
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1367
    :cond_5
    and-int/lit8 v7, p1, 0x2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_7

    .line 1368
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v7, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 1372
    :goto_1
    and-int/lit8 v7, p1, 0x4

    const/4 v9, 0x4

    if-ne v7, v9, :cond_8

    .line 1373
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1377
    :goto_2
    and-int/lit8 v7, p1, 0x8

    const/16 v9, 0x8

    if-ne v7, v9, :cond_9

    .line 1378
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v7, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1382
    :goto_3
    and-int/lit8 v7, p1, 0x10

    const/16 v9, 0x10

    if-ne v7, v9, :cond_a

    .line 1383
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v7, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1387
    :goto_4
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v7, v9}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    :try_start_1
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1394
    :goto_5
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1398
    iget v7, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    if-nez v7, :cond_c

    and-int/lit8 v7, p1, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 1399
    iget-wide v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v9, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1400
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TTFF: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_6
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1404
    :try_start_3
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1405
    .local v6, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    if-ge v3, v6, :cond_b

    .line 1406
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1408
    .local v5, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_4
    iget-object v7, v5, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    invoke-interface {v7, v9}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1405
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1370
    .end local v3           #i:I
    .end local v5           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v6           #size:I
    :cond_7
    :try_start_5
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_1

    .line 1394
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 1375
    :cond_8
    :try_start_6
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_2

    .line 1380
    :cond_9
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_3

    .line 1385
    :cond_a
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->removeAccuracy()V

    goto :goto_4

    .line 1391
    :catch_0
    move-exception v2

    .line 1392
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "GpsLocationProvider"

    const-string v9, "RemoteException calling reportLocation"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 1409
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #i:I
    .restart local v5       #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v6       #size:I
    :catch_1
    move-exception v2

    .line 1410
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v7, "GpsLocationProvider"

    const-string v9, "RemoteException in stopNavigating"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1413
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 1416
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v5           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_b
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1421
    .end local v3           #i:I
    .end local v6           #size:I
    :cond_c
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v7, :cond_e

    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v7, :cond_e

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_e

    .line 1424
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v7

    if-nez v7, :cond_d

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v8, 0xea60

    if-ge v7, v8, :cond_d

    .line 1425
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1429
    :cond_d
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "enabled"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1431
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1432
    const/4 v7, 0x2

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1435
    .end local v4           #intent:Landroid/content/Intent;
    :cond_e
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v7

    if-nez v7, :cond_10

    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v7, :cond_10

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v8, 0x2710

    if-le v7, v8, :cond_10

    .line 1437
    sget-boolean v7, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v7, :cond_f

    const-string v7, "GpsLocationProvider"

    const-string v8, "got fix, hibernating"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_f
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    .line 1442
    :cond_10
    const-string v7, "DCM"

    sget-object v8, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string v7, "KDDI"

    sget-object v8, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1443
    :cond_11
    iget v7, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1444
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    goto/16 :goto_0

    .line 1416
    :catchall_1
    move-exception v7

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v7
.end method

.method private reportNmea(J)V
    .locals 9
    .parameter "timestamp"

    .prologue
    .line 1931
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1932
    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1933
    .local v5, size:I
    if-lez v5, :cond_0

    .line 1935
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v8, v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v2

    .line 1936
    .local v2, length:I
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8, v2}, Ljava/lang/String;-><init>([BII)V

    .line 1938
    .local v4, nmea:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1939
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1941
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-object v6, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6, p1, p2, v4}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1938
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1942
    :catch_0
    move-exception v0

    .line 1943
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "GpsLocationProvider"

    const-string v8, "RemoteException in reportNmea"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1946
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1950
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #nmea:Ljava/lang/String;
    :cond_0
    monitor-exit v7

    .line 1951
    return-void

    .line 1950
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private reportStatus(I)V
    .locals 10
    .parameter "status"

    .prologue
    .line 1454
    sget-boolean v6, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportStatus status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_0
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1457
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1459
    .local v5, wasNavigating:Z
    packed-switch p1, :pswitch_data_0

    .line 1486
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v5, v6, :cond_5

    .line 1487
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1488
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 1489
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1491
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v6, :cond_3

    .line 1492
    iget-object v6, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6}, Landroid/location/IGpsStatusListener;->onGpsStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1488
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1461
    .end local v1           #i:I
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #size:I
    :pswitch_0
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1462
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1509
    .end local v5           #wasNavigating:Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1465
    .restart local v5       #wasNavigating:Z
    :pswitch_1
    const/4 v6, 0x0

    :try_start_3
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 1468
    :pswitch_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1471
    :pswitch_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 1472
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1476
    const-string v6, "LGU"

    sget-object v8, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "DCM"

    sget-object v8, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1477
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.lge.location.GPS_ENGINE_STATUS_CHANGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1478
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "com.lge.location.GPS_ENGINE_STATUS"

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1479
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1480
    sget-boolean v6, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportStatus, [LGE] GPS_ENGINE_STATUS_CHANGE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1494
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #i:I
    .restart local v3       #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v4       #size:I
    :cond_3
    :try_start_4
    iget-object v6, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "GpsLocationProvider"

    const-string v8, "RemoteException in reportStatus"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1500
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1505
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1506
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "enabled"

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v2}, Lcom/android/server/location/GpsLocationProvider$Injector;->appendUidExtra(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    .line 1507
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1509
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #size:I
    :cond_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1510
    return-void

    .line 1459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 17

    .prologue
    .line 1517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v2

    .line 1519
    .local v2, svCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v15

    .line 1520
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1521
    .local v14, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v14, :cond_0

    .line 1522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1524
    .local v13, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-object v1, v13, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/16 v16, 0x2

    aget v9, v9, v16

    invoke-interface/range {v1 .. v9}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1521
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1527
    :catch_0
    move-exception v10

    .line 1528
    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1531
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 1534
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v13           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_0
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1536
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    if-eqz v1, :cond_4

    .line 1537
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SV count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ephemerisMask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " almanacMask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v2, :cond_4

    .line 1541
    const-string v3, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sv: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v11

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " snr: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    aget v4, v4, v11

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " elev: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    aget v4, v4, v11

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " azimuth: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    aget v4, v4, v11

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v6, v6, v11

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    and-int/2addr v1, v5

    if-nez v1, :cond_1

    const-string v1, "  "

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x1

    aget v1, v1, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v6, v6, v11

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    and-int/2addr v1, v5

    if-nez v1, :cond_2

    const-string v1, "  "

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x2

    aget v1, v1, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v6, v6, v11

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    and-int/2addr v1, v5

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 1534
    .end local v11           #i:I
    .end local v14           #size:I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1541
    .restart local v11       #i:I
    .restart local v14       #size:I
    :cond_1
    const-string v1, " E"

    goto :goto_3

    :cond_2
    const-string v1, " A"

    goto :goto_4

    :cond_3
    const-string v1, "U"

    goto :goto_5

    .line 1552
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1554
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    .line 1557
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v12, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v12, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v12, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1560
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1562
    .end local v12           #intent:Landroid/content/Intent;
    :cond_5
    return-void
.end method

.method private requestRefLocation(I)V
    .locals 10
    .parameter "flags"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x3

    .line 2132
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2134
    .local v8, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 2135
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 2136
    .local v6, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 2140
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2141
    .local v2, mcc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2142
    .local v3, mnc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 2143
    .local v7, networkType:I
    if-eq v7, v5, :cond_0

    const/16 v0, 0x8

    if-eq v7, v0, :cond_0

    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    const/16 v0, 0xa

    if-ne v7, v0, :cond_1

    .line 2147
    :cond_0
    const/4 v1, 0x2

    .line 2151
    .local v1, type:I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2160
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #networkType:I
    :goto_1
    return-void

    .line 2149
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    .restart local v6       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #networkType:I
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #type:I
    goto :goto_0

    .line 2154
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v7           #networkType:I
    :cond_2
    const-string v0, "GpsLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2158
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .parameter "flags"

    .prologue
    .line 2091
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2093
    .local v2, phone:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2094
    .local v3, type:I
    const-string v0, ""

    .line 2096
    .local v0, data:Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2097
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2098
    .local v1, data_temp:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2116
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2117
    return-void

    .line 2102
    .restart local v1       #data_temp:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 2103
    const/4 v3, 0x1

    goto :goto_0

    .line 2106
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2107
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2108
    .restart local v1       #data_temp:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2112
    move-object v0, v1

    .line 2113
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    .prologue
    .line 2124
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2125
    return-void
.end method

.method private restoreOriginalNetworkPreference()V
    .locals 2

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3500(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    .line 1612
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    const/4 v1, -0x1

    #setter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$3502(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I

    .line 1613
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2167
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2168
    return-void
.end method

.method private setEngineCapabilities(I)V
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 1957
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 1959
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_0

    .line 1960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    .line 1961
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    .line 1963
    :cond_0
    return-void
.end method

.method private startNavigating()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1214
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_1

    .line 1215
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1217
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1218
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1232
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1235
    .local v3, interval:I
    :goto_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    if-ne v0, v11, :cond_5

    .line 1236
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1238
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1239
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    .end local v3           #interval:I
    :cond_1
    :goto_1
    return-void

    .line 1232
    :cond_2
    const/16 v3, 0x3e8

    goto :goto_0

    .line 1243
    .restart local v3       #interval:I
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode GPS_POSITION_MODE_MS_ASSISTED, GPS_POSITION_RECURRENCE_SINGLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1254
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1255
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1246
    :cond_5
    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v5, p0

    move v7, v4

    move v8, v3

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1248
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1249
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1260
    :cond_6
    invoke-direct {p0, v2, v4}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1262
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1265
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v4, 0xea60

    add-long/2addr v1, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v11, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1274
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 1276
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1277
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1278
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1279
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1280
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1283
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1287
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mFallbackStart:Z

    .line 1289
    return-void
.end method

.method private updateClientUids([I)V
    .locals 13
    .parameter "uids"

    .prologue
    .line 1111
    move-object v0, p1

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[I
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget v9, v0, v4

    .line 1112
    .local v9, uid1:I
    const/4 v7, 0x1

    .line 1113
    .local v7, newUid:Z
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:[I

    .local v1, arr$:[I
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v6, :cond_0

    aget v10, v1, v3

    .line 1114
    .local v10, uid2:I
    if-ne v9, v10, :cond_2

    .line 1115
    const/4 v7, 0x0

    .line 1119
    .end local v10           #uid2:I
    :cond_0
    if-eqz v7, :cond_1

    .line 1121
    :try_start_0
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v11, v9}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    :cond_1
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 1113
    .end local v4           #i$:I
    .restart local v3       #i$:I
    .restart local v10       #uid2:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1122
    .end local v10           #uid2:I
    :catch_0
    move-exception v2

    .line 1123
    .local v2, e:Landroid/os/RemoteException;
    const-string v11, "GpsLocationProvider"

    const-string v12, "RemoteException"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1129
    .end local v1           #arr$:[I
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #newUid:Z
    .end local v9           #uid1:I
    .restart local v4       #i$:I
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:[I

    .restart local v0       #arr$:[I
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[I
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v5, :cond_7

    aget v9, v0, v4

    .line 1130
    .restart local v9       #uid1:I
    const/4 v8, 0x1

    .line 1131
    .local v8, oldUid:Z
    move-object v1, p1

    .restart local v1       #arr$:[I
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v6, :cond_4

    aget v10, v1, v3

    .line 1132
    .restart local v10       #uid2:I
    if-ne v9, v10, :cond_6

    .line 1133
    const/4 v8, 0x0

    .line 1137
    .end local v10           #uid2:I
    :cond_4
    if-eqz v8, :cond_5

    .line 1139
    :try_start_1
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v11, v9}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1129
    :cond_5
    :goto_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_3

    .line 1131
    .end local v4           #i$:I
    .restart local v3       #i$:I
    .restart local v10       #uid2:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1140
    .end local v10           #uid2:I
    :catch_1
    move-exception v2

    .line 1141
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v11, "GpsLocationProvider"

    const-string v12, "RemoteException"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1147
    .end local v1           #arr$:[I
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v8           #oldUid:Z
    .end local v9           #uid1:I
    .restart local v4       #i$:I
    :cond_7
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:[I

    .line 1148
    return-void
.end method

.method private updateStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 1021
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 1022
    :cond_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1023
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1024
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1025
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1027
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    .line 1969
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1971
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 980
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 981
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 986
    :goto_0
    return-void

    .line 982
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 983
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    .line 983
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2249
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "  mFixInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    const-string v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SCHED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    :cond_3
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    :cond_4
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2260
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 915
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 916
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 921
    :goto_0
    return-void

    .line 917
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 918
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    .line 918
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getClientUids()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:[I

    return-object v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    const-string v0, "gps"

    return-object v0
.end method

.method getNavigating()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    return v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    .prologue
    .line 670
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    .line 1014
    if-eqz p1, :cond_0

    .line 1015
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1017
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 1031
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method protected handleEnable(I)V
    .locals 6
    .parameter "provider_message_type"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 928
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v2, "handleEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    .line 940
    .local v0, enabled:Z
    if-eqz v0, :cond_5

    .line 941
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 942
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 943
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 945
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 946
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 951
    :cond_2
    const-string v1, "DCM"

    sget-object v2, Lcom/android/server/location/GpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 952
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_4

    .line 953
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    if-nez v1, :cond_3

    .line 954
    const/4 v1, 0x5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 956
    :cond_3
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-nez v1, :cond_4

    .line 957
    const/4 v1, 0x6

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 968
    :cond_4
    :goto_0
    return-void

    .line 963
    :cond_5
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 964
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 965
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    const-string v1, "GpsLocationProvider"

    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 965
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1008
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    monitor-exit v1

    return v0

    .line 1009
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isWifiConnectedToSSID(Landroid/net/NetworkInfo;Ljava/lang/String;)Z
    .locals 6
    .parameter "info"
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 1748
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 1749
    .local v0, networkState:Landroid/net/NetworkInfo$DetailedState;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v3, :cond_4

    .line 1750
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;

    #getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1300(Lcom/android/server/location/GpsLocationProvider$WifiState;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1751
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifiInfo  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1753
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GpsLocationProvider"

    const-string v3, "wifi connected, and ssid matches expected!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_1
    const/4 v2, 0x1

    .line 1761
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_2
    :goto_0
    return v2

    .line 1756
    .restart local v1       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_3
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t match wifiInfo.getSSID()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1760
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_4
    sget-boolean v3, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GpsLocationProvider"

    const-string v4, "not connected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected native native_init()Z
.end method

.method protected native native_lge_gnss_command([BI)Z
.end method

.method protected native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method protected readXtraDownloadDate()V
    .locals 8

    .prologue
    .line 2764
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/ext_gps.conf"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2765
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2767
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 2768
    .local v3, properties:Ljava/util/Properties;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2769
    .local v4, stream:Ljava/io/FileInputStream;
    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2770
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 2772
    const-string v5, "XTRA_DOWNLOAD_DATE"

    const-string v6, "0"

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2773
    .local v0, date:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2775
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sput-wide v5, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadDate:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2784
    .end local v0           #date:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #properties:Ljava/util/Properties;
    .end local v4           #stream:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 2776
    .restart local v0       #date:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #properties:Ljava/util/Properties;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 2777
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to parse XTRA_DOWNLOAD_DATE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2781
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #properties:Ljava/util/Properties;
    .end local v4           #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 2782
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "GpsLocationProvider"

    const-string v6, " LG GNSS Ext ext_gps.conf File does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 2013
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSpirentWakeLock2:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2014
    const-string v7, "GpsLocationProvider"

    const-string v8, "mSpirentWakeLock2.acquire()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    const-string v7, "ro.build.target_operator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "ro.build.target_country"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "US"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2019
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSpirentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2021
    const-string v7, "GpsLocationProvider"

    const-string v8, "mSpirentWakeLock.isHeld() -release mSpirentWakeLock"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSpirentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2024
    :cond_0
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSpirentWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v8, 0x493e0

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2025
    const-string v7, "GpsLocationProvider"

    const-string v8, "mSpirentWakeLock.acquire(300000)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_1
    const-string v7, "GpsLocationProvider"

    const-string v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2042
    .local v6, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2043
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2044
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2045
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2046
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2047
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2048
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2049
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2050
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2051
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2052
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2056
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2058
    .local v1, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_2

    const-string p10, ""

    .line 2059
    :cond_2
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2062
    .local v4, extraProp:Ljava/util/Properties;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    :goto_3
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2071
    .local v3, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2044
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4           #extraProp:Ljava/util/Properties;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 2045
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 2046
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 2064
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #extraProp:Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 2066
    .local v2, e:Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2074
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_6
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2076
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2079
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSpirentWakeLock2:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2080
    const-string v7, "GpsLocationProvider"

    const-string v8, "mSpirentWakeLock2.release"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    return-void
.end method

.method protected saveXtraDownloadDate()V
    .locals 10

    .prologue
    .line 2743
    const/4 v3, 0x0

    .line 2745
    .local v3, writer:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/ext_gps.conf"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2746
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2747
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_1
    const-string v5, "%s=%d\n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "XTRA_DOWNLOAD_DATE"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-wide v8, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadDate:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2749
    .local v0, config:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2753
    if-eqz v4, :cond_0

    .line 2754
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v3, v4

    .line 2758
    .end local v0           #config:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return-void

    .line 2750
    :catch_0
    move-exception v1

    .line 2751
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v5, "GpsLocationProvider"

    const-string v6, "ext_gps.conf File save Fail"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2753
    if-eqz v3, :cond_1

    .line 2754
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2755
    :catch_1
    move-exception v1

    const-string v5, "GpsLocationProvider"

    const-string v6, "ext_gps.conf File save Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2753
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_2

    .line 2754
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2753
    :cond_2
    :goto_4
    throw v5

    .line 2755
    :catch_2
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "GpsLocationProvider"

    const-string v7, "ext_gps.conf File save Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v0       #config:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "GpsLocationProvider"

    const-string v6, "ext_gps.conf File save Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2753
    .end local v0           #config:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 2750
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1154
    .local v0, identity:J
    const/4 v2, 0x0

    .line 1156
    .local v2, result:Z
    const-string v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1157
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    .line 1170
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1171
    return v2

    .line 1158
    :cond_1
    const-string v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1159
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1160
    const/4 v2, 0x1

    goto :goto_0

    .line 1161
    :cond_2
    const-string v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1162
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_0

    .line 1163
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1164
    const/4 v2, 0x1

    goto :goto_0

    .line 1167
    :cond_3
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3
    .parameter "request"
    .parameter "source"

    .prologue
    .line 1036
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    invoke-direct {v2, p1, p2}, Lcom/android/server/location/GpsLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1037
    return-void
.end method

.method public switchUser(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 1042
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .parameter "state"
    .parameter "info"

    .prologue
    .line 674
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 675
    return-void
.end method
