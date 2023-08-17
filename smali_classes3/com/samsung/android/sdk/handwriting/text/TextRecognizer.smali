.class public final Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;,
        Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;,
        Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;,
        Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;
    }
.end annotation


# static fields
.field public static final STATUS_FAILURE_INTERNAL_ERROR:I = 0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TextRecognizer"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mAsyncMode:Z

.field private mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

.field private mEventListener:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;

.field private mLanguage:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;

.field private mRecognizeCount:I

.field private mStrokeCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mAsyncMode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mListener:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mStrokeCount:I

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mRecognizeCount:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLanguage:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$1;-><init>(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEventListener:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isTextRecognizerAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Async mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/GSIMLogger;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDLAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "framework recognizer is not supported"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDKAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "recognizer in sdk starts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->setAsyncModeEnabled(Z)V

    return-void

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    const-string p2, "Text Recognizer is not available"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->TAG:Ljava/lang/String;

    const-string p2, "Recognizer SDK for Text Recognizer has not been initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mAsyncMode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mListener:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mStrokeCount:I

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mRecognizeCount:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLanguage:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$1;-><init>(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEventListener:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isTextRecognizerAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Async mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", framework library use = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/GSIMLogger;->init(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDLAvailable()Z

    move-result p3

    if-eqz p3, :cond_0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDKAvailable()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;-><init>(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDKAvailable()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;-><init>(Landroid/content/Context;Z)V

    :goto_1
    iput-object p3, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDLAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz p1, :cond_4

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->setAsyncModeEnabled(Z)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " SDL apis: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDLAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " SDK apis: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/Recognizer;->isSDKAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    const-string p2, "Text Recognizer is not available"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->TAG:Ljava/lang/String;

    const-string p2, "Recognizer SDK for Text Recognizer has not been initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/handwriting/UninitializedException;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/handwriting/UninitializedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;)Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mListener:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;

    return-object p0
.end method

.method private static create(Landroid/content/Context;Z)Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private static create(Landroid/content/Context;ZZ)Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;-><init>(Landroid/content/Context;ZZ)V

    return-object v0
.end method

.method private setAsyncModeEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->setAsyncMode(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mAsyncMode:Z

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setListener(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEventListener:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->setListener(Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mListener:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addStroke([F[F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_2

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, p2

    if-lez v1, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->addStroke([F[F)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mStrokeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mStrokeCount:I

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke y point data is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke x point data is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid stroke"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke y point data is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "stroke x point data is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Engine is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->cancel()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mStrokeCount:I

    return-void
.end method

.method public clearStrokes()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->clearStrokes()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mStrokeCount:I

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->dispose()V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEventListener:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEventListener:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mListener:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mListener:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mStrokeCount:I

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mRecognizeCount:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLanguage:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "recognizer closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->getSupportedLanguages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeOfEngineIstance()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, v0, Lcom/samsung/android/sdk/handwriting/text/impl/TextRecognizerImpl;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public recognize()Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mStrokeCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mAsyncMode:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mStrokeCount:I

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mRecognizeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mRecognizeCount:I

    const-string v0, "TN"

    const-string v2, "Count"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/handwriting/GSIMLogger;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    invoke-interface {v2}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->recognize()Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;-><init>(Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$1;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/IncorrectUsageException;

    const-string v1, "Sync API is not allowed in Async mode."

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/handwriting/text/IncorrectUsageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestRecognition(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mStrokeCount:I

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$2;-><init>(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mAsyncMode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mStrokeCount:I

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mRecognizeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mRecognizeCount:I

    const-string v0, "TN"

    const-string v1, "Count"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/handwriting/GSIMLogger;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->setListener(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->request()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/handwriting/text/IncorrectUsageException;

    const-string v0, "Async API is not allowed in Sync mode."

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/handwriting/text/IncorrectUsageException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Engine is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TL"

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/handwriting/GSIMLogger;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p1, "skipped because the language is already set"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->setLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLanguage:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "language is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Engine is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLanguageData(Ljava/lang/String;[B[B)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TL"

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/handwriting/GSIMLogger;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p1, "skipped because the language is already set"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->setLanguageData(Ljava/lang/String;[B[B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLanguage:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "language is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Engine is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRecognitionConfigs(Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(1/3) language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(2/3) recognition type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(3/3) recognition mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo p1, "skipped because the language is already set"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "TL"

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/handwriting/GSIMLogger;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->setLanguage(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLanguage:Ljava/lang/String;

    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->URL:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;

    if-ne p2, p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognition type ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is deprecated!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->TEXT_PLAIN:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognition type is changed to ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->setRecognitionType(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    invoke-interface {p1, p3}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->setRecognitionMode(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "recognition mode is null.."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "recognition type is null.."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "language is null.."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Engine is null.."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRecognitionMode(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recognition mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->setRecognitionMode(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "recognition mode is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Engine is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRecognitionType(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recognition type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->URL:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;

    if-ne p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognition type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is deprecated!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->TEXT_PLAIN:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognition type is changed to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->setRecognitionType(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "recognition type is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Engine is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStrokeModeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->setStrokeMode(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Engine is null"

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

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->mEngine:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;->setUserDictionary(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Engine is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
