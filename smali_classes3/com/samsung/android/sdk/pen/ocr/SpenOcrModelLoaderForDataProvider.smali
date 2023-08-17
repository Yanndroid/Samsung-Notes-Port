.class public Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderForDataProvider;
.super Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoaderForDataProvider"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;)V

    return-void
.end method


# virtual methods
.method public getCachedDBFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrDataProviderHelper;->getCachedFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public releaseCachedDBFilePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrDataProviderHelper;->releaseCachedDBFilePath(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public supportedLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrDataProviderHelper;->getSupportedLanguages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
