.class public Lp0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/a;
.implements Lm0/b;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lp0/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lp0/c;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    iget v2, p0, Lp0/c;->b:I

    iget v3, p1, Lp0/c;->b:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lp0/c;->a:I

    iget p1, p1, Lp0/c;->a:I

    if-ne v2, p1, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "sectionData"

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lp0/c;->a:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "sectionData"

    return-object v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lp0/c;->a:I

    iget v1, p0, Lp0/c;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public e(I)V
    .locals 1

    iget v0, p0, Lp0/c;->a:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp0/c;->b:I

    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "\'sectionData/sectionData\'"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "\'sectionData/sectionData\'=\'0\'"

    return-object v0
.end method

.method public i(Lp0/c;)V
    .locals 1

    iget v0, p1, Lp0/c;->a:I

    iput v0, p0, Lp0/c;->a:I

    iget p1, p1, Lp0/c;->b:I

    iput p1, p0, Lp0/c;->b:I

    return-void
.end method

.method public start()I
    .locals 1

    iget v0, p0, Lp0/c;->a:I

    return v0
.end method
