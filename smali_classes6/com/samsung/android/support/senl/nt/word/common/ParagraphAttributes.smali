.class public Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAlign:I

.field private mBulletType:I

.field private mIndentLevel:I

.field private mIsChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlign()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->mAlign:I

    return v0
.end method

.method public getBulletType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->mBulletType:I

    return v0
.end method

.method public getIndentLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->mIndentLevel:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->mIsChecked:Z

    return v0
.end method

.method public setAlign(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->mAlign:I

    return-void
.end method

.method public setBulletType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->mBulletType:I

    return-void
.end method

.method public setIndentLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->mIndentLevel:I

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->mIsChecked:Z

    return-void
.end method
