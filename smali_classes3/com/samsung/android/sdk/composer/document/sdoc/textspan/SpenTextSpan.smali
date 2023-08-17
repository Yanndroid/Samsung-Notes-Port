.class public Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATETIME_TYPE_ENGLISH_DATE:I = 0x5

.field public static final DATETIME_TYPE_ENGLISH_DATE_TIME:I = 0x7

.field public static final DATETIME_TYPE_ENGLISH_KEYWORD_DATE:I = 0x9

.field public static final DATETIME_TYPE_ENGLISH_KEYWORD_TIME:I = 0xa

.field public static final DATETIME_TYPE_ENGLISH_TIME:I = 0x6

.field public static final DATETIME_TYPE_ENGLISH_TIME_DATE:I = 0x8

.field public static final DATETIME_TYPE_KOREAN_DATE:I = 0xb

.field public static final DATETIME_TYPE_KOREAN_DATE_TIME:I = 0xd

.field public static final DATETIME_TYPE_KOREAN_KEYWORD_DATE:I = 0xf

.field public static final DATETIME_TYPE_KOREAN_KEYWORD_TIME:I = 0x10

.field public static final DATETIME_TYPE_KOREAN_TIME:I = 0xc

.field public static final DATETIME_TYPE_KOREAN_TIME_DATE:I = 0xe

.field public static final DATETIME_TYPE_NONE:I = 0x0

.field public static final DATETIME_TYPE_STANDARD_DATE:I = 0x1

.field public static final DATETIME_TYPE_STANDARD_DATE_TIME:I = 0x3

.field public static final DATETIME_TYPE_STANDARD_TIME:I = 0x2

.field public static final DATETIME_TYPE_STANDARD_TIME_DATE:I = 0x4

.field public static final DATETIME_TYPE_WESTERN_DATE:I = 0x11

.field public static final DATETIME_TYPE_WESTERN_DATE_TIME:I = 0x12

.field public static final DATETIME_TYPE_WESTERN_KEYWORD_DATE:I = 0x14

.field public static final DATETIME_TYPE_WESTERN_KEYWORD_TIME:I = 0x15

.field public static final DATETIME_TYPE_WESTERN_TIME_DATE:I = 0x13

.field public static final HYPERTEXT_TYPE_ADDRESS:I = 0x4

.field public static final HYPERTEXT_TYPE_DATETIME:I = 0x5

.field public static final HYPERTEXT_TYPE_EMAIL:I = 0x2

.field public static final HYPERTEXT_TYPE_FORMULA:I = 0x6

.field public static final HYPERTEXT_TYPE_NONE:I = 0x0

.field public static final HYPERTEXT_TYPE_PHONE:I = 0x3

.field public static final HYPERTEXT_TYPE_URL:I = 0x1

.field public static final SPAN_EXCLUSIVE_EXCLUSIVE:I = 0x2

.field public static final SPAN_EXCLUSIVE_INCLUSIVE:I = 0x3

.field public static final SPAN_INCLUSIVE_EXCLUSIVE:I = 0x0

.field public static final SPAN_INCLUSIVE_INCLUSIVE:I = 0x1

.field private static final SPAN_VERSION:I = 0x1

.field public static final TYPE_BACKGROUND_COLOR:I = 0x13

.field public static final TYPE_BOLD:I = 0xb

.field public static final TYPE_COMPOSING:I = 0x12

.field public static final TYPE_COMPOSING_BACKGROUND_COLOR:I = 0x11

.field public static final TYPE_COMPOSING_TAG:I = 0x14

.field public static final TYPE_FONT_SIZE:I = 0xf

.field public static final TYPE_FOREGROUND_COLOR:I = 0xe

.field public static final TYPE_HYPERTEXT:I = 0x10

.field public static final TYPE_ITALIC:I = 0xc

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_UNDERLINE:I = 0xd


# instance fields
.field private mArg1:I

.field private mArg2:I

.field private mCustomData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnd:I

.field private mExpansion:I

.field private mFontSize:F

.field private mStart:I

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mStart:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mEnd:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mExpansion:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg2:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mFontSize:F

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->init(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mStart:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mEnd:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mExpansion:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg2:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mFontSize:F

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->init(IIII)V

    return-void
.end method

.method private init(IIII)V
    .locals 3

    const/16 v0, 0x14

    const/16 v1, 0xb

    const/4 v2, 0x3

    if-lt p1, v1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    if-ltz p4, :cond_2

    if-le p4, v2, :cond_3

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_3
    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    iput p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mStart:I

    iput p3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mEnd:I

    iput p4, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mExpansion:I

    if-eq p1, v1, :cond_4

    const/16 p2, 0xc

    if-eq p1, p2, :cond_4

    const/16 p2, 0xd

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_4

    if-ne p1, v0, :cond_5

    :cond_4
    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    :cond_5
    return-void
.end method

.method private readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/16 v2, 0x402

    new-array v2, v2, [B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x2

    mul-int/2addr v0, v4

    :goto_0
    const/16 v5, 0x400

    const/4 v6, 0x0

    if-le v0, v5, :cond_1

    invoke-virtual {p1, v2, v6, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    add-int/lit16 v0, v0, -0x400

    const/16 v8, 0x3fe

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v8, v4

    const/16 v9, 0x36

    if-ne v8, v9, :cond_0

    if-lt v0, v4, :cond_0

    invoke-virtual {p1, v2, v5, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v5

    add-int/2addr v7, v5

    sub-int/2addr v0, v5

    :cond_0
    new-instance v5, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-lez v0, :cond_3

    invoke-virtual {p1, v2, v6, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    new-instance v0, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v6, p1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    if-lez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public copy(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getStart()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getEnd()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->setPosition(II)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->setExpansion(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getComposingBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->setComposingBackgroundColor(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getHypertextType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->setHypertextType(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getDateTimeType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->setDateTimeType(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getFontSize()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->setFontSize(F)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getForegroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->setForegroundColor(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->isPropertyEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->setProrpertyEnabled(Z)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getBackgroundColor()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/high16 v0, -0x1000000

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    return v0
.end method

.method public getBinarySize()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x24

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getComposingBackgroundColor()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    return v0
.end method

.method public getCustomData(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDateTimeType()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg2:I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mEnd:I

    return v0
.end method

.method public getExpansion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mExpansion:I

    return v0
.end method

.method public getFontSize()F
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mFontSize:F

    return v0
.end method

.method public getForegroundColor()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/high16 v0, -0x1000000

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    return v0
.end method

.method public getHypertextType()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mStart:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    return v0
.end method

.method public hasCustomData(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPropertyEnabled()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0x12

    if-eq v0, v2, :cond_1

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public isSame(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getStart()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getEnd()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getExpansion()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getBackgroundColor()I

    move-result v1

    if-ne p1, v1, :cond_1

    return v2

    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getComposingBackgroundColor()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getComposingBackgroundColor()I

    move-result v1

    if-ne p1, v1, :cond_1

    return v2

    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getHypertextType()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getHypertextType()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getDateTimeType()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getDateTimeType()I

    move-result v1

    if-ne p1, v1, :cond_1

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getFontSize()F

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getFontSize()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getForegroundColor()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getForegroundColor()I

    move-result v1

    if-ne p1, v1, :cond_1

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->isPropertyEnabled()Z

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->isPropertyEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_1

    return v2

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public readBinary(Ljava/io/RandomAccessFile;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mStart:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mEnd:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mExpansion:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readBinary() type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / end : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / extension : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mExpansion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextSpan"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mFontSize:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    :goto_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg2:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readBinary() FontSize : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mFontSize:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " / mArg1 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / mArg2 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readBinary() customSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    :cond_0
    return-void
.end method

.method public setComposingBackgroundColor(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    :cond_0
    return-void
.end method

.method public setCustomData(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDateTimeType(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x15

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg2:I

    :cond_2
    return-void
.end method

.method public setExpansion(I)V
    .locals 1

    const/4 v0, 0x3

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mExpansion:I

    return-void
.end method

.method public setFontSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mFontSize:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    :cond_0
    return-void
.end method

.method public setHypertextType(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    :cond_2
    return-void
.end method

.method public setPosition(II)V
    .locals 1

    if-le p1, p2, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mStart:I

    iput p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mEnd:I

    return-void
.end method

.method public setProrpertyEnabled(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    :cond_1
    return-void
.end method

.method public writeBinary(Ljava/io/RandomAccessFile;)Z
    .locals 5

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mStart:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mEnd:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mExpansion:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeBinary() type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / end : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / extension : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mExpansion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenTextSpan"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mType:I

    const/16 v3, 0xf

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mFontSize:F

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeFloat(F)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :goto_0
    iget v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg2:I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeBinary() mFontSize : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mFontSize:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " / mArg1 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / mArg2 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mArg2:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeBinary() customSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->mCustomData:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return v0
.end method
