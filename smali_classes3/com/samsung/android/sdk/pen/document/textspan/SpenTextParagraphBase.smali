.class public Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILTER_PARAGRAPH_ALIGN:I = 0x8

.field public static final FILTER_PARAGRAPH_ALL:I = 0x7f

.field public static final FILTER_PARAGRAPH_BULLET:I = 0x20

.field public static final FILTER_PARAGRAPH_INDENTLEVEL:I = 0x4

.field public static final FILTER_PARAGRAPH_LINE_SPACING:I = 0x10

.field public static final FILTER_PARAGRAPH_PARSING_STATE:I = 0x40

.field public static final TYPE_ALIGN:I = 0x3

.field public static final TYPE_BULLET:I = 0x5

.field public static final TYPE_INDENTLEVEL:I = 0x2

.field public static final TYPE_LINE_SPACING:I = 0x4

.field public static final TYPE_MAX:I = 0x7

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_PARSING_STATE:I = 0x6


# instance fields
.field private mEnd:I

.field private mStart:I

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mStart:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mEnd:I

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mType:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mStart:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mEnd:I

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    if-ge p3, p2, :cond_1

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mType:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mStart:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mEnd:I

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mEnd:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mStart:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mType:I

    return v0
.end method

.method public setPosition(II)V
    .locals 1

    if-le p1, p2, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mStart:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->mEnd:I

    return-void
.end method
