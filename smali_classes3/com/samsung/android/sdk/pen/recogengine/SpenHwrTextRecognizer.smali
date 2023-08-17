.class public final Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$EventListener;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionListener;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$Result;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionMode;,
        Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionType;
    }
.end annotation


# static fields
.field public static final STATUS_FAILURE_INTERNAL_ERROR:I = 0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpenHwrTextRecognizer"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

.field private mbIsClosing:Z

.field private mbIsRecognizing:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsRecognizing:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsClosing:Z

    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;
    :try_end_0
    .catch Lcom/samsung/android/sdk/handwriting/UninitializedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/samsung/android/sdk/pen/recogengine/SpenUninitializedException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenUninitializedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsRecognizing:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsClosing:Z

    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;
    :try_end_0
    .catch Lcom/samsung/android/sdk/handwriting/UninitializedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/samsung/android/sdk/pen/recogengine/SpenUninitializedException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenUninitializedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getXPoints()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getYPoints()[F

    move-result-object p1

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_3

    array-length v1, v0

    if-lez v1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsClosing:Z

    if-eqz v1, :cond_0

    const-string p1, "SpenHwrTextRecognizer"

    const-string v0, "addstroke: this task is closing..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->addStroke([F[F)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stroke y point data is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stroke x point data is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid stroke"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stroke y point data is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stroke x point data is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SpenRecognizer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addStroke([F[F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_2

    array-length v0, p2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsClosing:Z

    if-eqz v0, :cond_0

    const-string p1, "SpenHwrTextRecognizer"

    const-string p2, "addstroke: this task is closing..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->addStroke([F[F)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke y point data is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke x point data is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid stroke"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke y point data is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke x point data is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpenRecognizer is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()V
    .locals 2

    const-string v0, "SpenHwrTextRecognizer"

    const-string v1, "cancel() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsRecognizing:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->cancel()V
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

.method public clearStrokes()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->clearStrokes()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpenRecognizer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsClosing:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close() : mbIsRecognizing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsRecognizing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenHwrTextRecognizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsRecognizing:Z

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
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mContext:Landroid/content/Context;

    return-void
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

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->getSupportedLanguages()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mRecognizer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recognize()Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$Result;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsClosing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "SpenHwrTextRecognizer"

    const-string v2, "recognize(): this task is closing..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsRecognizing:Z

    new-instance v2, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$Result;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->recognize()Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$Result;-><init>(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$1;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mbIsRecognizing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v2

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
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpenRecognizer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestRecognition(Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$EventListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$EventListener;-><init>(Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$1;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$EventListener;->setListener(Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionListener;)V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->requestRecognition(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenIncorrectUsageException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenIncorrectUsageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SpenRecognizer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "SpenHwrTextRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->setLanguage(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "language is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p2, "SpenHwrTextRecognizer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "language = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "There is no API to set language data!!"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpenRecognizer is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRecognitionMode(Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionMode;->access$200(Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionMode;)Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->setRecognitionMode(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "recognition mode is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SpenRecognizer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRecognitionType(Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionType;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionType;->access$100(Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionType;)Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->setRecognitionType(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->setStrokeModeEnabled(Z)V

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

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;->mRecognizer:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->setUserDictionary(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "mRecognizer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
