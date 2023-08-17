.class public Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NAVIGATION_MODE:Ljava/lang/String; = "navigation_mode"

.field private static final SETTINGS_GESTURE_NAVIGATION_BAR:Ljava/lang/String; = "navigation_bar_gesture_while_hidden"

.field private static final TAG:Ljava/lang/String; = "SettingsCompat"

.field private static final UPSM_MODE_KEY:Ljava/lang/String; = "ultra_powersaving_mode"

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;


# instance fields
.field private mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;

.field private mIsRDUModel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mIsRDUModel:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTestInstance(I)Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;)V

    return-object v0
.end method


# virtual methods
.method public checkSetupWizardDone(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "SettingsCompat"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "device_provisioned"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSetupWizardDone, SetupWizard state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    return v0

    :cond_0
    return v1

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSetupWizardDone: Exception] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getAndroidDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEasyMode(Landroid/content/Context;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;->getEasyMode(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getEasyModeUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;->getEasyModeUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalFontSize(Landroid/content/Context;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;->getGlobalFontSize(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getPenDetachOption(Landroid/content/Context;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;->getPenDetachOption(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getPenUsageDetected(Landroid/content/Context;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;->getPenUsageDetected(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public hasGestureNavigationBar(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SettingsCompat"

    const-string v1, "hasGestureNavigationBar, context is null"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "navigation_bar_gesture_while_hidden"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isAirViewSettingEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "pen_hovering"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public isHideNavigationMode(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "navigation_mode"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SettingsCompat"

    const-string v1, "IllegalArgumentException Hide Navigation Mode"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isHighTextContrastEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "high_text_contrast_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isRDUModel(Landroid/content/Context;)Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mIsRDUModel:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "shopdemo"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mIsRDUModel:I

    goto :goto_2

    :cond_2
    :goto_1
    return v1

    :cond_3
    :goto_2
    iget p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mIsRDUModel:I

    if-ne p1, v2, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public isScreenOffMemoEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "screen_off_memo"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public isShowButtonBackground(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "show_button_background"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SettingsCompat"

    const-string v1, "IllegalArgumentException Show button background"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isShowImeWithHardKeyboardEnabled(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "show_ime_with_hard_keyboard"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsCompat"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public isShowImeWithHardKeyboardEnabledForDex(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;
    .locals 6

    const-string v0, "SettingsCompat"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v3, "keyboard_dex"

    const-string v4, "key"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "def"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v4, "content://0@com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v5, "getSettings"

    invoke-virtual {p1, v4, v5, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const-string v3, "1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V

    return-object v2

    :cond_1
    const-string p1, "isShowImeWithHardKeyboardEnabledForDex# fail"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Failed to get settings"

    invoke-static {v0, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public isUPSM(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;

    invoke-interface {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;->getMinimalBatteryUse(Landroid/content/Context;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v1, v0

    :catch_1
    const-string p1, "SettingsCompat"

    const-string v2, "IllegalArgumentException UPSM"

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    :goto_1
    return v0
.end method
