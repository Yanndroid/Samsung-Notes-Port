.class public interface abstract Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createRecognizer()Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;
.end method

.method public abstract createTypeClassifier()Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;
.end method

.method public abstract getCachedDBFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Ljava/lang/String;
.end method

.method public abstract isSupportedLanguage(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;)Z
.end method

.method public abstract loadLanguageDB(Ljava/lang/String;)Z
.end method

.method public abstract releaseCachedDBFilePath(Landroid/content/Context;Ljava/lang/String;)V
.end method
