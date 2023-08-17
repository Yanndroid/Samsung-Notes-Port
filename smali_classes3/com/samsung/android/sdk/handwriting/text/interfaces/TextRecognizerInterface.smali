.class public interface abstract Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;,
        Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;
    }
.end annotation


# virtual methods
.method public abstract addStroke([F[F)V
.end method

.method public abstract addStroke([F[FI)V
.end method

.method public abstract addStroke([I[I)V
.end method

.method public abstract addStroke([I[II)V
.end method

.method public abstract cancel()V
.end method

.method public abstract clearStrokes()V
.end method

.method public abstract dispose()V
.end method

.method public abstract getSupportedLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract recognize()Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;
.end method

.method public abstract removeStroke(I)V
.end method

.method public abstract request()V
.end method

.method public abstract setAsyncMode(Z)V
.end method

.method public abstract setBaseline(II)V
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method

.method public abstract setLanguageData(Ljava/lang/String;[B[B)V
.end method

.method public abstract setListener(Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;)V
.end method

.method public abstract setPositiveScaleIndicator(FFF)V
.end method

.method public abstract setRecognitionMode(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionMode;)V
.end method

.method public abstract setRecognitionType(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionType;)V
.end method

.method public abstract setStrokeMode(Z)V
.end method

.method public abstract setUserDictionary(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
