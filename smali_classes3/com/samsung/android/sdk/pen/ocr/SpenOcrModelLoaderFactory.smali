.class public Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createModelLoader(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;)Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelLoader;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->PROVIDER:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderForDataProvider;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderForDataProvider;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;)V

    return-object p2

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->ONEUI41:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderForDataProvider_OneUI41;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderForDataProvider_OneUI41;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;)V

    return-object p2

    :cond_1
    new-instance p2, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderForLocalAssetFile;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderForLocalAssetFile;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;)V

    return-object p2
.end method
