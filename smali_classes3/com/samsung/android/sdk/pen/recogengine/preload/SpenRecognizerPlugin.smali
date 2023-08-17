.class public Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;
    }
.end annotation


# static fields
.field private static final LIBNAME:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SpenRecognizerPlugin"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngine:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "SPenRecognizerDocument"

    const-string v1, "SPenRecognizerShape"

    const-string v2, "SPenRecognizerSolver"

    const-string v3, "SPenRecognizer"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->LIBNAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    return-void
.end method

.method private checkEngine()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenRecognizerPlugin"

    const-string v1, "Handwriting recognition engine is not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDocumentData(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;)[[B
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;->ASSETS:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->getDocumentData(Landroid/content/Context;)[[B

    move-result-object p0

    return-object p0
.end method

.method public static getLanguageData(Landroid/content/Context;Ljava/lang/String;)[[B
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    sget-object v2, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;->FRAMEWORK:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;)V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->isSupportedLanguage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Supported language = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->getSupportedLanguages()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpenRecognizerPlugin"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderImpl;->getLanguageData(Landroid/content/Context;Ljava/lang/String;)[[B

    move-result-object p0

    return-object p0
.end method

.method private getSPenRecognizerLibraryName()Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSPenRecognizerLibraryName] Android SDK Level is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenRecognizerPlugin"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string v0, "SPenRecognizer"

    return-object v0

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const-string v0, "SPenRecognizerV10"

    return-object v0

    :cond_1
    const-string v0, "SPenRecognizerV09"

    return-object v0
.end method

.method private getTextNativeLibraryName()Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTextNativeLibraryName] Android SDK Level is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenRecognizerPlugin"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string v0, "SDKRecognitionText.spensdk.samsung"

    goto :goto_0

    :cond_0
    const-string v0, "SDKRecognitionText"

    :goto_0
    return-object v0
.end method

.method private setOneUIVersion(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SpenRecognizerPlugin"

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;

    move-result-object p1

    const-string v1, "ro.build.version.oneui"

    invoke-virtual {p1, v1}, Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "[0-9]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_SetOneUIVersion(JI)V

    goto :goto_1

    :cond_0
    const-string p1, "Cannot get One UI version!"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get OneUI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addHwrDataWith(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SpenRecognizerPlugin"

    const-string p2, "input stroke size is zero!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getXPoints()[F

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getYPoints()[F

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v2, Ll3/a;->a:Ll3/a;

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_AddHwrDataWithStrokes(J[ILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    const-string v0, "SpenRecognizerPlugin"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getXPoints()[F

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getYPoints()[F

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v1

    if-eqz v3, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenSize()F

    move-result p1

    invoke-static {v3, v4, v1, v2, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_AddStroke(J[F[FF)V

    return-void

    :cond_0
    const-string p1, "Unavailable stroke"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "Invalid parameter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "parameter is null"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    const-string v0, "SpenRecognizerPlugin"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getXPoints()[F

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getYPoints()[F

    move-result-object v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    array-length v1, v3

    if-eqz v1, :cond_0

    array-length v1, v4

    if-eqz v1, :cond_0

    new-instance v6, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;

    invoke-direct {v6}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;-><init>()V

    invoke-virtual {v6, p2}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;->setListener(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenSize()F

    move-result v5

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_AddStroke(J[F[FFLcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;)V

    return-void

    :cond_0
    const-string p1, "Unavailable stroke"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/security/InvalidParameterException;

    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "Invalid parameter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "parameter is null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addStroke([F[F)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    const-string v0, "SpenRecognizerPlugin"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1, p2, v2}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_AddStroke(J[F[FF)V

    return-void

    :cond_0
    const-string p1, "Unavailable stroke"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/security/InvalidParameterException;

    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "Invalid parameter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "parameter is null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_Cancel(J)V

    return-void
.end method

.method public clearHwrDataList()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_ClearHwrDataList(J)V

    return-void
.end method

.method public clearStrokes()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_ClearStrokes(J)V

    return-void
.end method

.method public close()V
    .locals 5

    const-string v0, "SpenRecognizerPlugin"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_Destroy(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getDisplayMetrics()[F
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_GetDisplayMetrics(J)[F

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_GetLanguage(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    return-wide v0
.end method

.method public getPrivateKeyHint()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getRecognizerType()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_GetRecognizerType(J)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->values()[Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->getValue()I

    move-result v5

    if-ne v0, v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->DEFAULT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    return-object v0
.end method

.method public getTextEngineVersion()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_GetTextEngineVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextRecognitionMode()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_GetTextRecognitionMode(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;->values()[Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;->MULTI_LINE:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;

    return-object v0
.end method

.method public getTextRecognitionType()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_GetTextRecognitionType(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;->values()[Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;->TEXT_PLAIN:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;

    return-object v0
.end method

.method public onLoad(Landroid/content/Context;)V
    .locals 9

    const-string v0, "Text Recognition Library is not loaded : "

    const-string v1, "SpenRecognizerPlugin"

    const-string v2, "Load libraries"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/Spen;->isTextRecognizerEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->getTextNativeLibraryName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text Recognition Library Name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text Recognition Library is loaded : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spen.IS_SPEN_PRELOAD_MODE = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/sdk/pen/Spen;->IS_SPEN_PRELOAD_MODE:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->LIBNAME:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Library Name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/samsung/android/sdk/pen/Spen;->IS_SPEN_PRELOAD_MODE:Z

    const-string v6, ".so is not loaded."

    const-string v7, "lib"

    if-nez v5, :cond_1

    const-string v5, "SPenRecognizer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->getSPenRecognizerLibraryName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Modified Library Name is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_1
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Library is loaded : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/lib/lib"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".so"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_2
    invoke-static {v5}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_3
    const-string v0, "All libraries are loaded!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_Construct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    return-void

    :cond_4
    const-string p1, "Text recognition is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onUnload()V
    .locals 5

    const-string v0, "SpenRecognizerPlugin"

    const-string v1, "onUnload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_Destroy(J)V

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mContext:Landroid/content/Context;

    return-void
.end method

.method public recognize()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_Recognize(J)J

    move-result-wide v0

    new-instance v2, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultContainer;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultContainer;-><init>(J)V

    return-object v2
.end method

.method public recognize(FF)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_Recognize(JFF)J

    move-result-wide p1

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultContainer;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultContainer;-><init>(J)V

    return-object v0
.end method

.method public recognize(I)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_Recognize(JI)J

    move-result-wide v0

    new-instance p1, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultContainer;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultContainer;-><init>(J)V

    return-object p1
.end method

.method public request(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;->setListener(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_Request(JLcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;)V

    return-void
.end method

.method public request(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;FF)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;->setListener(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v1, v2, v0, p2, p3}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_Request(JLcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;FF)V

    return-void
.end method

.method public setAnalyzerData([B)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_SetDocumentAnalyzerData(J[B)Z

    return-void

    :cond_0
    const-string p1, "SpenRecognizerPlugin"

    const-string v0, "analyzer data is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConfigurationItem(Ljava/lang/String;F)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_SetConfigurationItem(JLjava/lang/String;F)V

    return-void
.end method

.method public setDisplayMetrics(FF)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_SetDisplayMetrics(JFF)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->getLanguageData(Landroid/content/Context;Ljava/lang/String;)[[B

    move-result-object v0

    const-string v1, "SpenRecognizerPlugin"

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    aget-object v3, v0, v2

    array-length v4, v0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    aget-object v0, v0, v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v3, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->setLanguageData(Ljava/lang/String;[B[B)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;->DOCUMENT:Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->getDocumentData(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;)[[B

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLanguage : docData length = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    if-lez v0, :cond_1

    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->setAnalyzerData([B)V

    :cond_1
    array-length v0, p1

    if-le v0, v6, :cond_2

    aget-object p1, p1, v6

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->setLineSplitterData([B)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->setDisplayMetrics(FF)V

    return-void

    :cond_3
    const-string p1, "document data missing"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported language: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLanguageData(Ljava/lang/String;[B[B)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    const-string v0, "SpenRecognizerPlugin"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->setOneUIVersion(Landroid/content/Context;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v1, v2, p1, p2, p3}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_SetLanguageData(JLjava/lang/String;[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Cannot set language data!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/security/InvalidParameterException;

    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "Invalid parameter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "parameter is null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLineSplitterData([B)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_SetDocumentLineSplitterData(J[B)Z

    return-void

    :cond_0
    const-string p1, "SpenRecognizerPlugin"

    const-string v0, "line splitter data is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMathData([B)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "SpenRecognizerPlugin"

    const-string v0, "math data is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setRecognizerType(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->values()[Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_SetRecognizerType(JI)V

    return-void
.end method

.method public setStrokeModeEnabled(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_SetTextRecognitionStrokeMode(JZ)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SpenRecognizerPlugin"

    const-string v0, "cannot set stroke mode"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setTextRecognitionMode(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_SetTextRecognitionMode(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setTextRecognitionType(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->mEngine:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizer_SetTextRecognitionType(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setUserDictionary(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin;->checkEngine()V

    return-void
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
