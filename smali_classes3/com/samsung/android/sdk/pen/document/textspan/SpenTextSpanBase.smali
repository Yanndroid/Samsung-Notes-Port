.class public Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILTER_SPAN_ALL:I = 0x3fffff

.field public static final FILTER_SPAN_BACKGROUND_COLOR:I = 0x20000

.field public static final FILTER_SPAN_BOLD:I = 0x20

.field public static final FILTER_SPAN_COMPOSING:I = 0x10000

.field public static final FILTER_SPAN_COMPOSING_BACKGROUND_COLOR:I = 0x8000

.field public static final FILTER_SPAN_COMPOSING_TAG:I = 0x40000

.field public static final FILTER_SPAN_FONT_NAME:I = 0x10

.field public static final FILTER_SPAN_FONT_SIZE:I = 0x8

.field public static final FILTER_SPAN_FOREGROUND_COLOR:I = 0x2

.field public static final FILTER_SPAN_HYPER_TEXT:I = 0x200

.field public static final FILTER_SPAN_ITALIC:I = 0x40

.field public static final FILTER_SPAN_STRIKETHROUGH:I = 0x100000

.field public static final FILTER_SPAN_SUGGESTION:I = 0x200000

.field public static final FILTER_SPAN_TIME_STAMP:I = 0x80000

.field public static final FILTER_SPAN_UNDERLINE:I = 0x80

.field public static final SPAN_EXCLUSIVE_EXCLUSIVE:I = 0x2

.field public static final SPAN_EXCLUSIVE_INCLUSIVE:I = 0x3

.field public static final SPAN_INCLUSIVE_EXCLUSIVE:I = 0x0

.field public static final SPAN_INCLUSIVE_INCLUSIVE:I = 0x1

.field public static final TYPE_BACKGROUND_COLOR:I = 0x11

.field public static final TYPE_BOLD:I = 0x5

.field public static final TYPE_COMPOSING:I = 0x10

.field public static final TYPE_COMPOSING_BACKGROUND_COLOR:I = 0xf

.field public static final TYPE_COMPOSING_TAG:I = 0x12

.field public static final TYPE_FONT_NAME:I = 0x4

.field public static final TYPE_FONT_SIZE:I = 0x3

.field public static final TYPE_FOREGROUND_COLOR:I = 0x1

.field public static final TYPE_HYPER_TEXT:I = 0x9

.field public static final TYPE_ITALIC:I = 0x6

.field public static final TYPE_MAX:I = 0x16

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_STRIKETHROUGH:I = 0x14

.field public static final TYPE_SUGGESTION:I = 0x15

.field public static final TYPE_TIME_STAMP:I = 0x13

.field public static final TYPE_UNDERLINE:I = 0x7


# instance fields
.field private mEnd:I

.field private mExpansion:I

.field private mStart:I

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mStart:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mEnd:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mExpansion:I

    if-ltz p1, :cond_0

    const/16 v1, 0x16

    if-lt p1, v1, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mType:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mStart:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mEnd:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mExpansion:I

    if-ltz p1, :cond_0

    const/16 v1, 0x16

    if-ge p1, v1, :cond_0

    if-lt p3, p2, :cond_0

    if-ltz p4, :cond_0

    if-le p4, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mType:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mStart:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mEnd:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mExpansion:I

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mEnd:I

    return v0
.end method

.method public getExpansion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mExpansion:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mStart:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mType:I

    return v0
.end method

.method public setExpansion(I)V
    .locals 1

    const/4 v0, 0x3

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mExpansion:I

    return-void
.end method

.method public setPosition(II)V
    .locals 1

    if-le p1, p2, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mStart:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->mEnd:I

    return-void
.end method
