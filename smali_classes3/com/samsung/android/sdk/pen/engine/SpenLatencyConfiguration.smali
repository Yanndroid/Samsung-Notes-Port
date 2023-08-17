.class public Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenLatencyConf"

.field private static mIsChromeOS:Z = false

.field private static mIsInitializedPenAntiAliasEnabled:Z = false

.field private static mIsPenAntiAliasEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "org.chromium.arc"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "org.chromium.arc.device_management"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    sput-boolean p1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsChromeOS:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Is Chrome OS = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsChromeOS:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenLatencyConf"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean p1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsChromeOS:Z

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->Native_setAppRuntimeForChrome(Z)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->updateRefreshRate()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isTouchAnalysisEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->Native_executeTouchAnalysis()V

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getHwRotation()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->Native_setHWRotation(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getHwRefreshRate()F

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->Native_setHWRefreshRate(F)V

    return-void
.end method

.method private static native Native_executeTouchAnalysis()V
.end method

.method private static native Native_getPredictionType()I
.end method

.method private static native Native_setAppRuntimeForChrome(Z)V
.end method

.method private static native Native_setHWRefreshRate(F)V
.end method

.method private static native Native_setHWRotation(I)V
.end method

.method private static native Native_setScreenOrientation(III)V
.end method

.method private static native Native_setUniformLatency(Z)V
.end method

.method private static native Native_updatePredictionType(I)V
.end method

.method private static native Native_updateRefreshRate(F)V
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->updateRefreshRate()V

    return-void
.end method

.method private getHwRefreshRate()F
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1DeviceRefreshRate;

    const-string v2, "SM-T87"

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1DeviceRefreshRate;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1DeviceRefreshRate;

    const-string v2, "SM-T97"

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1DeviceRefreshRate;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x7

    if-ge v2, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1DeviceRefreshRate;

    iget-object v4, v2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1DeviceRefreshRate;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v0, v2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1DeviceRefreshRate;->displayRefreshRate:F

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHwRefreshRate deviceModelName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_3

    const-string v1, "IN LIST"

    goto :goto_1

    :cond_3
    const-string v1, "NOT IN LIST"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenLatencyConf"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_2
    return v3
.end method

.method private getHwRotation()I
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    const-string v2, "SM-T54"

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    const-string v2, "SM-T83"

    const/4 v3, 0x3

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    const-string v2, "SM-T86"

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    const-string v2, "SM-T97"

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    const-string v2, "SM-F92"

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    const-string v2, "SM-X80"

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    const-string v2, "SM-X90"

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    const-string v2, "SM-X71"

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    const-string v2, "SM-X81"

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    const-string v2, "SM-X91"

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    const-string v2, "dedede"

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_1

    iget-object v4, v2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, v2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;->rotation:I

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHwRotation deviceModelName : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    const-string v1, "IN LIST"

    goto :goto_0

    :cond_3
    const-string v1, "NOT IN LIST"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenLatencyConf"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private getSupportPredictionInModel()I
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isDeviceSupportStylus()Z

    move-result v2

    const-string v3, "SpenLatencyConf"

    if-nez v2, :cond_1

    const-string v0, "S-pen feature is not support on device, so prediction don\'t support."

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget-boolean v2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsChromeOS:Z

    const-string v4, "getSupportPredictionInModel "

    if-eqz v2, :cond_3

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$2;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;)V

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " device is in chromeDevicePrediction list prediction id = "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2
    return v1

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x7

    if-lt v2, v5, :cond_5

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$3;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;)V

    new-instance v6, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$4;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;)V

    const/4 v7, 0x6

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_4

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :cond_4
    if-eqz v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sets "

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not support prediction."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private isDeviceSupportStylus()Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsChromeOS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v2, v3}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public static declared-synchronized isPenAntiAliasEnabled()Z
    .locals 7

    const-class v0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsInitializedPenAntiAliasEnabled:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsPenAntiAliasEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    const-string v1, "SM-P61"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x7

    if-ge v3, v5, :cond_1

    goto :goto_3

    :cond_1
    move v3, v4

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v5, :cond_3

    aget-object v6, v1, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_1
    sput-boolean v5, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsInitializedPenAntiAliasEnabled:Z

    sput-boolean v4, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsPenAntiAliasEnabled:Z

    const-string v1, "SpenLatencyConf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPenAntiAliasEnabled deviceModelName : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_4

    const-string v2, "IN LIST"

    goto :goto_2

    :cond_4
    const-string v2, "NOT IN LIST"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsPenAntiAliasEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :cond_5
    :goto_3
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isSupportFrontBufferRendering()Z
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SGH-N582"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SM-N93"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SM-N950U"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-boolean v2, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsChromeOS:Z

    const/4 v3, 0x1

    const-string v4, "SpenLatencyConf"

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportFrontBufferRendering Chrome OS deviceModelName : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  NOT IN LIST"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x7

    if-ge v2, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isDeviceSupportStylus()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "S-pen is not support by device, FBR feature is disabled"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportFrontBufferRendering deviceModelName : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_5

    const-string v1, "IN LIST"

    goto :goto_0

    :cond_5
    const-string v1, "NOT IN LIST"

    goto :goto_0

    :cond_6
    :goto_1
    return v5
.end method

.method private isTouchAnalysisEnabled()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isDeviceSupportStylus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getSupportPredictionInModel()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->Native_updatePredictionType(I)V

    return v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "SM-T39"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "SM-P58"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private updateRefreshRate()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->Native_updateRefreshRate(F)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->Native_setScreenOrientation(III)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getSupportPrediction()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->Native_getPredictionType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getSupportPredictionInModel()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getVisibleRects(Landroid/view/View;Lcom/samsung/android/sdk/pen/view/SpenDisplay;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/samsung/android/sdk/pen/view/SpenDisplay;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string p1, "SpenLatencyConf"

    const-string p2, "Failed. Not attached to layout!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/util/Pair;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v2, v4, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, p1, v1, v3}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget v0, v3, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    aget p1, v0, v4

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget p1, p2, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->widthPixels:I

    iget p2, p2, Lcom/samsung/android/sdk/pen/view/SpenDisplay;->heightPixels:I

    invoke-virtual {v2, v4, v4, p1, p2}, Landroid/graphics/Rect;->intersect(IIII)Z

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public isChromeOS()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->mIsChromeOS:Z

    return v0
.end method

.method public isFrontBufferRenderingSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->isSupportFrontBufferRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setUniformLatencyEnabled(Z)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->Native_setUniformLatency(Z)V

    return-void
.end method

.method public updateHWInfo(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getHwRotation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->setHWRotation(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getHwRefreshRate()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->setHWRefreshRate(F)V

    :cond_0
    return-void
.end method
