.class public Lo0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/b;


# instance fields
.field public a:I

.field public b:I

.field public c:Lo0/a;

.field public d:Lo0/b;

.field public e:Lo0/d;

.field public f:Lo0/e;

.field public g:Lo0/k;

.field public h:I

.field public i:F

.field public j:I

.field public k:Z

.field public l:Landroid/graphics/RectF;

.field public m:Landroid/graphics/RectF;

.field public n:F

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo0/k;

    invoke-direct {v0}, Lo0/k;-><init>()V

    iput-object v0, p0, Lo0/h;->g:Lo0/k;

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo0/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/h;

    iget v1, p0, Lo0/h;->a:I

    iget v3, p1, Lo0/h;->a:I

    const-string v4, "]"

    const-string v5, " - "

    const-string v6, "WCon_ObjectShapeData"

    if-eq v1, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/h;->a:I

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget v1, p0, Lo0/h;->b:I

    iget v3, p1, Lo0/h;->b:I

    if-eq v1, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - compatibleImageCrc["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/h;->b:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lo0/h;->c:Lo0/a;

    iget-object v3, p1, Lo0/h;->c:Lo0/a;

    invoke-static {v1, v3}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - fillBackgroundEffect["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/h;->c:Lo0/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/h;->c:Lo0/a;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lo0/h;->d:Lo0/b;

    iget-object v3, p1, Lo0/h;->d:Lo0/b;

    invoke-static {v1, v3}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - fillColorEffect["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/h;->d:Lo0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/h;->d:Lo0/b;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lo0/h;->e:Lo0/d;

    iget-object v3, p1, Lo0/h;->e:Lo0/d;

    invoke-static {v1, v3}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - fillImageEffect["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/h;->e:Lo0/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/h;->e:Lo0/d;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lo0/h;->f:Lo0/e;

    iget-object v3, p1, Lo0/h;->f:Lo0/e;

    invoke-static {v1, v3}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - fillPatternEffect["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/h;->f:Lo0/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/h;->f:Lo0/e;

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lo0/h;->g:Lo0/k;

    iget-object v3, p1, Lo0/h;->g:Lo0/k;

    invoke-static {v1, v3}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - templateBase["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/h;->g:Lo0/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/h;->g:Lo0/k;

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lo0/h;->l:Landroid/graphics/RectF;

    iget-object v3, p1, Lo0/h;->l:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " !! temporary keep going"

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " !! equals() - NE - originDrawnRect["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lo0/h;->l:Landroid/graphics/RectF;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lo0/h;->l:Landroid/graphics/RectF;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lq0/b;->a:Z

    if-eqz v1, :cond_9

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    return v2

    :cond_a
    :goto_3
    iget-object v1, p0, Lo0/h;->m:Landroid/graphics/RectF;

    iget-object v7, p1, Lo0/h;->m:Landroid/graphics/RectF;

    invoke-static {v1, v7}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " !! equals() - NE - originRect["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lo0/h;->m:Landroid/graphics/RectF;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lo0/h;->m:Landroid/graphics/RectF;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget v1, p0, Lo0/h;->h:I

    iget v7, p1, Lo0/h;->h:I

    if-eq v1, v7, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - borderColor["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/h;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/h;->h:I

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Lo0/h;->i:F

    iget v7, p1, Lo0/h;->i:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - borderWidth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/h;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/h;->i:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_d
    iget v1, p0, Lo0/h;->j:I

    iget v7, p1, Lo0/h;->j:I

    if-eq v1, v7, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - borderType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/h;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/h;->j:I

    goto/16 :goto_0

    :cond_e
    iget-boolean v1, p0, Lo0/h;->k:Z

    iget-boolean v7, p1, Lo0/h;->k:Z

    if-eq v1, v7, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - isCompatibleImageModified["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo0/h;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lo0/h;->k:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_f
    iget v1, p0, Lo0/h;->n:F

    iget v7, p1, Lo0/h;->n:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " !! equals() - NE - originDegree["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lo0/h;->n:F

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lo0/h;->n:F

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lq0/b;->a:Z

    if-eqz v1, :cond_10

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    return v2

    :cond_11
    :goto_4
    iget-boolean v1, p0, Lo0/h;->o:Z

    iget-boolean v2, p1, Lo0/h;->o:Z

    if-eq v1, v2, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " !! equals() - NE - isCompatibleImageObjectChanged["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo0/h;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lo0/h;->o:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v0
.end method

.method public a(Lq0/a;II)I
    .locals 2

    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    add-int/lit8 v0, p2, 0x4

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit16 v1, p3, 0x80

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    add-int/lit8 v0, v0, 0x4

    :cond_1
    and-int/lit16 p3, p3, 0x100

    if-eqz p3, :cond_2

    invoke-virtual {p1, v0}, Lq0/a;->c(I)S

    add-int/lit8 v0, v0, 0x2

    :cond_2
    sub-int/2addr v0, p2

    return v0
.end method

.method public b(Lq0/a;II)I
    .locals 1

    const/high16 p1, 0x10000

    and-int/2addr p1, p3

    if-eqz p1, :cond_0

    add-int/lit8 p1, p2, 0x10

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    const/high16 v0, 0x20000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x4

    :cond_1
    const/high16 v0, 0x40000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x10

    :cond_2
    const/high16 v0, 0x80000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    add-int/lit8 p1, p1, 0x10

    :cond_3
    const/high16 v0, 0x100000

    and-int/2addr p3, v0

    if-eqz p3, :cond_4

    add-int/lit8 p1, p1, 0x4

    :cond_4
    sub-int/2addr p1, p2

    return p1
.end method

.method public c(Lq0/a;II)I
    .locals 2

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Lo0/h;->h:I

    add-int/lit8 v0, p2, 0x4

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lq0/a;->f(I)F

    move-result v1

    iput v1, p0, Lo0/h;->i:F

    add-int/lit8 v0, v0, 0x4

    :cond_1
    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_2

    invoke-virtual {p1, v0}, Lq0/a;->c(I)S

    move-result p1

    iput p1, p0, Lo0/h;->j:I

    add-int/lit8 v0, v0, 0x2

    :cond_2
    sub-int/2addr v0, p2

    return v0
.end method

.method public d()Lo0/c;
    .locals 1

    iget-object v0, p0, Lo0/h;->d:Lo0/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo0/h;->e:Lo0/d;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lo0/h;->f:Lo0/e;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lo0/h;->c:Lo0/a;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lo0/k;
    .locals 1

    new-instance v0, Lo0/k;

    invoke-direct {v0}, Lo0/k;-><init>()V

    iput-object v0, p0, Lo0/h;->g:Lo0/k;

    return-object v0
.end method

.method public f()Lo0/k;
    .locals 1

    iget-object v0, p0, Lo0/h;->g:Lo0/k;

    return-object v0
.end method
