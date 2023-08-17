.class public Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBackgroundColor:Ljava/lang/String;

.field private mEnd:I

.field private mFontSize:D

.field private mForegroundColor:Ljava/lang/String;

.field private mIsBold:Z

.field private mIsItalic:Z

.field private mIsStrikethrough:Z

.field private mIsUnderline:Z

.field private mStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mStart:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mEnd:I

    return-void
.end method

.method public constructor <init>(IILcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mStart:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mEnd:I

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isBold()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setBold(Z)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isItalic()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setItalic(Z)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isUnderline()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setUnderline(Z)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isStrikethrough()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setStrikethrough(Z)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getFontSize()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setFontSize(D)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getForegroundColor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setForegroundColor(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getBackgroundColor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setBackgroundColor(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mEnd:I

    return v0
.end method

.method public getFontSize()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mFontSize:D

    return-wide v0
.end method

.method public getForegroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mForegroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mStart:I

    return v0
.end method

.method public isBold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsBold:Z

    return v0
.end method

.method public isItalic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsItalic:Z

    return v0
.end method

.method public isStrikethrough()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsStrikethrough:Z

    return v0
.end method

.method public isUnderline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsUnderline:Z

    return v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setBold(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsBold:Z

    return-void
.end method

.method public setEnd(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mEnd:I

    return-void
.end method

.method public setFontSize(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mFontSize:D

    return-void
.end method

.method public setForegroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mForegroundColor:Ljava/lang/String;

    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsItalic:Z

    return-void
.end method

.method public setStart(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mStart:I

    return-void
.end method

.method public setStrikethrough(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsStrikethrough:Z

    return-void
.end method

.method public setUnderline(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsUnderline:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpanAttributes{mStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsBold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsItalic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsItalic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsUnderline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsUnderline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsStrikethrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mIsStrikethrough:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mForegroundColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mForegroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mBackgroundColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mBackgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mFontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->mFontSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
