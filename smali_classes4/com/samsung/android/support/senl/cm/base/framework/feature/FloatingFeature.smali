.class public Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mAntiGreenishColor:I

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;


# instance fields
.field private mEnabledSamsungCloudSettingMenu:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;

.field private mSupportBixby:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mSupportBixby:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mEnabledSamsungCloudSettingMenu:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;

    return-void
.end method

.method public static getAntiGreenishColor()I
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mAntiGreenishColor:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_CONFIG_REPLACE_COLOR_FOR_DARKMODE"

    const-string v2, "#FF171717"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mAntiGreenishColor:I

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mAntiGreenishColor:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/FloatingFeatureImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/FloatingFeatureImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/FloatingFeatureImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isEnabledSamsungCloudSettingMenu()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mEnabledSamsungCloudSettingMenu:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v1, 0x1

    const-string v2, "SEC_FLOATING_FEATURE_SAMSUNGCLOUD_ENABLE_SETTING_MENU"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mEnabledSamsungCloudSettingMenu:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mEnabledSamsungCloudSettingMenu:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSupportBixby()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mSupportBixby:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v1, 0x0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mSupportBixby:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->mSupportBixby:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->booleanValue()Z

    move-result v0

    return v0
.end method
