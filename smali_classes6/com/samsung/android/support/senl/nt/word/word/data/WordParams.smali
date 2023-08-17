.class public Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;
.super Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;
.source "SourceFile"


# static fields
.field public static final INCH_TO_DP:I = 0xa0

.field public static final LEFT_INDENTATION:D = -42.0

.field public static final LONG_INDENTATION:D = -237.0

.field public static final MARGIN:I = 0x24

.field public static final MARGIN_TOP:D = -18.0

.field public static final NORMAL_INDENTATION:D = -42.0

.field public static final TEXT_RECOGNIZE_DEFAULT_FONT_SIZE:I = 0x14

.field public static sSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sizeInLong:[D

.field private static final sizeInNormal:[D

.field private static final sizeInNotes:[I


# instance fields
.field public sizeInWords:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x38

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sizeInNotes:[I

    new-array v1, v0, [D

    fill-array-data v1, :array_1

    sput-object v1, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sizeInNormal:[D

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sizeInLong:[D

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1e
        0x1f
        0x20
        0x21
        0x23
        0x24
        0x25
        0x27
        0x28
        0x29
        0x2b
        0x2c
        0x2d
        0x2f
        0x30
        0x31
        0x33
        0x34
        0x35
        0x37
        0x38
        0x39
        0x3b
        0x3c
        0x3d
        0x40
        0x41
        0x45
    .end array-data

    :array_1
    .array-data 8
        0x3ff8000000000000L    # 1.5
        0x400c000000000000L    # 3.5
        0x4014000000000000L    # 5.0
        0x401c000000000000L    # 7.0
        0x4022000000000000L    # 9.0
        0x4025000000000000L    # 10.5
        0x4029000000000000L    # 12.5
        0x402d000000000000L    # 14.5
        0x4030000000000000L    # 16.0
        0x4032000000000000L    # 18.0
        0x4034000000000000L    # 20.0
        0x4035800000000000L    # 21.5
        0x4037800000000000L    # 23.5
        0x4039800000000000L    # 25.5
        0x403b000000000000L    # 27.0
        0x403d800000000000L    # 29.5
        0x403e800000000000L    # 30.5
        0x4040400000000000L    # 32.5
        0x4041000000000000L    # 34.0
        0x4042000000000000L    # 36.0
        0x4042c00000000000L    # 37.5
        0x4044000000000000L    # 40.0
        0x4045800000000000L    # 43.0
        0x4045c00000000000L    # 43.5
        0x4046400000000000L    # 44.5
        0x4048400000000000L    # 48.5
        0x4048800000000000L    # 49.0
        0x404a800000000000L    # 53.0
        0x404b400000000000L    # 54.5
        0x404d000000000000L    # 58.0
        0x404d800000000000L    # 59.0
        0x404e800000000000L    # 61.0
        0x4050000000000000L    # 64.0
        0x4050000000000000L    # 64.0
        0x4050800000000000L    # 66.0
        0x4051400000000000L    # 69.0
        0x4052c00000000000L    # 75.0
        0x4052c00000000000L    # 75.0
        0x4053000000000000L    # 76.0
        0x4053a00000000000L    # 78.5
        0x4054000000000000L    # 80.0
        0x4055000000000000L    # 84.0
        0x4056200000000000L    # 88.5
        0x4056200000000000L    # 88.5
        0x4056400000000000L    # 89.0
        0x4057000000000000L    # 92.0
        0x4057400000000000L    # 93.0
        0x4057c00000000000L    # 95.0
        0x4057c00000000000L    # 95.0
        0x4057c00000000000L    # 95.0
        0x4057c00000000000L    # 95.0
        0x4058000000000000L    # 96.0
        0x4058000000000000L    # 96.0
        0x405cc00000000000L    # 115.0
        0x405cc00000000000L    # 115.0
        0x405e000000000000L    # 120.0
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4004000000000000L    # 2.5
        0x400c000000000000L    # 3.5
        0x4014000000000000L    # 5.0
        0x4018000000000000L    # 6.0
        0x401e000000000000L    # 7.5
        0x4021000000000000L    # 8.5
        0x4024000000000000L    # 10.0
        0x4026000000000000L    # 11.0
        0x4029000000000000L    # 12.5
        0x402b000000000000L    # 13.5
        0x402e000000000000L    # 15.0
        0x4030800000000000L    # 16.5
        0x4031800000000000L    # 17.5
        0x4033000000000000L    # 19.0
        0x4034000000000000L    # 20.0
        0x4035000000000000L    # 21.0
        0x4037000000000000L    # 23.0
        0x4038000000000000L    # 24.0
        0x4039800000000000L    # 25.5
        0x403a800000000000L    # 26.5
        0x403c000000000000L    # 28.0
        0x403d000000000000L    # 29.0
        0x403e000000000000L    # 30.0
        0x403e800000000000L    # 30.5
        0x4040c00000000000L    # 33.5
        0x4040c00000000000L    # 33.5
        0x4041c00000000000L    # 35.5
        0x4042800000000000L    # 37.0
        0x4043800000000000L    # 39.0
        0x4044800000000000L    # 41.0
        0x4045000000000000L    # 42.0
        0x4046000000000000L    # 44.0
        0x4046000000000000L    # 44.0
        0x4047000000000000L    # 46.0
        0x4048000000000000L    # 48.0
        0x4049c00000000000L    # 51.5
        0x404b400000000000L    # 54.5
        0x404b400000000000L    # 54.5
        0x404bc00000000000L    # 55.5
        0x404c000000000000L    # 56.0
        0x404cc00000000000L    # 57.5
        0x404e000000000000L    # 60.0
        0x404e000000000000L    # 60.0
        0x404f000000000000L    # 62.0
        0x4051000000000000L    # 68.0
        0x4051400000000000L    # 69.0
        0x4051400000000000L    # 69.0
        0x4051800000000000L    # 70.0
        0x4052000000000000L    # 72.0
        0x4052000000000000L    # 72.0
        0x4053000000000000L    # 76.0
        0x4053000000000000L    # 76.0
        0x4053a00000000000L    # 78.5
        0x4054000000000000L    # 80.0
        0x4055400000000000L    # 85.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;-><init>()V

    const/16 v0, 0x52b

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    const/16 v0, 0x74e

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->configFontSize()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;-><init>()V

    const/16 v0, 0x52b

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    const/16 v0, 0x74e

    iput v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    const/16 v0, 0x10e

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x852

    invoke-virtual {p0, p1, v1, p1, v0}, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->setMargin(IIII)V

    const-wide v0, -0x3f92600000000000L    # -237.0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mBgLeftIndentation:D

    sget-object p1, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sizeInLong:[D

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sizeInWords:[D

    goto :goto_0

    :cond_0
    const/16 p1, 0x177

    invoke-virtual {p0, p1, v1, p1, v0}, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->setMargin(IIII)V

    const-wide/high16 v0, -0x3fbb000000000000L    # -42.0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mBgLeftIndentation:D

    sget-object p1, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sizeInNormal:[D

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sizeInWords:[D

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->configFontSize()V

    return-void
.end method

.method private configFontSize()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sSize:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sizeInNotes:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sSize:Ljava/util/HashMap;

    sget-object v3, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sizeInNotes:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFontSize(I)D
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getFontSizeDelta()I

    move-result v0

    sub-int/2addr p1, v0

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sizeInNotes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sizeInWords:[D

    sget-object v1, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;->sSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getSizesRecognize()[Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public getTextRecognizeDefaultFontSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public setMargin(IIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginLeft:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginRight:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginTop:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mMarginBottom:I

    return-void
.end method
