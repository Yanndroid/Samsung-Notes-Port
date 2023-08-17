.class public Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x17
.end annotation


# static fields
.field private static final DELAYED_SEND_MESSAGE:I = 0x2ee

.field private static final DELAY_LISTEN_CONNECTED_BT_PROFILE:I = 0x0

.field private static final DELAY_LISTEN_DISCONNECTED_BT_PROFILE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenAudioDeviceReceiver"


# instance fields
.field private mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDelayHandler:Landroid/os/Handler;

.field private mIsA2DPDeviceConnected:Z

.field private mIsSCODeviceConnected:Z

.field private mIsWiredHeadsetConnected:Z

.field private mListener:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mListener:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mDelayHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mIsWiredHeadsetConnected:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mIsSCODeviceConnected:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mIsA2DPDeviceConnected:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenAudioDeviceReceiver"

    invoke-static {v0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mListener:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mContext:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioManager:Landroid/media/AudioManager;

    new-instance p1, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$1;-><init>(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mDelayHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->registerAudioDeviceCallback()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mListener:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mIsWiredHeadsetConnected:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mIsWiredHeadsetConnected:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->isWiredHeadsetDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->isBluetoothA2DPDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$502(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mIsA2DPDeviceConnected:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->isBluetoothSCODevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$702(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mIsSCODeviceConnected:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mDelayHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->isWiredHeadSetPlugged()Z

    move-result p0

    return p0
.end method

.method private initAudioDeviceCallback()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_0

    const-string v0, "SpenAudioDeviceReceiver"

    const-string v1, "mAudioDeviceCallback is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver$2;-><init>(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    return-void
.end method

.method private isBluetoothA2DPDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isBluetoothSCODevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWiredHeadSetPlugged()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->isWiredHeadsetDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private isWiredHeadsetDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private registerAudioDeviceCallback()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->initAudioDeviceCallback()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "SpenAudioDeviceReceiver"

    const-string v1, "registerAudioDeviceCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterAudioDeviceCallback()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "SpenAudioDeviceReceiver"

    const-string/jumbo v1, "unregisterAudioDeviceCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->unregisterAudioDeviceCallback()V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mDelayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mDelayHandler:Landroid/os/Handler;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mListener:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public isA2DPDeviceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mIsA2DPDeviceConnected:Z

    return v0
.end method

.method public isSCODeviceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mIsSCODeviceConnected:Z

    return v0
.end method

.method public isWiredHeadsetConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->mIsWiredHeadsetConnected:Z

    return v0
.end method
