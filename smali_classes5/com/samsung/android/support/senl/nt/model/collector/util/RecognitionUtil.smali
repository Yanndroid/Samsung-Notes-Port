.class public Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RECOGNIZE_SLEEP_TIME_MAX:I = 0x7a120

.field public static final RECOGNIZE_SLEEP_TIME_NONE:I

.field private static final TAG:Ljava/lang/String;

.field private static sIsRecognitionSupported:I

.field private static sIsSupportThermalFunction:Z

.field private static final sThermalStatusFactorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "RecognitionUtil"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->sIsRecognitionSupported:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->sIsSupportThermalFunction:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->sThermalStatusFactorMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecognizeSleepTime(Landroid/content/Context;I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecognizeSleepTime priority : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;->BACKGROUND:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const p0, 0x7a120

    return p0

    :cond_0
    sget-boolean p1, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->sIsSupportThermalFunction:Z

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->getRecognizeSleepTimeByThermalFactor(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getRecognizeSleepTimeByThermalFactor(Landroid/content/Context;)I
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getCurrentThermalStatus()I

    move-result p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->sThermalStatusFactorMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x48f42400    # 500000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecognizeSleepTimeByThermalFactor thermalStatus/result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecognizeSleepTimeByThermalFactor, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static initLanguageListDb(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedHandWritingRecognition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;->FRAMEWORK:Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/RecogEngineConstructor;->makeResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLanguageListDb, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static isSDKRecognitionSupported(Landroid/content/Context;)Z
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->sIsRecognitionSupported:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    sput v1, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->sIsRecognitionSupported:I

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/Spen;->isTextRecognizerEnabled(Landroid/content/Context;)Z

    move-result p0

    sput p0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->sIsRecognitionSupported:I

    :cond_0
    sget p0, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->sIsRecognitionSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedHandWritingRecognition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->isSDKRecognitionSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
