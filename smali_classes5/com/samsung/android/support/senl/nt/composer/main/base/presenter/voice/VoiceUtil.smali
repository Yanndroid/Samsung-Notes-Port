.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field public static final CONTENT:Ljava/lang/String; = "content://"

.field private static final RECORDER_TYPE_MEDIA_RECORDER:I = 0x3

.field private static final RECORDER_TYPE_NEED_TO_CHECK:I = 0x0

.field private static final RECORDER_TYPE_SEC_RECORDER:I = 0x1

.field private static final RECORDER_TYPE_SEM_RECORDER:I = 0x2

.field public static final RESTRICTION1_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy1"

.field public static final RESTRICTION2_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy2"

.field public static final RESTRICTIONPOLICY1:Ljava/lang/String; = "RestrictionPolicy1"

.field public static final RESTRICTIONPOLICY2:Ljava/lang/String; = "RestrictionPolicy2"

.field public static final RESTRICTIONPOLICY_AUDIORECORDALLOWED_METHOD:Ljava/lang/String; = "isAudioRecordAllowed"

.field public static final RESTRICTIONPOLICY_MICROPHONEASUSER_METHOD:Ljava/lang/String; = "isMicrophoneEnabled"

.field private static final TAG:Ljava/lang/String;

.field public static final TIME_SPLIT:Ljava/lang/String; = ":"

.field private static mIsGalaxyOn5ChinaModel:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;

.field private static mRecorderType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VoiceUtil"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->mRecorderType:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;->NeedToCheck:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->mIsGalaxyOn5ChinaModel:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeTimeType(Ljava/lang/String;)I
    .locals 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    add-int/lit8 v6, v2, 0x1

    int-to-double v7, v2

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v2, v4

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    move v2, v6

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static createTimeDescription(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v4

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_0
    array-length v1, v0

    if-ne v1, v4, :cond_3

    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    const-string v0, " "

    if-lez v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->hour:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    const-string v2, ""

    :goto_2
    if-lez v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->minute:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$string;->second:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "time format error, not HH:mm:ss or mm:ss"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTimeDescription "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static createTimeString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->createTimeString(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createTimeString(IZ)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/VoiceTimeDataUtils;->createTimeString(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getGalaxyOn5ChinaModelBgColor()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_NOTIFICATION_BG_COLOR"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGalaxyOn5ChinaModelBgColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getRecorderType()I
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->mRecorderType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSemDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sput v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->mRecorderType:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSdlDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    sput v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->mRecorderType:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->TAG:Ljava/lang/String;

    const-string v1, "not samsung device "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->mRecorderType:I

    :cond_2
    :goto_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->mRecorderType:I

    return v0
.end method

.method public static isCalling(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCalling] CallState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    if-eqz p0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCalling] AudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    return v0
.end method

.method public static isGalaxyOn5ChinaModel()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->mIsGalaxyOn5ChinaModel:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;->NeedToCheck:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->getGalaxyOn5ChinaModelBgColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;->GALAXY_ON_5:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->mIsGalaxyOn5ChinaModel:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->TAG:Ljava/lang/String;

    const-string v1, "isGalaxyOn5ChinaModel exception"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;->NORMAL:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->mIsGalaxyOn5ChinaModel:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->mIsGalaxyOn5ChinaModel:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;->GALAXY_ON_5:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil$DeviceModel;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static isRecorderWorking()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->getRecorderType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->isSemRecorderWorking()Z

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->isSecRecorderWorking()Z

    move-result v0

    return v0
.end method

.method private static isRecorderWorking(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecorderWorking] CallState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->TAG:Ljava/lang/String;

    const-string p1, "Exception"

    goto :goto_0

    :catch_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->TAG:Ljava/lang/String;

    const-string p1, "NoSuchMethodException"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isSecRecorderWorking()Z
    .locals 2

    const-string v0, "com.sec.android.secmediarecorder.SecMediaRecorder"

    const-string v1, "isRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->isRecorderWorking(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSemRecorderWorking()Z
    .locals 2

    const-string v0, "android.media.MediaRecorder"

    const-string v1, "semIsRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->isRecorderWorking(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updateTimeEms(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEms(I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
