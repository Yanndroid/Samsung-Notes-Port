.class public Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;
.super Lp0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph$Align;
    }
.end annotation


# instance fields
.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lp0/b;-><init>(I)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph$Align;->ALIGN_LEFT:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph$Align;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;->d:I

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;

    invoke-super {p0, p1}, Lp0/b;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_AlignmentParagraph"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;->d:I

    iget v4, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;->d:I

    if-eq p1, v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mAlignmentType["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "alignment"

    return-object v0
.end method

.method public i(Lq0/a;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Lp0/b;->i(Lq0/a;I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;->d:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method public j(Lp0/b;)V
    .locals 0

    invoke-super {p0, p1}, Lp0/b;->j(Lp0/b;)V

    check-cast p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;

    iget p1, p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;->d:I

    iput p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;->d:I

    return-void
.end method

.method public l(Lq0/a;I)I
    .locals 2

    invoke-super {p0, p1, p2}, Lp0/b;->l(Lq0/a;I)I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;->d:I

    invoke-virtual {p1, v0, v1}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method public m()I
    .locals 1

    invoke-super {p0}, Lp0/b;->m()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocAlignmentParagraph;->d:I

    const/4 p1, 0x1

    return p1
.end method
