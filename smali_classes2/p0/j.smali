.class public Lp0/j;
.super Lp0/d;
.source "SourceFile"


# instance fields
.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

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
    instance-of v1, p1, Lp0/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lp0/j;

    invoke-super {p0, p1}, Lp0/d;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_FontNameSpan"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object p1, p0, Lp0/j;->f:Ljava/lang/String;

    iget-object v4, v1, Lp0/j;->f:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mName["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lp0/j;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lp0/j;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v0, "fontName"

    return-object v0
.end method

.method public i(Lq0/a;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Lp0/d;->i(Lq0/a;I)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Lq0/a;->n(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp0/j;->f:Ljava/lang/String;

    invoke-static {p1}, Lq0/a;->a(Ljava/lang/String;)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public j(Lp0/d;)V
    .locals 0

    invoke-super {p0, p1}, Lp0/d;->j(Lp0/d;)V

    check-cast p1, Lp0/j;

    iget-object p1, p1, Lp0/j;->f:Ljava/lang/String;

    iput-object p1, p0, Lp0/j;->f:Ljava/lang/String;

    return-void
.end method

.method public m(Lq0/a;I)I
    .locals 2

    invoke-super {p0, p1, p2}, Lp0/d;->m(Lq0/a;I)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lp0/j;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lq0/a;->C(ILjava/lang/String;)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public n()I
    .locals 2

    invoke-super {p0}, Lp0/d;->n()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lp0/j;->f:Ljava/lang/String;

    invoke-static {v1}, Lq0/b;->i(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp0/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)Z
    .locals 0

    iput-object p1, p0, Lp0/j;->f:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
