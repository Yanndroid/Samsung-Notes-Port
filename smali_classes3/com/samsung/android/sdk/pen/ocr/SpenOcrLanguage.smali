.class public final enum Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

.field public static final enum AUTO:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

.field public static final enum CHINESE:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

.field public static final enum ENGLISH:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

.field public static final enum FRENCH:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

.field public static final enum GERMAN:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

.field public static final enum ITALIAN:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

.field public static final enum KOREAN:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

.field public static final enum PORTUGUESE:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

.field public static final enum SPANISH:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;


# instance fields
.field private final languageCode:Ljava/lang/String;

.field private final ocrLanguage:Lcom/samsung/android/sdk/ocr/OCRLanguage;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRLanguage;->AUTO:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const-string v2, "AUTO"

    const/4 v3, 0x0

    const-string v4, "auto"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ocr/OCRLanguage;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->AUTO:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    new-instance v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    sget-object v2, Lcom/samsung/android/sdk/ocr/OCRLanguage;->ENGLISH:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const-string v4, "ENGLISH"

    const/4 v5, 0x1

    const-string v6, "en_US"

    invoke-direct {v1, v4, v5, v2, v6}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ocr/OCRLanguage;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->ENGLISH:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    new-instance v2, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    sget-object v4, Lcom/samsung/android/sdk/ocr/OCRLanguage;->FRENCH:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const-string v6, "FRENCH"

    const/4 v7, 0x2

    const-string v8, "fr_FR"

    invoke-direct {v2, v6, v7, v4, v8}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ocr/OCRLanguage;Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->FRENCH:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    new-instance v4, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    sget-object v6, Lcom/samsung/android/sdk/ocr/OCRLanguage;->GERMAN:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const-string v8, "GERMAN"

    const/4 v9, 0x3

    const-string v10, "de_DE"

    invoke-direct {v4, v8, v9, v6, v10}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ocr/OCRLanguage;Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->GERMAN:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    new-instance v6, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    sget-object v8, Lcom/samsung/android/sdk/ocr/OCRLanguage;->ITALIAN:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const-string v10, "ITALIAN"

    const/4 v11, 0x4

    const-string v12, "it_IT"

    invoke-direct {v6, v10, v11, v8, v12}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ocr/OCRLanguage;Ljava/lang/String;)V

    sput-object v6, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->ITALIAN:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    new-instance v8, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    sget-object v10, Lcom/samsung/android/sdk/ocr/OCRLanguage;->SPANISH:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const-string v12, "SPANISH"

    const/4 v13, 0x5

    const-string v14, "es_ES"

    invoke-direct {v8, v12, v13, v10, v14}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ocr/OCRLanguage;Ljava/lang/String;)V

    sput-object v8, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->SPANISH:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    new-instance v10, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    sget-object v12, Lcom/samsung/android/sdk/ocr/OCRLanguage;->KOREAN:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const-string v14, "KOREAN"

    const/4 v15, 0x6

    const-string v13, "ko_KR"

    invoke-direct {v10, v14, v15, v12, v13}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ocr/OCRLanguage;Ljava/lang/String;)V

    sput-object v10, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->KOREAN:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    new-instance v12, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    sget-object v13, Lcom/samsung/android/sdk/ocr/OCRLanguage;->PORTUGUESE:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const-string v14, "PORTUGUESE"

    const/4 v15, 0x7

    const-string v11, "pt_PT"

    invoke-direct {v12, v14, v15, v13, v11}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ocr/OCRLanguage;Ljava/lang/String;)V

    sput-object v12, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->PORTUGUESE:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    new-instance v11, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    sget-object v13, Lcom/samsung/android/sdk/ocr/OCRLanguage;->CHINESE:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const-string v14, "CHINESE"

    const/16 v15, 0x8

    const-string/jumbo v9, "zh_CN"

    invoke-direct {v11, v14, v15, v13, v9}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ocr/OCRLanguage;Ljava/lang/String;)V

    sput-object v11, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->CHINESE:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    const/16 v9, 0x9

    new-array v9, v9, [Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    aput-object v0, v9, v3

    aput-object v1, v9, v5

    aput-object v2, v9, v7

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v8, v9, v0

    const/4 v0, 0x6

    aput-object v10, v9, v0

    const/4 v0, 0x7

    aput-object v12, v9, v0

    aput-object v11, v9, v15

    sput-object v9, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->$VALUES:[Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/ocr/OCRLanguage;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ocr/OCRLanguage;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->ocrLanguage:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->languageCode:Ljava/lang/String;

    return-void
.end method

.method public static from(Lcom/samsung/android/sdk/ocr/OCRLanguage;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->values()[Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->toOCRLanguage()Lcom/samsung/android/sdk/ocr/OCRLanguage;

    move-result-object v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->ENGLISH:Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->$VALUES:[Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    return-object v0
.end method


# virtual methods
.method public toLanguageCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public toOCRLanguage()Lcom/samsung/android/sdk/ocr/OCRLanguage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->ocrLanguage:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    return-object v0
.end method
