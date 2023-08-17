.class public final Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;
.super Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;
.source "SourceFile"


# static fields
.field public static final TYPE_ALPHABET:I = 0x6

.field public static final TYPE_ARROW:I = 0x1

.field public static final TYPE_CHECKER:I = 0x2

.field public static final TYPE_CIRCLED_DIGIT:I = 0x5

.field public static final TYPE_DIAMOND:I = 0x3

.field public static final TYPE_DIGIT:I = 0x4

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_ROMAN_NUMERAL:I = 0x7

.field public static final TYPE_SOLID_CIRCLE:I = 0x8


# instance fields
.field private mIsChecked:Z

.field private mNumber:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mNumber:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mIsChecked:Z

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;-><init>(III)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mType:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mNumber:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mIsChecked:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    const/16 p1, 0x8

    if-eq p3, p1, :cond_0

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    const/4 p1, 0x7

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    iput p3, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mType:I

    return-void
.end method


# virtual methods
.method public Checkout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mIsChecked:Z

    return-void
.end method

.method public getBulletNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mNumber:I

    return v0
.end method

.method public getBulletType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mType:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mIsChecked:Z

    return v0
.end method

.method public setBulletNumber(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mNumber:I

    return-void
.end method

.method public setBulletType(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->mType:I

    return-void
.end method
