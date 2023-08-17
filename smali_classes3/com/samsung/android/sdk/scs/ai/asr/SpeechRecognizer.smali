.class public Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechRecognizer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInnerListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

.field private final mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mInnerListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->cancel()V

    return-void
.end method

.method public getSupportedLocales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getSupportedLocales(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->init()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->release()V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/io/InputStream;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getConnectionType()Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->get(Landroid/content/Context;Ljava/util/Locale;Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Lcom/samsung/android/sdk/scs/ai/asr/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isAvailable()Z

    move-result v1

    const-string v2, "SpeechRecognizer"

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->start(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/io/InputStream;)V

    const-string/jumbo p1, "started"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getErrorCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "start failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mInnerListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Can NOT start recognizer"

    invoke-interface {p2, p1, v1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;->onError(ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
