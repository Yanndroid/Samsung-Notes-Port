.class public Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;
.super Lp0/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$DateTimeType;,
        Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;
    }
.end annotation


# instance fields
.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lp0/d;-><init>(I)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->TYPE_UNKNOWN:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->f:I

    sget-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$DateTimeType;->DATETIME_TYPE_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$DateTimeType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->g:I

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
    instance-of v1, p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;

    invoke-super {p0, p1}, Lp0/d;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_HyperTextSpan"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->f:I

    iget v4, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->f:I

    const-string v5, "]"

    const-string v6, " - "

    if-eq p1, v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mHyperTextType["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->f:I

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->g:I

    iget v4, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->g:I

    if-eq p1, v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mDateTimeType["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->g:I

    goto :goto_1

    :cond_4
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "hyperText"

    return-object v0
.end method

.method public i(Lq0/a;I)I
    .locals 2

    invoke-super {p0, p1, p2}, Lp0/d;->i(Lq0/a;I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->f:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->g:I

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method public j(Lp0/d;)V
    .locals 1

    invoke-super {p0, p1}, Lp0/d;->j(Lp0/d;)V

    check-cast p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;

    iget v0, p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->f:I

    iput v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->f:I

    iget p1, p1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->g:I

    iput p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->g:I

    return-void
.end method

.method public m(Lq0/a;I)I
    .locals 2

    invoke-super {p0, p1, p2}, Lp0/d;->m(Lq0/a;I)I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->f:I

    invoke-virtual {p1, v0, v1}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->g:I

    invoke-virtual {p1, v0, v1}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method public n()I
    .locals 1

    invoke-super {p0}, Lp0/d;->n()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)Z
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

    const-string v0, "WCon_HyperTextSpan"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    aget-object p1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->f:I

    const/4 p1, 0x1

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;->g:I

    return p1
.end method
