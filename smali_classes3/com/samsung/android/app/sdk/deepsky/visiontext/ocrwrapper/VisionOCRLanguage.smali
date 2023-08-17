.class public abstract enum Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Companion;,
        Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$All;,
        Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$English;,
        Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Korean;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\r\u0010\u0007\u001a\u00020\u0008H \u00a2\u0006\u0002\u0008\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;",
        "",
        "id",
        "",
        "(Ljava/lang/String;II)V",
        "getId",
        "()I",
        "getConvertedId",
        "Lcom/samsung/android/sdk/ocr/OCRLanguage;",
        "getConvertedId$deepsky_sdk_2_2_9_release",
        "All",
        "English",
        "Korean",
        "Companion",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

.field public static final enum All:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum English:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

.field public static final enum Korean:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->All:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->English:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->Korean:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$All;

    const-string v1, "All"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$All;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->All:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$English;

    const-string v1, "English"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$English;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->English:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Korean;

    const-string v1, "Korean"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Korean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->Korean:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->$values()[Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->id:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;
    .locals 1

    const-class v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    return-object v0
.end method


# virtual methods
.method public abstract getConvertedId$deepsky_sdk_2_2_9_release()Lcom/samsung/android/sdk/ocr/OCRLanguage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->id:I

    return v0
.end method
