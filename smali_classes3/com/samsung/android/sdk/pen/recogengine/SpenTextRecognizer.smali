.class public final Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$EventListener;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionListener;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;
    }
.end annotation


# static fields
.field public static final STATUS_FAILURE_INTERNAL_ERROR:I = 0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpenTextRecognizer"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

.field private mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

.field private mbFirstAddedStroke:Z

.field private mbIsCancelling:Z

.field private mbIsClosing:Z

.field private mbIsWorking:Z

.field private mbStrokeMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbFirstAddedStroke:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsClosing:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsCancelling:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbStrokeMode:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->createSpenRecognizer(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/samsung/android/sdk/pen/recogengine/SpenUninitializedException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenUninitializedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbFirstAddedStroke:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsClosing:Z

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsCancelling:Z

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbStrokeMode:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->createSpenRecognizer(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/samsung/android/sdk/pen/recogengine/SpenUninitializedException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenUninitializedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbFirstAddedStroke:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    return p1
.end method

.method private closeRecognizerManager()V
    .locals 2

    const-string v0, "SpenTextRecognizer"

    const-string v1, "closeRecognizerManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    if-nez v1, :cond_0

    const-string v1, "closeRecognizerManager() : mRecognizerManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->getPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;->destroyRecognizer(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    return-void
.end method

.method private createSpenRecognizer(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbFirstAddedStroke:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsClosing:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsCancelling:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbStrokeMode:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->closeRecognizerManager()V

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;->getInfoList()Ljava/util/List;

    move-result-object p1

    const-string v1, "SpenTextRecognizer"

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    const-string v2, "com.samsung.android.sdk.pen.recogengine.preload.SpenRecognizerPlugin"

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;->createRecognizer(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->TEXT_MULTILINE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setRecognizerType(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    return-void

    :catch_0
    move-exception p1

    const-string v2, "mRecognizer cannot be created: "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string p1, "list is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "list is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private waitUntilWorkingIsDone()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getXPoints()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getYPoints()[F

    move-result-object v1

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_6

    array-length v0, v0

    if-lez v0, :cond_5

    array-length v0, v1

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsClosing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsCancelling:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbFirstAddedStroke:Z

    if-eqz v1, :cond_2

    const-string v1, "SpenTextRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addStroke: this is the first stroke. clear all strokes if not stroke mode!, mbStrokeMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbStrokeMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbStrokeMode:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->clearStrokes()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbFirstAddedStroke:Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    const-string p1, "SpenTextRecognizer"

    const-string v0, "addstroke: this task is closing or cancelling..."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stroke y point data is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stroke x point data is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid stroke"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stroke y point data is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stroke x point data is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SpenRecognizer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addStroke([F[F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_6

    array-length v0, p1

    if-lez v0, :cond_5

    array-length v0, p2

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsClosing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsCancelling:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbFirstAddedStroke:Z

    if-eqz v1, :cond_2

    const-string v1, "SpenTextRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addStroke: this is the first stroke. clear all strokes if not stroke mode!, mbStrokeMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbStrokeMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbStrokeMode:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->clearStrokes()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbFirstAddedStroke:Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->addStroke([F[F)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    const-string p1, "SpenTextRecognizer"

    const-string p2, "addstroke: this task is closing or cancelling..."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke y point data is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke x point data is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid stroke"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke y point data is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke x point data is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpenRecognizer is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsCancelling:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel() : mbIsWorking = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenTextRecognizer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->waitUntilWorkingIsDone()V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbFirstAddedStroke:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsCancelling:Z

    return-void
.end method

.method public clearStrokes()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->clearStrokes()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpenRecognizer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsClosing:Z

    const-string v0, "SpenTextRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() : mbIsWorking = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->waitUntilWorkingIsDone()V

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->closeRecognizerManager()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsClosing:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSupportedLanguages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->getSupportedLanguage(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SpenTextRecognizer"

    const-string v1, "returned languages is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getTextEngineVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->getTextEngineVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpenRecognizer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recognize()Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsClosing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsCancelling:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    new-instance v3, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->recognize()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;-><init>(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$1;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbFirstAddedStroke:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/samsung/android/sdk/pen/recogengine/SpenIncorrectUsageException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenIncorrectUsageException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_1
    const-string v0, "SpenTextRecognizer"

    const-string v2, "recognize(): this task is closing or cancelling..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpenRecognizer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestRecognition(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionListener;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsClosing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsCancelling:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    new-instance v3, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->recognize()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;-><init>(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$1;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbFirstAddedStroke:Z

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;->getCandidates()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v2, v2

    if-lez v2, :cond_1

    invoke-interface {p1, v1, v3}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionListener;->onResult(ILcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;)V

    goto :goto_0

    :cond_1
    const-string v1, "SpenTextRecognizer"

    const-string v2, "candidates is null or zero length!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-interface {p1, v1, v3}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionListener;->onResult(ILcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenIncorrectUsageException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenIncorrectUsageException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_2
    const-string v0, "SpenTextRecognizer"

    const-string v2, "requestRecognition: this task is closing or cancelling..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionListener;->onResult(ILcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SpenRecognizer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    const-string v0, "SpenTextRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setLanguage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "language is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SpenRecognizer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLanguageData(Ljava/lang/String;[B[B)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    const-string v0, "SpenTextRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setLanguageData(Ljava/lang/String;[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "language is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpenRecognizer is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRecognitionMode(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->OVERLAY:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->CHARACTER:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->SINGLE_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    sget-object v2, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    :goto_0
    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setRecognizerType(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;)V

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->MULTI_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    sget-object v2, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->TEXT_MULTILINE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    goto :goto_0

    :cond_2
    const-string v2, "SpenTextRecognizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRecognitionMode: not support this mode, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    sget-object v3, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setRecognizerType(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->access$400(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setTextRecognitionMode(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "recognition mode is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SpenRecognizer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRecognitionType(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->access$300(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setTextRecognitionType(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbIsWorking:Z

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "recognition type is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SpenRecognizer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStrokeModeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mbStrokeMode:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setStrokeModeEnabled(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SpenRecognizer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserDictionary(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setUserDictionary(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SpenRecognizer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
