.class public final Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;
.super Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;
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

.field public static final TYPE_ADDRESS:I = 0x5

.field public static final TYPE_DATE:I = 0x4

.field public static final TYPE_DATETIME:I = 0x6

.field public static final TYPE_EMAIL:I = 0x1

.field public static final TYPE_FORMULA:I = 0x7

.field public static final TYPE_TEL:I = 0x2

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_URL:I = 0x3


# instance fields
.field private mDateTimeType:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->mType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->mDateTimeType:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(IIII)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->mType:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->mDateTimeType:I

    return-void
.end method


# virtual methods
.method public getDateTimeType()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->mType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->mDateTimeType:I

    return v0
.end method

.method public getHyperTextType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->mType:I

    return v0
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
    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->mDateTimeType:I

    :cond_2
    return-void
.end method

.method public setHyperTextType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->mType:I

    return-void
.end method
