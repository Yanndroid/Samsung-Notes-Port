.class public Ln0/b;
.super Ln0/a;
.source "SourceFile"


# instance fields
.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Ln0/a;-><init>(ILk0/b;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln0/b;->Q:Z

    iput-boolean p1, p0, Ln0/b;->R:Z

    iput-boolean p1, p0, Ln0/b;->S:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln0/b;->T:Ljava/util/List;

    return-void
.end method

.method private c(Lq0/a;I)I
    .locals 3

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    const/4 v1, 0x4

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v2

    add-int/lit8 p2, p2, 0x2

    if-eq v2, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyOwnBinary() - Invalid data type ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WCon_ObjectContainer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    add-int/2addr p2, v1

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2}, Lq0/a;->b(I)B

    move-result p2

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v2

    add-int/2addr v1, p2

    add-int/lit8 p2, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    invoke-virtual {p1, p2}, Lq0/a;->b(I)B

    and-int/lit8 p1, v2, 0x1

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iput-boolean p2, p0, Ln0/b;->Q:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Ln0/b;->Q:Z

    :goto_0
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_2

    iput-boolean p2, p0, Ln0/b;->R:Z

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Ln0/b;->R:Z

    :goto_1
    return v0
.end method

.method private n(Lq0/a;I)Z
    .locals 5

    add-int/lit8 v0, p2, 0x6

    add-int/lit8 v0, v0, 0x8

    iget-boolean v1, p0, Ln0/b;->Q:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean v4, p0, Ln0/b;->R:Z

    if-nez v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    sub-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    const/4 v0, 0x4

    add-int/2addr p2, v0

    invoke-virtual {p1, p2, v0}, Lq0/a;->r(II)V

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, v2}, Lq0/a;->u(II)V

    add-int/2addr p2, v0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2, v3}, Lq0/a;->q(II)V

    add-int/lit8 p2, v0, 0x1

    invoke-virtual {p1, v0, v1}, Lq0/a;->q(II)V

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2, v3}, Lq0/a;->q(II)V

    invoke-virtual {p1, v0, v2}, Lq0/a;->q(II)V

    return v3
.end method

.method private o()I
    .locals 1

    const/16 v0, 0xe

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

    invoke-virtual {p0, p1, v3}, Ln0/b;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

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

    const-string v4, "WCon_ObjectContainer"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ln0/b;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public G(Ln0/a;)V
    .locals 1

    iget-object v0, p0, Ln0/b;->T:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final H(Ljava/lang/String;Lk0/b;)Ln0/a;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "stroke"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ln0/k;

    invoke-direct {p1, p2}, Ln0/k;-><init>(Lk0/b;)V

    return-object p1

    :cond_1
    const-string/jumbo v1, "textBox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Ln0/m;

    invoke-direct {p1, p2}, Ln0/m;-><init>(Lk0/b;)V

    return-object p1

    :cond_2
    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Ln0/e;

    invoke-direct {p1, p2}, Ln0/e;-><init>(Lk0/b;)V

    return-object p1

    :cond_3
    const-string v1, "container"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Ln0/b;

    invoke-direct {p1, p2}, Ln0/b;-><init>(Lk0/b;)V

    return-object p1

    :cond_4
    const-string v1, "shape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Ln0/i;

    invoke-direct {p1, p2}, Ln0/i;-><init>(Lk0/b;)V

    return-object p1

    :cond_5
    const-string v1, "line"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Ln0/f;

    invoke-direct {p1, p2}, Ln0/f;-><init>(Lk0/b;)V

    return-object p1

    :cond_6
    const-string/jumbo v1, "voice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Ln0/n;

    invoke-direct {p1, p2}, Ln0/n;-><init>(Lk0/b;)V

    return-object p1

    :cond_7
    const-string v1, "formula"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p1, Ln0/d;

    invoke-direct {p1, p2}, Ln0/d;-><init>(Lk0/b;)V

    return-object p1

    :cond_8
    const-string v1, "table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance p1, Ln0/l;

    invoke-direct {p1, p2}, Ln0/l;-><init>(Lk0/b;)V

    return-object p1

    :cond_9
    const-string/jumbo v1, "web"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance p1, Ln0/o;

    invoke-direct {p1, p2}, Ln0/o;-><init>(Lk0/b;)V

    return-object p1

    :cond_a
    const-string v1, "painting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance p1, Ln0/h;

    invoke-direct {p1, p2}, Ln0/h;-><init>(Lk0/b;)V

    return-object p1

    :cond_b
    const-string v1, "link"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Ln0/g;

    invoke-direct {p1, p2}, Ln0/g;-><init>(Lk0/b;)V

    return-object p1

    :cond_c
    return-object v0
.end method

.method public I(I)Ln0/a;
    .locals 1

    iget-object v0, p0, Ln0/b;->T:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/a;

    return-object p1
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
    instance-of v1, p1, Ln0/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Ln0/b;

    invoke-super {p0, p1}, Ln0/a;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_ObjectContainer"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-boolean p1, p0, Ln0/b;->Q:Z

    iget-boolean v4, v1, Ln0/b;->Q:Z

    const-string v5, "]"

    const-string v6, " - "

    if-eq p1, v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - isUngroupable["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ln0/b;->Q:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Ln0/b;->Q:Z

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Ln0/b;->R:Z

    iget-boolean v4, v1, Ln0/b;->R:Z

    if-eq p1, v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - invisibleChildresizing["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ln0/b;->R:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Ln0/b;->R:Z

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Ln0/b;->S:Z

    iget-boolean v4, v1, Ln0/b;->S:Z

    if-eq p1, v4, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - reservedSetRectFlag["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ln0/b;->S:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Ln0/b;->S:Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ln0/b;->T:Ljava/util/List;

    iget-object v4, v1, Ln0/b;->T:Ljava/util/List;

    invoke-static {p1, v4}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mObjectList["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/b;->T:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/b;->T:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    return v0
.end method

.method public J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln0/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln0/b;->T:Ljava/util/List;

    return-object v0
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/b;->f(Le1/o;)V

    invoke-virtual {p0, p1}, Ln0/b;->g(Le1/o;)V

    return-void
.end method

.method public f(Le1/o;)V
    .locals 2

    invoke-super {p0, p1}, Ln0/a;->f(Le1/o;)V

    iget-boolean v0, p0, Ln0/b;->Q:Z

    const-string v1, "isUngroupable"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Ln0/b;->R:Z

    const-string v1, "invisibleChildResizing"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public g(Le1/o;)V
    .locals 3

    invoke-super {p0, p1}, Ln0/a;->g(Le1/o;)V

    iget-object v0, p0, Ln0/b;->T:Ljava/util/List;

    const-string v1, "objectList"

    const-string v2, "object"

    invoke-virtual {p1, v1, v2, v0}, Le1/o;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public v(Lq0/a;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ln0/a;->v(Lq0/a;II)I

    move-result p3

    const-string v0, "WCon_ObjectContainer"

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

    invoke-direct {p0, p1, p2}, Ln0/b;->c(Lq0/a;I)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ObjectContainer newApplyBinary() fail to apply own binary. err = "

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

    const-string v1, "WCon_ObjectContainer"

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

    invoke-direct {p0, p1, p2}, Ln0/b;->n(Lq0/a;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ObjectContainer newGetBinary() fail to get own binary."

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

    invoke-direct {p0}, Ln0/b;->o()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isUngroupable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/b;->Q:Z

    goto :goto_0

    :cond_0
    const-string v1, "invisibleChildResizing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/b;->R:Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Ln0/a;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln0/b;->T:Ljava/util/List;

    goto :goto_2

    :cond_0
    const-string v1, "object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Ln0/a;->O:Lk0/b;

    invoke-virtual {p0, v1, v0}, Ln0/b;->H(Ljava/lang/String;Lk0/b;)Ln0/a;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lq0/d;->q(Lorg/xmlpull/v1/XmlPullParser;)I

    return-void

    :cond_3
    invoke-virtual {v0, p1}, Ln0/a;->A(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object p1, p0, Ln0/b;->T:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Ln0/a;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    return-void
.end method
