.class public Lp0/k;
.super Lp0/d;
.source "SourceFile"


# instance fields
.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lp0/d;-><init>(I)V

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
    instance-of v1, p1, Lp0/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lp0/k;

    invoke-super {p0, p1}, Lp0/d;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_FontSizeSpan"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget p1, p0, Lp0/k;->f:F

    iget v4, v1, Lp0/k;->f:F

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mSize["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lp0/k;->f:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lp0/k;->f:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    const-string v0, "fontSize"

    return-object v0
.end method

.method public i(Lq0/a;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Lp0/d;->i(Lq0/a;I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lq0/a;->f(I)F

    move-result p1

    iput p1, p0, Lp0/k;->f:F

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method public j(Lp0/d;)V
    .locals 0

    invoke-super {p0, p1}, Lp0/d;->j(Lp0/d;)V

    check-cast p1, Lp0/k;

    iget p1, p1, Lp0/k;->f:F

    iput p1, p0, Lp0/k;->f:F

    return-void
.end method

.method public m(Lq0/a;I)I
    .locals 2

    invoke-super {p0, p1, p2}, Lp0/d;->m(Lq0/a;I)I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lp0/k;->f:F

    invoke-virtual {p1, v0, v1}, Lq0/a;->t(IF)V

    add-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

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
    .locals 1

    iget v0, p0, Lp0/k;->f:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lp0/k;->f:F

    const/4 p1, 0x1

    return p1
.end method
