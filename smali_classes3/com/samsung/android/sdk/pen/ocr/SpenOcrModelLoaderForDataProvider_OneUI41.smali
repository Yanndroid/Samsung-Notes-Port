.class public Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderForDataProvider_OneUI41;
.super Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoaderForDataProvider_OneUI41"

.field private static final mSupportedLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->ENGLISH:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->toLanguageCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->KOREAN:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->toLanguageCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderForDataProvider_OneUI41;->mSupportedLanguages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderBase;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrModelManager;)V

    return-void
.end method


# virtual methods
.method public getCachedDBFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)Ljava/lang/String;
    .locals 0

    const-string p1, "LoaderForDataProvider_OneUI41"

    const-string p2, "getCachedDBFilePath : Not supported in One UI 4.1"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public releaseCachedDBFilePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p1, "LoaderForDataProvider_OneUI41"

    const-string p2, "releaseCachedDBFilePath : Not supported in One UI 4.1"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderForDataProvider_OneUI41;->mSupportedLanguages:Ljava/util/List;

    return-object v0
.end method
