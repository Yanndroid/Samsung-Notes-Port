.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;
    }
.end annotation


# static fields
.field private static final DEFAULT_PEN_SIZE:F = 11.0f

.field private static final DEFAULT_PEN_SIZE_LEVEL:I = 0x18

.field private static final FILE_PATH_PEN_GARAGE_POSITION:Ljava/lang/String; = "/sys/class/sec/sec_epen/input/device/of_node/wacom,spen_garage_pos"

.field private static final PEN_GARAGE_POSITION_RIGHT_MODEL_NAMES:[Ljava/lang/String;

.field private static final SEM_SPEN_WRITING_COLOR:Ljava/lang/String; = "spen_writing_color"

.field private static final SEM_SPEN_WRITING_COLOR_SWITCH:Ljava/lang/String; = "spen_writing_color_switch"

.field private static final TAG:Ljava/lang/String;

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mCurrentPairedColor:I

.field private static mCurrentPairedColorCode:Ljava/lang/String;

.field private static mEnabledWritingColorSwitch:Z

.field private static mPenPositionType:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

.field private static mPreInitialized:Z

.field private static mSavedPairedColorCode:Ljava/lang/String;

.field private static mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const-string v0, "PenInfoModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    const-string v1, "N97"

    const-string v2, "N77"

    const-string v3, "SCV45"

    const-string v4, "SC-01M"

    const-string v5, "N96"

    const-string v6, "SCV40"

    const-string v7, "SC-01L"

    const-string v8, "N95"

    const-string v9, "SCV37"

    const-string v10, "SC-01K"

    const-string v11, "N93"

    const-string v12, "SCV34"

    const-string v13, "SC-01J"

    const-string v14, "N92"

    const-string v15, "N91"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->PEN_GARAGE_POSITION_RIGHT_MODEL_NAMES:[Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;->LEFT:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mPenPositionType:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mPreInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor()I
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    return v0
.end method

.method public static getCurrentPairedColor()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColor:I

    return v0
.end method

.method public static getCurrentPairedColorCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnabledWritingColorSwitch()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mEnabledWritingColorSwitch:Z

    return v0
.end method

.method public static getPenPositionType()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mPenPositionType:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    return-object v0
.end method

.method public static getSavedPairedColorCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSavedPairedColorCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getSizeLevel()I
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    return v0
.end method

.method public static getSpenSettingPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mPreInitialized:Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->initPairedColorCode()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->initCurrentPairedColor()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->initSettingPenInfo()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->initPenPositionType()V

    return-void
.end method

.method public static initCurrentPairedColor()V
    .locals 5

    const-string v0, "DEF"

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$1;->$SwitchMap$com$samsung$android$support$senl$nt$composer$main$screenoff$model$statical$PenPairedColorModel$PAIRED_COLOR_TYPE:[I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel;->getPairedColorType()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel$PAIRED_COLOR_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mEnabledWritingColorSwitch:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel;->getPairedColorSet()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getDeviceColorCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCurrentPairedColor# deviceColorCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    :cond_3
    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCurrentPairedColor# colorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel;->getPairedColorSet()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCurrentPairedColor# error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel;->getPairedColorSet()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColor:I

    :goto_1
    return-void
.end method

.method public static initPairedColorCode()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spen_writing_color_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mEnabledWritingColorSwitch:Z

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spen_writing_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->loadPairedColorCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSavedPairedColorCode:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPairedColorCode# enabledWritingColorSwitch/currentPairedColorCode/savedPairedColorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mEnabledWritingColorSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSavedPairedColorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initPenPositionType()V
    .locals 7

    const-string v0, "initPenPositionType# "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/sec_epen/input/device/of_node/wacom,spen_garage_pos"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initPenPositionType# str.charAt(0) "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v4, v3, :cond_0

    const-string v3, "initPenPositionType# left"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;->LEFT:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    :goto_0
    sput-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mPenPositionType:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    goto :goto_2

    :cond_0
    const-string v3, "initPenPositionType# right"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;->RIGHT:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->isRightPenPositionType()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;->RIGHT:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    sput-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mPenPositionType:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPenPositionType# model/mPenPositionType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mPenPositionType:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    throw v2
.end method

.method public static initSettingPenInfo()V
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isDpSize:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->loadColorData()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->loadSizeData()F

    move-result v2

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->loadSizeLevelData()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettingPenInfo# color/size/sizeLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "#%06X"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isPreInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mPreInitialized:Z

    return v0
.end method

.method private static isRightPenPositionType()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getModelName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRightPenPositionType# modelName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->PEN_GARAGE_POSITION_RIGHT_MODEL_NAMES:[Ljava/lang/String;

    array-length v4, v2

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    return v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRightPenPositionType# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public static loadColorData()I
    .locals 6

    const-string v0, "_spensettings_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "KEY_SETTING_PEN_INFO_COLOR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadColorData# not contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    sget v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColor:I

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "#%06X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColor:I

    return v0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->screenoff_pen_color_default:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getColor(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static loadPairedColorCode()Ljava/lang/String;
    .locals 3

    const-string v0, "ScreenOffMemoPref"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "SavedPairedColorCode"

    const-string v2, "DEF"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadSizeData()F
    .locals 3

    const-string v0, "_spensettings_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "KEY_SETTING_PEN_INFO"

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static loadSizeLevelData()I
    .locals 3

    const-string v0, "_spensettings_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "KEY_SETTING_PEN_INFO_SIZE_LEVEL"

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mPreInitialized:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->saveData()V

    return-void
.end method

.method private static saveColorData(I)V
    .locals 2

    const-string v0, "_spensettings_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "KEY_SETTING_PEN_INFO_COLOR"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static saveData()V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveData# color/size/sizeLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v5, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "#%06X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->saveColorData(I)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->saveSizeData(F)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->saveSizeLevelData(I)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mCurrentPairedColorCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->savePairedColorCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static savePairedColorCode(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ScreenOffMemoPref"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "SavedPairedColorCode"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static saveSizeData(F)V
    .locals 2

    const-string v0, "_spensettings_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "KEY_SETTING_PEN_INFO"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private static saveSizeLevelData(I)V
    .locals 2

    const-string v0, "_spensettings_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "KEY_SETTING_PEN_INFO_SIZE_LEVEL"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setColor(I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iput p0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->saveColorData(I)V

    return-void
.end method

.method public static setSize(FI)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iput p0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->saveSizeData(F)V

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->mSpenSettingPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget p0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->saveSizeLevelData(I)V

    return-void
.end method
