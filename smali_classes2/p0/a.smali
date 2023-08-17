.class public Lp0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/a;
.implements Lm0/b;


# instance fields
.field public a:Ln0/a;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lp0/a;->a:Ln0/a;

    iput-object v0, p0, Lp0/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lp0/a;->c:I

    iput v0, p0, Lp0/a;->d:I

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lp0/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lp0/a;

    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget v0, p0, Lp0/a;->c:I

    iget v2, p1, Lp0/a;->c:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lp0/a;->d:I

    iget v2, p1, Lp0/a;->d:I

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lp0/a;->b:Ljava/lang/String;

    iget-object p1, p1, Lp0/a;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "objectSpan"

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lp0/a;->c:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "objectSpan"

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lp0/a;->d:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lp0/a;->d:I

    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lp0/a;->b:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "\'objectSpan/objectSpan\'"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'objectSpan/objectSpan\'=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp0/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lq0/a;ILk0/b;I)I
    .locals 2

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result p4

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    invoke-static {v1, p3}, Ln0/c;->a(ILk0/b;)Ln0/a;

    move-result-object p3

    iput-object p3, p0, Lp0/a;->a:Ln0/a;

    invoke-virtual {p3, p1, v0, p4}, Ln0/a;->v(Lq0/a;II)I

    add-int/2addr v0, p4

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result p1

    iput p1, p0, Lp0/a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp0/a;->d:I

    add-int/lit8 v0, v0, 0x4

    iget-object p1, p0, Lp0/a;->a:Ln0/a;

    invoke-virtual {p1}, Ln0/a;->r()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp0/a;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Done Apply Bin uuid - "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lp0/a;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TextObjectSpan"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-int/2addr v0, p2

    return v0
.end method

.method public j(Lp0/a;)V
    .locals 1

    iget-object v0, p1, Lp0/a;->a:Ln0/a;

    iput-object v0, p0, Lp0/a;->a:Ln0/a;

    iget-object v0, p1, Lp0/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lp0/a;->b:Ljava/lang/String;

    iget v0, p1, Lp0/a;->c:I

    iput v0, p0, Lp0/a;->c:I

    iget p1, p1, Lp0/a;->d:I

    iput p1, p0, Lp0/a;->d:I

    return-void
.end method

.method public k(Lq0/a;I)I
    .locals 3

    iget-object v0, p0, Lp0/a;->a:Ln0/a;

    invoke-virtual {v0}, Ln0/a;->x()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/lit8 v1, p2, 0x4

    iget-object v2, p0, Lp0/a;->a:Ln0/a;

    invoke-virtual {v2}, Ln0/a;->p()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lq0/a;->u(II)V

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lp0/a;->a:Ln0/a;

    invoke-virtual {v2, p1, v1}, Ln0/a;->w(Lq0/a;I)I

    add-int/2addr v1, v0

    iget v0, p0, Lp0/a;->c:I

    invoke-virtual {p1, v1, v0}, Lq0/a;->u(II)V

    add-int/lit8 v1, v1, 0x4

    sub-int/2addr v1, p2

    return v1
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lp0/a;->a:Ln0/a;

    invoke-virtual {v0}, Ln0/a;->x()I

    move-result v0

    const/16 v1, 0x8

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x4

    return v1
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lp0/a;->d:I

    return v0
.end method

.method public n()Ln0/a;
    .locals 1

    iget-object v0, p0, Lp0/a;->a:Ln0/a;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lp0/a;->c:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp0/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ln0/a;)V
    .locals 0

    iput-object p1, p0, Lp0/a;->a:Ln0/a;

    return-void
.end method

.method public start()I
    .locals 1

    iget v0, p0, Lp0/a;->c:I

    return v0
.end method
