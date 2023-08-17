.class public Lo0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lp0/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lp0/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lp0/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:B

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lp0/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo0/o;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo0/o;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo0/o;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo0/o;->j:Ljava/util/ArrayList;

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
    instance-of v1, p1, Lo0/o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/o;

    iget-object v1, p0, Lo0/o;->a:Ljava/lang/String;

    iget-object v3, p1, Lo0/o;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "]"

    const-string v4, " - "

    const-string v5, "WCon_TextCommon"

    if-nez v1, :cond_4

    iget-object v1, p0, Lo0/o;->a:Ljava/lang/String;

    const-string v6, ""

    if-nez v1, :cond_2

    iget-object v1, p1, Lo0/o;->a:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lo0/o;->a:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lo0/o;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - text["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/o;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    iget v1, p0, Lo0/o;->e:F

    iget v6, p1, Lo0/o;->e:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - leftMargin["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/o;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/o;->e:F

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget v1, p0, Lo0/o;->f:F

    iget v6, p1, Lo0/o;->f:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - topMargin["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/o;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/o;->f:F

    goto :goto_1

    :cond_6
    iget v1, p0, Lo0/o;->g:F

    iget v6, p1, Lo0/o;->g:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - rightMargin["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/o;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/o;->g:F

    goto :goto_1

    :cond_7
    iget v1, p0, Lo0/o;->h:F

    iget v6, p1, Lo0/o;->h:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mFileId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/o;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/o;->h:F

    goto :goto_1

    :cond_8
    iget-byte v1, p0, Lo0/o;->i:B

    iget-byte v6, p1, Lo0/o;->i:B

    if-eq v1, v6, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - textGravity["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lo0/o;->i:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lo0/o;->i:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lo0/o;->j:Ljava/util/ArrayList;

    iget-object v6, p1, Lo0/o;->j:Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mObjectList["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo0/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lq0/a;ILk0/b;I)I
    .locals 6

    iget-object v0, p0, Lo0/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v3

    add-int/lit8 v1, v1, 0x4

    new-instance v4, Lp0/a;

    invoke-direct {v4}, Lp0/a;-><init>()V

    invoke-virtual {v4, p1, v1, p3, p4}, Lp0/a;->i(Lq0/a;ILk0/b;I)I

    iget-object v5, p0, Lo0/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p2

    return v1
.end method

.method public final c(Lq0/a;I)I
    .locals 6

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v3

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_0

    add-int/2addr v1, v3

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lp0/p;->a(I)Lp0/b;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lp0/b;->i(Lq0/a;I)I

    add-int/2addr v1, v3

    iget-object v3, p0, Lo0/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v1, p2

    return v1
.end method

.method public final d(Lq0/a;I)I
    .locals 6

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v3

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lp0/p;->b(I)Lp0/d;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lp0/d;->i(Lq0/a;I)I

    add-int/2addr v1, v3

    iget-object v3, p0, Lo0/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :goto_1
    add-int/2addr v1, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, p2

    return v1
.end method

.method public final e()I
    .locals 3

    iget-object v0, p0, Lo0/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp0/a;

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2}, Lp0/a;->l()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public f(Lq0/a;I)I
    .locals 4

    iget-object v0, p0, Lo0/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/lit8 v0, p2, 0x4

    iget-object v1, p0, Lo0/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp0/a;

    invoke-virtual {v2}, Lp0/a;->l()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v2, p1, v0}, Lp0/a;->k(Lq0/a;I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p2

    return v0
.end method

.method public final g(Lq0/a;ILp0/b;)I
    .locals 1

    invoke-virtual {p3}, Lp0/b;->m()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lq0/a;->r(II)V

    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p3, p1, v0}, Lp0/b;->l(Lq0/a;I)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public final h(Lp0/b;)I
    .locals 1

    invoke-virtual {p1}, Lp0/b;->m()I

    move-result p1

    const/4 v0, 0x2

    add-int/2addr v0, p1

    return v0
.end method

.method public final i(Lq0/a;I)I
    .locals 4

    add-int/lit8 v0, p2, 0x4

    iget-object v1, p0, Lo0/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp0/b;

    invoke-virtual {p0, p1, v0, v3}, Lo0/o;->g(Lq0/a;ILp0/b;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v2}, Lq0/a;->u(II)V

    sub-int/2addr v0, p2

    return v0
.end method

.method public final j()I
    .locals 3

    iget-object v0, p0, Lo0/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp0/b;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lo0/o;->h(Lp0/b;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final k(Lq0/a;ILp0/d;)I
    .locals 1

    invoke-virtual {p3}, Lp0/d;->n()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lq0/a;->r(II)V

    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p3, p1, v0}, Lp0/d;->m(Lq0/a;I)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public final l(Lp0/d;)I
    .locals 1

    invoke-virtual {p1}, Lp0/d;->n()I

    move-result p1

    const/4 v0, 0x2

    add-int/2addr v0, p1

    return v0
.end method

.method public final m(Lq0/a;I)I
    .locals 6

    add-int/lit8 v0, p2, 0x4

    iget-object v1, p0, Lo0/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp0/d;

    invoke-virtual {v3}, Lp0/d;->r()I

    move-result v4

    const/16 v5, 0xf

    if-eq v4, v5, :cond_0

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    const/16 v5, 0x12

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0, v3}, Lo0/o;->k(Lq0/a;ILp0/d;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2, v2}, Lq0/a;->u(II)V

    sub-int/2addr v0, p2

    return v0
.end method

.method public final n()I
    .locals 5

    iget-object v0, p0, Lo0/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp0/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lp0/d;->r()I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lo0/o;->l(Lp0/d;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetBinarySize - skip type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WCon_TextCommon"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return v1
.end method

.method public o(Lq0/a;ILk0/b;I)I
    .locals 5

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    if-lez v0, :cond_0

    invoke-virtual {p1, v1, v0}, Lq0/a;->p(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo0/o;->a:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lo0/o;->d(Lq0/a;I)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lo0/o;->c(Lq0/a;I)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Lo0/o;->e:F

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Lo0/o;->f:F

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Lo0/o;->g:F

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Lo0/o;->h:F

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v0

    iput-byte v0, p0, Lo0/o;->i:B

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v0

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Lp0/c;

    invoke-direct {v3}, Lp0/c;-><init>()V

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v4

    iput v4, v3, Lp0/c;->a:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v4

    iput v4, v3, Lp0/c;->b:I

    add-int/lit8 v1, v1, 0x4

    iget-object v4, p0, Lo0/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x7f3

    if-lt p4, v0, :cond_2

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    add-int/lit8 v1, v1, 0x4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v1, p3, p4}, Lo0/o;->b(Lq0/a;ILk0/b;I)I

    move-result p1

    add-int/2addr v1, p1

    :cond_2
    sub-int/2addr v1, p2

    return v1
.end method

.method public p(Lq0/a;II)V
    .locals 4

    iget-object v0, p0, Lo0/o;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    iget-object v0, p0, Lo0/o;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lq0/a;->D(ILjava/lang/String;)V

    iget-object v0, p0, Lo0/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v1}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    invoke-virtual {p0, p1, p2}, Lo0/o;->m(Lq0/a;I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lo0/o;->i(Lq0/a;I)I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lo0/o;->e:F

    invoke-virtual {p1, p2, v0}, Lq0/a;->t(IF)V

    add-int/lit8 p2, p2, 0x4

    iget v0, p0, Lo0/o;->f:F

    invoke-virtual {p1, p2, v0}, Lq0/a;->t(IF)V

    add-int/lit8 p2, p2, 0x4

    iget v0, p0, Lo0/o;->g:F

    invoke-virtual {p1, p2, v0}, Lq0/a;->t(IF)V

    add-int/lit8 p2, p2, 0x4

    iget v0, p0, Lo0/o;->h:F

    invoke-virtual {p1, p2, v0}, Lq0/a;->t(IF)V

    add-int/lit8 p2, p2, 0x4

    iget-byte v0, p0, Lo0/o;->i:B

    invoke-virtual {p1, p2, v0}, Lq0/a;->q(II)V

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lo0/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lq0/a;->r(II)V

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lo0/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp0/c;

    iget v3, v2, Lp0/c;->a:I

    invoke-virtual {p1, p2, v3}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    iget v2, v2, Lp0/c;->b:I

    invoke-virtual {p1, p2, v2}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    goto :goto_1

    :cond_1
    const/16 v0, 0x7f3

    if-lt p3, v0, :cond_2

    iget-object p3, p0, Lo0/o;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p2, p3}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2, v1}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p2}, Lo0/o;->f(Lq0/a;I)I

    :cond_2
    return-void
.end method

.method public q(I)I
    .locals 3

    iget-object v0, p0, Lo0/o;->a:Ljava/lang/String;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lo0/o;->n()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lo0/o;->j()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lo0/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    const/16 v2, 0x7f3

    if-lt p1, v2, :cond_1

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iget-object p1, p0, Lo0/o;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lo0/o;->e()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method
