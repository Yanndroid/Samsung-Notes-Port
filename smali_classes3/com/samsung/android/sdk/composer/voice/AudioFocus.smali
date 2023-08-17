.class public Lcom/samsung/android/sdk/composer/voice/AudioFocus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/composer/voice/AudioFocus$AudioPhoneStateListener;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field private static final CONTENT:Ljava/lang/String; = "content://"

.field private static final RESTRICTION1_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy1"

.field private static final RESTRICTION2_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy2"

.field private static final RESTRICTIONPOLICY1:Ljava/lang/String; = "RestrictionPolicy1"

.field private static final RESTRICTIONPOLICY2:Ljava/lang/String; = "RestrictionPolicy2"

.field private static final RESTRICTIONPOLICY_AUDIORECORDALLOWED_METHOD:Ljava/lang/String; = "isAudioRecordAllowed"

.field private static final RESTRICTIONPOLICY_MICROPHONEASUSER_METHOD:Ljava/lang/String; = "isMicrophoneEnabled"

.field private static final TAG:Ljava/lang/String; = "AudioFocus"

.field private static mAudioDeviceCallbackListener:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener; = null

.field private static mAudioDeviceReceiver:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver; = null

.field private static mAudioManager:Landroid/media/AudioManager; = null

.field private static mBluetoothDevice:Landroid/bluetooth/BluetoothDevice; = null

.field private static mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mIsRecordingViaBluetoothEnabled:Z = false

.field private static final mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private static mPhoneListener:Lcom/samsung/android/sdk/composer/voice/AudioFocus$AudioPhoneStateListener;

.field private static final mPhoneStateLock:Ljava/lang/Object;

.field private static mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mPhoneStateLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/AudioFocus$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus$2;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/AudioFocus$2;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus$3;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/voice/AudioFocus$3;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioDeviceCallbackListener:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native Native_AudioFocus_OnAudioFocusChange(I)V
.end method

.method private static native Native_AudioFocus_OnCallStateChanged(I)V
.end method

.method private static abandonAudioFocus()V
    .locals 2

    const-string v0, "AudioFocus"

    const-string v1, "abandonAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method

.method public static synthetic access$000(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->Native_AudioFocus_OnAudioFocusChange(I)V

    return-void
.end method

.method public static synthetic access$100()Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method public static synthetic access$102(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    sput-object p0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method public static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic access$300()Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method public static synthetic access$400(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->Native_AudioFocus_OnCallStateChanged(I)V

    return-void
.end method

.method private static checkEarphonePlugged()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioDeviceReceiver:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->isWiredHeadsetConnected()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static enableRecordingViaBluetooth(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRecordingViaBluetooth() enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mIsRecordingViaBluetoothEnabled:Z

    return-void
.end method

.method private static enableSystemSound(Z)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSystemSound() mute? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v2, "enableSystemSound() exception"

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p0, :cond_3

    const/16 p0, -0x64

    invoke-virtual {v0, v4, p0, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    sget-object v4, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isWifiOnlyModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->getRingerModeInternal(Landroid/media/AudioManager;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->isZenModeEnable(Landroid/media/AudioManager;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v0, v3, p0, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-virtual {v0, v5, p0, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_2
    :try_start_0
    sget-object p0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/StatusBarWrapper;->getStatusBar(Landroid/content/Context;)Lcom/samsung/android/spen/libinterface/StatusBarInterface;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40000

    invoke-interface {p0, v0, v3}, Lcom/samsung/android/spen/libinterface/StatusBarInterface;->disable(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isWifiOnlyModel(Landroid/content/Context;)Z

    move-result p0

    const/16 v7, 0x64

    if-eqz p0, :cond_4

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->getRingerModeInternal(Landroid/media/AudioManager;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->isZenModeEnable(Landroid/media/AudioManager;I)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    invoke-virtual {v0, v3, v7, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_5
    invoke-virtual {v0, v4, v7, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    if-ne p0, v5, :cond_6

    invoke-virtual {v0, v5, v7, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_6
    :try_start_1
    sget-object p0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/StatusBarWrapper;->getStatusBar(Landroid/content/Context;)Lcom/samsung/android/spen/libinterface/StatusBarInterface;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    invoke-interface {p0, v0, v6}, Lcom/samsung/android/spen/libinterface/StatusBarInterface;->disable(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method

.method private static endListenPhoneState()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mPhoneStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mPhoneListener:Lcom/samsung/android/sdk/composer/voice/AudioFocus$AudioPhoneStateListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mPhoneListener:Lcom/samsung/android/sdk/composer/voice/AudioFocus$AudioPhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mPhoneListener:Lcom/samsung/android/sdk/composer/voice/AudioFocus$AudioPhoneStateListener;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "eLPS] Exception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static getRingerModeInternal(Landroid/media/AudioManager;)I
    .locals 4

    :try_start_0
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "getRingerModeInternal"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static getSystemSoundVolume(II)I
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-lez p0, :cond_0

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method public static isAudioDisabled()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v3, "isAudioRecordAllowed"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v0, v1

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v3, "isMicrophoneEnabled"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static isBluetoothSCOAvaiable()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    sget-boolean v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mIsRecordingViaBluetoothEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioDeviceReceiver:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->isSCODeviceConnected()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isBluetoothSCOReadyForStart()Z
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    sget-boolean v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mIsRecordingViaBluetoothEnabled:Z

    const-string v1, "AudioFocus"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "isBluetoothSCOReadyForStart() disable recording via bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->isBluetoothSCOAvaiable()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothSCOReadyForStart() isBluetoothSCOAvaiable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    move v1, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v2, v5, :cond_3

    sput-object v3, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    move v1, v4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    move v2, v1

    :cond_5
    return v2
.end method

.method public static isCalling()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCalling] AudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static isRecordingViaBluetoothEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mIsRecordingViaBluetoothEnabled:Z

    return v0
.end method

.method private static isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRestrictedByPolicy] uri string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", policyString :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioFocus"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string/jumbo p0, "true"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uri string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "false"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    const-string p0, "isRestrictedByPolicy] Exception"

    :goto_1
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    const-string p0, "isRestrictedByPolicy] Security Exception"

    goto :goto_1
.end method

.method public static isRinging()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "AudioFocus"

    const-string v1, "isRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v1
.end method

.method private static isSystemSoundDisabled(Landroid/media/AudioManager;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private static isZenModeEnable(Landroid/media/AudioManager;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static requestAudioFocus()Z
    .locals 6

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAudioFocus] context: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioFocus"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const-string v0, "requestAudioFocus] additional release audiofocus"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioManager:Landroid/media/AudioManager;

    sget-object v3, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioManager:Landroid/media/AudioManager;

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioManager:Landroid/media/AudioManager;

    sget-object v3, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v5, :cond_2

    const-string v0, "requestAudioFocus: Granted"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const-string v0, "requestAudioFocus: Failed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioDeviceReceiver:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {p0, v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioDeviceCallbackListener:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;-><init>(Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceCallbackListener;Landroid/content/Context;)V

    :goto_0
    sput-object p0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mAudioDeviceReceiver:Lcom/samsung/android/sdk/composer/voice/SpenAudioDeviceReceiver;

    :cond_3
    return-void
.end method

.method private static setRecordingViaBluetooth(Z)Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    sget-boolean v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mIsRecordingViaBluetoothEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecordingViaBluetooth() enable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioFocus"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->registerBluetoothScoReceiver()V

    const-string/jumbo p0, "setRecordingViaBluetooth() bluetooth start"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "setRecordingViaBluetooth() bluetooth stop"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->unregisterScoBluetoothReceiver()V

    :goto_0
    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public static setSystemSoundVolume(Landroid/media/AudioManager;III)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_1

    if-ltz v0, :cond_0

    if-ne v0, p3, :cond_1

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    return-void
.end method

.method private static startListenPhoneState()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mPhoneStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mPhoneListener:Lcom/samsung/android/sdk/composer/voice/AudioFocus$AudioPhoneStateListener;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/samsung/android/sdk/composer/voice/AudioFocus$AudioPhoneStateListener;

    invoke-direct {v2}, Lcom/samsung/android/sdk/composer/voice/AudioFocus$AudioPhoneStateListener;-><init>()V

    sput-object v2, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->mPhoneListener:Lcom/samsung/android/sdk/composer/voice/AudioFocus$AudioPhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "sLPS] Exception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
