.class public Ln0/o;
.super Ln0/a;
.source "SourceFile"


# instance fields
.field public Q:I

.field public R:Ljava/lang/String;

.field public S:I

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:I

.field public Y:I

.field public Z:I


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Ln0/a;-><init>(ILk0/b;)V

    const/4 p1, -0x1

    iput p1, p0, Ln0/o;->Q:I

    iput p1, p0, Ln0/o;->S:I

    const/4 p1, 0x0

    iput-object p1, p0, Ln0/o;->U:Ljava/lang/String;

    iput-object p1, p0, Ln0/o;->V:Ljava/lang/String;

    iput-object p1, p0, Ln0/o;->W:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Ln0/o;->X:I

    iput p1, p0, Ln0/o;->Y:I

    iput p1, p0, Ln0/o;->Z:I

    return-void
.end method

.method private c(Lq0/a;I)I
    .locals 5

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v2

    add-int/lit8 v1, v1, 0x2

    const/4 v3, -0x1

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyOwnBinary() - Invalid data type ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WCon_ObjectWeb"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    invoke-virtual {p1, v4}, Lq0/a;->b(I)B

    add-int/2addr v4, v1

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v4}, Lq0/a;->b(I)B

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v1

    if-eqz v2, :cond_1

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2, v1}, Ln0/o;->d(Lq0/a;II)Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    return v0
.end method

.method private d(Lq0/a;II)Z
    .locals 2

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/o;->Q:I

    add-int/lit8 p2, p2, 0x4

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/o;->S:I

    add-int/lit8 p2, p2, 0x4

    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v0

    add-int/lit8 p2, p2, 0x2

    if-lez v0, :cond_2

    invoke-virtual {p1, p2, v0}, Lq0/a;->p(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ln0/o;->U:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    :cond_2
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v0

    add-int/lit8 p2, p2, 0x2

    if-lez v0, :cond_3

    invoke-virtual {p1, p2, v0}, Lq0/a;->p(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ln0/o;->V:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    :cond_3
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v0

    add-int/lit8 p2, p2, 0x2

    if-lez v0, :cond_4

    invoke-virtual {p1, p2, v0}, Lq0/a;->p(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ln0/o;->W:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    :cond_4
    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/o;->X:I

    add-int/lit8 p2, p2, 0x4

    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/o;->Y:I

    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Ln0/o;->Y:I

    :goto_0
    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_6

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result p1

    iput p1, p0, Ln0/o;->Z:I

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private n(Lq0/a;I)Z
    .locals 5

    add-int/lit8 v0, p2, 0x6

    add-int/lit8 v0, v0, 0x9

    sub-int v1, v0, p2

    new-instance v2, Lq0/c;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lq0/c;-><init>(Lq0/a;II)V

    invoke-virtual {p0, v2}, Ln0/o;->G(Lq0/c;)V

    iget v0, v2, Lq0/c;->b:I

    iget v2, v2, Lq0/c;->c:I

    sub-int/2addr v0, p2

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    const/16 v0, 0xd

    invoke-virtual {p1, p2, v0}, Lq0/a;->r(II)V

    const/4 v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2, v1}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v1, p2, 0x1

    const/4 v4, 0x1

    invoke-virtual {p1, p2, v4}, Lq0/a;->q(II)V

    add-int/lit8 p2, v1, 0x1

    invoke-virtual {p1, v1, v3}, Lq0/a;->q(II)V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2, v0}, Lq0/a;->q(II)V

    invoke-virtual {p1, v1, v2}, Lq0/a;->r(II)V

    return v4
.end method

.method private o()I
    .locals 3

    iget v0, p0, Ln0/o;->Q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    iget v2, p0, Ln0/o;->S:I

    if-eq v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Ln0/o;->U:Ljava/lang/String;

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Ln0/o;->V:Ljava/lang/String;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Ln0/o;->W:Ljava/lang/String;

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_4
    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ln0/o;->Z:I

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x4

    :cond_5
    return v0
.end method


# virtual methods
.method public A(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "object"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, p1, v3}, Ln0/o;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_1
    invoke-static {p1, v1}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseXml - invalid eventType = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WCon_ObjectWeb"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ln0/o;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public final G(Lq0/c;)V
    .locals 4

    iget v0, p0, Ln0/o;->Q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p1, Lq0/c;->a:Lq0/a;

    iget v3, p1, Lq0/c;->b:I

    invoke-virtual {v2, v3, v0}, Lq0/a;->u(II)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lq0/c;->c:I

    :cond_0
    iget v0, p0, Ln0/o;->S:I

    if-eq v0, v1, :cond_1

    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p1, Lq0/c;->b:I

    invoke-virtual {v1, v2, v0}, Lq0/a;->u(II)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lq0/c;->c:I

    :cond_1
    iget-object v0, p0, Ln0/o;->U:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p1, Lq0/c;->b:I

    invoke-virtual {v1, v2, v0}, Lq0/a;->r(II)V

    iget v1, p1, Lq0/c;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p1, Lq0/c;->b:I

    iget-object v2, p1, Lq0/c;->a:Lq0/a;

    iget-object v3, p0, Ln0/o;->U:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lq0/a;->D(ILjava/lang/String;)V

    iget v1, p1, Lq0/c;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->c:I

    :cond_2
    iget-object v0, p0, Ln0/o;->V:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p1, Lq0/c;->b:I

    invoke-virtual {v1, v2, v0}, Lq0/a;->r(II)V

    iget v1, p1, Lq0/c;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p1, Lq0/c;->b:I

    iget-object v2, p1, Lq0/c;->a:Lq0/a;

    iget-object v3, p0, Ln0/o;->V:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lq0/a;->D(ILjava/lang/String;)V

    iget v1, p1, Lq0/c;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lq0/c;->c:I

    :cond_3
    iget-object v0, p0, Ln0/o;->W:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p1, Lq0/c;->b:I

    invoke-virtual {v1, v2, v0}, Lq0/a;->r(II)V

    iget v1, p1, Lq0/c;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p1, Lq0/c;->b:I

    iget-object v2, p1, Lq0/c;->a:Lq0/a;

    iget-object v3, p0, Ln0/o;->W:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lq0/a;->D(ILjava/lang/String;)V

    iget v1, p1, Lq0/c;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lq0/c;->c:I

    :cond_4
    iget-object v0, p1, Lq0/c;->a:Lq0/a;

    iget v1, p1, Lq0/c;->b:I

    iget v2, p0, Ln0/o;->X:I

    invoke-virtual {v0, v1, v2}, Lq0/a;->u(II)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->b:I

    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p0, Ln0/o;->Y:I

    invoke-virtual {v1, v0, v2}, Lq0/a;->u(II)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->b:I

    iget v1, p1, Lq0/c;->c:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lq0/c;->c:I

    iget v1, p0, Ln0/o;->Z:I

    if-eqz v1, :cond_5

    iget-object v2, p1, Lq0/c;->a:Lq0/a;

    invoke-virtual {v2, v0, v1}, Lq0/a;->u(II)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Lq0/c;->c:I

    :cond_5
    return-void
.end method

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
    instance-of v1, p1, Ln0/o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Ln0/o;

    invoke-super {p0, p1}, Ln0/a;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_ObjectWeb"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget p1, p0, Ln0/o;->Q:I

    iget v4, v1, Ln0/o;->Q:I

    const-string v5, "]"

    const-string v6, " - "

    if-eq p1, v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mAttachHTMLFileID["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/o;->Q:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/o;->Q:I

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ln0/o;->R:Ljava/lang/String;

    iget-object v4, v1, Ln0/o;->R:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mAttachHTMLFileHash["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/o;->R:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/o;->R:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget p1, p0, Ln0/o;->S:I

    iget v4, v1, Ln0/o;->S:I

    if-eq p1, v4, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mThumbnailFileID["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/o;->S:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/o;->S:I

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ln0/o;->T:Ljava/lang/String;

    iget-object v4, v1, Ln0/o;->T:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mThumbnailFileHash["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/o;->T:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/o;->T:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Ln0/o;->U:Ljava/lang/String;

    iget-object v4, v1, Ln0/o;->U:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mBody["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/o;->U:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/o;->U:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object p1, p0, Ln0/o;->V:Ljava/lang/String;

    iget-object v4, v1, Ln0/o;->V:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mTitle["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/o;->V:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/o;->V:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget-object p1, p0, Ln0/o;->W:Ljava/lang/String;

    iget-object v4, v1, Ln0/o;->W:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mUri["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/o;->W:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/o;->W:Ljava/lang/String;

    goto/16 :goto_3

    :cond_9
    iget p1, p0, Ln0/o;->X:I

    iget v4, v1, Ln0/o;->X:I

    if-eq p1, v4, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mImageTypeId["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/o;->X:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/o;->X:I

    goto/16 :goto_1

    :cond_a
    iget p1, p0, Ln0/o;->Y:I

    iget v4, v1, Ln0/o;->Y:I

    if-eq p1, v4, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mVersion["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/o;->Y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/o;->Y:I

    goto/16 :goto_1

    :cond_b
    iget p1, p0, Ln0/o;->Z:I

    iget v4, v1, Ln0/o;->Z:I

    if-eq p1, v4, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mViewType["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/o;->Z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/o;->Z:I

    goto/16 :goto_1

    :cond_c
    return v0
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/o;->f(Le1/o;)V

    invoke-virtual {p0, p1}, Ln0/o;->g(Le1/o;)V

    return-void
.end method

.method public f(Le1/o;)V
    .locals 3

    invoke-super {p0, p1}, Ln0/a;->f(Le1/o;)V

    iget v0, p0, Ln0/o;->Q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v2, v0}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln0/o;->R:Ljava/lang/String;

    const-string v2, "attachHtml"

    invoke-virtual {p1, v2, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Ln0/o;->S:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v1, v0}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln0/o;->T:Ljava/lang/String;

    const-string/jumbo v1, "thumbnail"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ln0/o;->U:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ln0/o;->U:Ljava/lang/String;

    const-string v1, "body"

    invoke-virtual {p1, v1, v0}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Ln0/o;->V:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ln0/o;->V:Ljava/lang/String;

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Ln0/o;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ln0/o;->W:Ljava/lang/String;

    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1, v0}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Ln0/o;->X:I

    const-string v1, "imageType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ln0/o;->Y:I

    const-string/jumbo v1, "version"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ln0/o;->Z:I

    const-string/jumbo v1, "viewType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public g(Le1/o;)V
    .locals 0

    invoke-super {p0, p1}, Ln0/a;->g(Le1/o;)V

    return-void
.end method

.method public v(Lq0/a;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ln0/a;->v(Lq0/a;II)I

    move-result p3

    const-string v0, "WCon_ObjectWeb"

    if-gez p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectBase newApplyBinary() fail. err = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_0
    add-int/2addr p2, p3

    invoke-direct {p0, p1, p2}, Ln0/o;->c(Lq0/a;I)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ObjectWeb newApplyBinary() fail to apply own binary. err = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    add-int/2addr p1, p3

    return p1
.end method

.method public w(Lq0/a;I)I
    .locals 3

    invoke-super {p0, p1, p2}, Ln0/a;->w(Lq0/a;I)I

    move-result v0

    const-string v1, "WCon_ObjectWeb"

    if-gez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectBase newGetBinary() fail. err = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-super {p0}, Ln0/a;->x()I

    move-result v2

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2}, Ln0/o;->n(Lq0/a;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ObjectWeb newGetBinary() fail to get own binary. err"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_1
    return v0
.end method

.method public x()I
    .locals 2

    invoke-super {p0}, Ln0/a;->x()I

    move-result v0

    invoke-direct {p0}, Ln0/o;->o()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attachHtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/o;->R:Ljava/lang/String;

    iget-object p2, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {p2, p1}, Lk0/a;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/o;->Q:I

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v1, "thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/o;->T:Ljava/lang/String;

    iget-object p2, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {p2, p1}, Lk0/a;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/o;->S:I

    goto/16 :goto_0

    :cond_1
    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/o;->U:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/o;->V:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/o;->W:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "imageType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/o;->X:I

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/o;->Y:I

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "viewType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/o;->Z:I

    goto :goto_0

    :cond_7
    invoke-super {p0, p1, p2}, Ln0/a;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-super {p0, p1}, Ln0/a;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method
