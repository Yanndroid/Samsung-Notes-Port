.class public interface abstract Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenLanguageRecognitionInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognitionInterface;


# virtual methods
.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getSupportedLanguage()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method
