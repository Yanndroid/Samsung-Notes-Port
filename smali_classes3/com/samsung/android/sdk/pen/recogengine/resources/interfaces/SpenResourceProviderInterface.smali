.class public interface abstract Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;,
        Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$ResourceType;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDefaultLocale(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResourceData(Lcom/samsung/android/sdk/pen/recogengine/resources/interfaces/SpenResourceProviderInterface$EngineType;Ljava/lang/String;)[[B
.end method

.method public abstract getSupportedLanguages()[Ljava/lang/String;
.end method

.method public abstract isSupportedLanguage(Ljava/lang/String;)Z
.end method

.method public abstract setRootDirectory(Ljava/lang/String;)V
.end method
