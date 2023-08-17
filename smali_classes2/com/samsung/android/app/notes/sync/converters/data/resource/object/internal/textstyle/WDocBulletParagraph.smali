.class public Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;
.super Lp0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lp0/b;-><init>(I)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;

    invoke-super {p0, p1}, Lp0/b;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_BulletParagraph"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    iget v4, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    const-string v5, "]"

    const-string v6, " - "

    if-eq p1, v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mBulletType["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->e:I

    iget v4, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->e:I

    if-eq p1, v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mNumber["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->e:I

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->f:Z

    iget-boolean v4, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->f:Z

    if-eq p1, v4, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - isChecked["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "bullet"

    return-object v0
.end method

.method public i(Lq0/a;I)I
    .locals 3

    invoke-super {p0, p1, p2}, Lp0/b;->i(Lq0/a;I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_DIGIT:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_CIRCLED_DIGIT:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_ALPHABET:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_ROMAN_NUMERAL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_CHECKER:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->f:Z

    goto :goto_2

    :cond_2
    :goto_1
    iput p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->e:I

    :cond_3
    :goto_2
    sub-int/2addr v0, p2

    return v0
.end method

.method public j(Lp0/b;)V
    .locals 1

    invoke-super {p0, p1}, Lp0/b;->j(Lp0/b;)V

    check-cast p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;

    iget v0, p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    iput v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    iget-boolean v0, p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->f:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->f:Z

    iget p1, p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->e:I

    iput p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->e:I

    return-void
.end method

.method public l(Lq0/a;I)I
    .locals 4

    invoke-super {p0, p1, p2}, Lp0/b;->l(Lq0/a;I)I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    invoke-virtual {p1, v0, v1}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_DIGIT:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_CIRCLED_DIGIT:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_ALPHABET:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_ROMAN_NUMERAL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_CHECKER:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->f:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget v3, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->e:I

    :cond_2
    :goto_1
    invoke-virtual {p1, v0, v3}, Lq0/a;->u(II)V

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
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_CHECKER:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Z
    .locals 4

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty - fail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WCon_BulletParagraph"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    aget-object p1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->d:I

    sget-object v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;->TYPE_CHECKER:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    aget-object p1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->f:Z

    goto :goto_0

    :cond_1
    aget-object p1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocBulletParagraph;->e:I

    :goto_0
    return v2
.end method
