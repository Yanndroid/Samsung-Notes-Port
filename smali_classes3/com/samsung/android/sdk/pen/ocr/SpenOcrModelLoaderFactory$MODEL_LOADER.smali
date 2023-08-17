.class public final enum Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODEL_LOADER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

.field public static final enum ASSETS:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

.field public static final enum ONEUI41:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

.field public static final enum PROVIDER:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    const-string v1, "PROVIDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->PROVIDER:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    new-instance v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    const-string v3, "ONEUI41"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->ONEUI41:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    new-instance v3, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    const-string v5, "ASSETS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->ASSETS:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->$VALUES:[Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->$VALUES:[Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    return-object v0
.end method
