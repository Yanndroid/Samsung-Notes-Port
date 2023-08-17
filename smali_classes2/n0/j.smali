.class public Ln0/j;
.super Ln0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/j$a;
    }
.end annotation


# instance fields
.field public Q:Z

.field public R:Lo0/f;

.field public S:Lo0/g;

.field public T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo0/t;",
            ">;"
        }
    .end annotation
.end field

.field public U:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln0/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public V:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln0/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILk0/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ln0/a;-><init>(ILk0/b;)V

    invoke-direct {p0}, Ln0/j;->s()V

    return-void
.end method

.method private c(Lq0/a;I)I
    .locals 13

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v2

    add-int/lit8 v1, v1, 0x2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyOwnBinary() - Invalid data type ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WCon_ObjectShapeBase"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    invoke-virtual {p1, v3}, Lq0/a;->b(I)B

    add-int/2addr v3, v1

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Lq0/a;->b(I)B

    move-result v3

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v4

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v3

    add-int/lit8 v1, v1, 0x4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_1

    invoke-virtual {p1, v1}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v8

    add-int/lit8 v1, v1, 0x10

    new-instance v9, Landroid/graphics/PointF;

    iget-wide v10, v8, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v10, v10

    iget-wide v11, v8, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v8, v11

    invoke-direct {v9, v10, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5, v3}, Ln0/j;->H(Ljava/util/ArrayList;I)V

    add-int/lit8 v1, v1, 0x4

    iget-object v3, p0, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v3

    add-int/lit8 v1, v1, 0x4

    move v5, v6

    :goto_1
    if-ge v5, v3, :cond_3

    new-instance v7, Ln0/j$a;

    invoke-direct {v7}, Ln0/j$a;-><init>()V

    invoke-virtual {p1, v1}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v8

    add-int/lit8 v1, v1, 0x10

    new-instance v9, Landroid/graphics/PointF;

    iget-wide v10, v8, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v10, v10

    iget-wide v11, v8, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v8, v11

    invoke-direct {v9, v10, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v9, v7, Ln0/j$a;->a:Landroid/graphics/PointF;

    iget-object v8, v7, Ln0/j$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v8

    add-int/lit8 v1, v1, 0x4

    move v9, v6

    :goto_2
    if-ge v9, v8, :cond_2

    new-instance v10, Lo0/t;

    invoke-direct {v10}, Lo0/t;-><init>()V

    invoke-virtual {v10, p1, v1}, Lo0/t;->a(Lq0/a;I)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v7, Ln0/j$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    iget-object v8, p0, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v6, p0, Ln0/j;->Q:Z

    if-eqz v2, :cond_6

    add-int/2addr p2, v2

    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_4

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x4

    new-instance v2, Lo0/f;

    invoke-direct {v2}, Lo0/f;-><init>()V

    iput-object v2, p0, Ln0/j;->R:Lo0/f;

    invoke-virtual {v2, p1, p2}, Lo0/f;->a(Lq0/a;I)I

    add-int/2addr p2, v1

    :cond_4
    and-int/lit8 v1, v4, 0x8

    if-eqz v1, :cond_5

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x4

    new-instance v2, Lo0/g;

    invoke-direct {v2}, Lo0/g;-><init>()V

    iput-object v2, p0, Ln0/j;->S:Lo0/g;

    invoke-virtual {v2, p1, p2}, Lo0/g;->a(Lq0/a;I)I

    add-int/2addr p2, v1

    :cond_5
    and-int/lit16 v1, v4, 0x80

    if-eqz v1, :cond_6

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v1

    add-int/lit8 p2, p2, 0x2

    :goto_3
    if-ge v6, v1, :cond_6

    new-instance v2, Lo0/t;

    invoke-direct {v2}, Lo0/t;-><init>()V

    invoke-virtual {v2, p1, p2}, Lo0/t;->a(Lq0/a;I)I

    move-result v3

    add-int/2addr p2, v3

    iget-object v3, p0, Ln0/j;->T:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    return v0
.end method

.method private n(Lq0/a;I)Z
    .locals 12

    add-int/lit8 v0, p2, 0x6

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lq0/a;->u(II)V

    const/4 v2, 0x4

    add-int/2addr v0, v2

    new-instance v3, Lcom/samsung/android/sdk/pen/base/SpenPointD;

    invoke-direct {v3}, Lcom/samsung/android/sdk/pen/base/SpenPointD;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    iget-object v6, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln0/j$a;

    iget-object v6, v6, Ln0/j$a;->a:Landroid/graphics/PointF;

    invoke-virtual {v3, v6}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v0, v3}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x4

    iget-object v5, p0, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Lq0/a;->u(II)V

    add-int/lit8 v6, v1, 0x4

    iget-object v7, p0, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v4

    :goto_1
    if-ge v7, v5, :cond_2

    iget-object v8, p0, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln0/j$a;

    iget-object v9, v8, Ln0/j$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, v8, Ln0/j$a;->a:Landroid/graphics/PointF;

    invoke-virtual {v3, v10}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v6, v3}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    add-int/lit8 v6, v6, 0x10

    invoke-virtual {p1, v6, v9}, Lq0/a;->u(II)V

    add-int/2addr v6, v2

    move v10, v4

    :goto_2
    if-ge v10, v9, :cond_1

    iget-object v11, v8, Ln0/j$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo0/t;

    invoke-virtual {v11, p1, v6}, Lo0/t;->b(Lq0/a;I)I

    move-result v11

    add-int/2addr v6, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    sub-int v1, v6, v1

    invoke-virtual {p1, v0, v1}, Lq0/a;->u(II)V

    iget-boolean v0, p0, Ln0/j;->Q:Z

    invoke-virtual {p1, v6, v0}, Lq0/a;->q(II)V

    const/4 v0, 0x1

    add-int/2addr v6, v0

    sub-int v1, v6, p2

    iget-object v3, p0, Ln0/j;->R:Lo0/f;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lo0/f;->f()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Lq0/a;->u(II)V

    add-int/lit8 v6, v6, 0x4

    iget-object v3, p0, Ln0/j;->R:Lo0/f;

    invoke-virtual {v3, p1, v6}, Lo0/f;->e(Lq0/a;I)I

    move-result v3

    add-int/2addr v6, v3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    iget-object v5, p0, Ln0/j;->S:Lo0/g;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lo0/g;->e()I

    move-result v5

    invoke-virtual {p1, v6, v5}, Lq0/a;->u(II)V

    add-int/lit8 v6, v6, 0x4

    iget-object v5, p0, Ln0/j;->S:Lo0/g;

    invoke-virtual {v5, p1, v6}, Lo0/g;->d(Lq0/a;I)I

    move-result v5

    add-int/2addr v6, v5

    or-int/lit8 v3, v3, 0x8

    :cond_4
    iget-object v5, p0, Ln0/j;->T:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {p1, v6, v5}, Lq0/a;->r(II)V

    add-int/lit8 v6, v6, 0x2

    iget-object v5, p0, Ln0/j;->T:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo0/t;

    invoke-virtual {v7, p1, v6}, Lo0/t;->b(Lq0/a;I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_4

    :cond_5
    or-int/lit16 v3, v3, 0x80

    :cond_6
    sub-int/2addr v6, p2

    if-nez v3, :cond_7

    move v1, v4

    :cond_7
    invoke-virtual {p1, p2, v6}, Lq0/a;->u(II)V

    add-int/2addr p2, v2

    const/4 v5, 0x6

    invoke-virtual {p1, p2, v5}, Lq0/a;->r(II)V

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, v1}, Lq0/a;->u(II)V

    add-int/2addr p2, v2

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2, v0}, Lq0/a;->q(II)V

    add-int/lit8 p2, v1, 0x1

    invoke-virtual {p1, v1, v4}, Lq0/a;->q(II)V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2, v0}, Lq0/a;->q(II)V

    invoke-virtual {p1, v1, v3}, Lq0/a;->q(II)V

    return v0
.end method

.method private o()I
    .locals 5

    iget-object v0, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    const/16 v1, 0x12

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x4

    iget-object v0, p0, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/j$a;

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x4

    iget-object v3, v3, Ln0/j$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/t;

    invoke-virtual {v4}, Lo0/t;->c()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Ln0/j;->R:Lo0/f;

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0}, Lo0/f;->f()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Ln0/j;->S:Lo0/g;

    if-eqz v0, :cond_3

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0}, Lo0/g;->e()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget-object v0, p0, Ln0/j;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x2

    iget-object v0, p0, Ln0/j;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/t;

    invoke-virtual {v2}, Lo0/t;->c()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    :cond_4
    return v1
.end method

.method private s()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln0/j;->T:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln0/j;->V:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln0/j;->U:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public A(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method public G(Lorg/xmlpull/v1/XmlPullParser;Ln0/j$a;)V
    .locals 7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "connectedInfo"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseXml - invalid eventType = ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WCon_ObjectShapeBase"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const-string v5, "point"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p1}, Lq0/d;->g(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p2, Ln0/j$a;->a:Landroid/graphics/PointF;

    goto :goto_3

    :cond_4
    const-string v5, "objectUuidList"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    :goto_2
    if-ne v0, v2, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    new-instance v0, Lo0/t;

    invoke-direct {v0}, Lo0/t;-><init>()V

    invoke-static {p1}, Lq0/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lo0/t;->f(Ljava/lang/String;)V

    iget-object v6, p2, Ln0/j$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_2

    :cond_6
    :goto_3
    invoke-static {p1, v4}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_0
.end method

.method public H(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    if-ge v1, p2, :cond_3

    iget-object v2, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln0/j$a;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v2, Ln0/j$a;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, v2, Ln0/j$a;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iput-object v3, v2, Ln0/j$a;->a:Landroid/graphics/PointF;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ge v0, p2, :cond_4

    :goto_1
    if-ge v0, p2, :cond_5

    new-instance v1, Ln0/j$a;

    invoke-direct {v1}, Ln0/j$a;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iput-object v2, v1, Ln0/j$a;->a:Landroid/graphics/PointF;

    iget-object v2, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-le v0, p2, :cond_5

    :goto_2
    iget-object p1, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p2, :cond_5

    iget-object p1, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Ln0/j;->V:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/j$a;

    iget-object v0, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

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
    instance-of v1, p1, Ln0/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Ln0/j;

    invoke-super {p0, p1}, Ln0/a;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_ObjectShapeBase"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object p1, p0, Ln0/j;->R:Lo0/f;

    iget-object v4, v1, Ln0/j;->R:Lo0/f;

    invoke-static {p1, v4}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v4, "]"

    const-string v5, " - "

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mLineColorEffect["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/j;->R:Lo0/f;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/j;->R:Lo0/f;

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ln0/j;->S:Lo0/g;

    iget-object v6, v1, Ln0/j;->S:Lo0/g;

    invoke-static {p1, v6}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mLineStyleEffect["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/j;->S:Lo0/g;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/j;->S:Lo0/g;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Ln0/j;->T:Ljava/util/ArrayList;

    iget-object v6, v1, Ln0/j;->T:Ljava/util/ArrayList;

    invoke-static {p1, v6}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mSlaveUuidList["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/j;->T:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/j;->T:Ljava/util/ArrayList;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ln0/j;->U:Ljava/util/ArrayList;

    iget-object v6, v1, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-static {p1, v6}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mConnectedList["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/j;->U:Ljava/util/ArrayList;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Ln0/j;->V:Ljava/util/ArrayList;

    iget-object v6, v1, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-static {p1, v6}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mConnectionPointInfoList["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/j;->V:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_7
    return v0
.end method

.method public b(Le1/o;)V
    .locals 0

    return-void
.end method

.method public f(Le1/o;)V
    .locals 0

    invoke-super {p0, p1}, Ln0/a;->f(Le1/o;)V

    return-void
.end method

.method public g(Le1/o;)V
    .locals 8

    invoke-super {p0, p1}, Ln0/a;->g(Le1/o;)V

    iget-object v0, p0, Ln0/j;->V:Ljava/util/ArrayList;

    const-string v1, "point"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "connectionPointList"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v2, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/j$a;

    iget-object v3, v3, Ln0/j$a;->a:Landroid/graphics/PointF;

    invoke-virtual {p1, v1, v3}, Le1/o;->t(Ljava/lang/String;Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ln0/j;->U:Ljava/util/ArrayList;

    const-string/jumbo v2, "uuid"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "connectedInfoList"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v3, p0, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/j$a;

    const-string v5, "connectedInfo"

    invoke-virtual {p1, v5}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v6, v4, Ln0/j$a;->a:Landroid/graphics/PointF;

    invoke-virtual {p1, v1, v6}, Le1/o;->t(Ljava/lang/String;Landroid/graphics/PointF;)V

    const-string v6, "objectUuidList"

    invoke-virtual {p1, v6}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v4, v4, Ln0/j$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo0/t;

    invoke-virtual {v7}, Lo0/t;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Le1/o;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v6}, Le1/o;->g(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Le1/o;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Ln0/j;->R:Lo0/f;

    const-string v1, "lineColorEffect"

    invoke-virtual {p1, v1, v0}, Le1/o;->l(Ljava/lang/String;Lm0/d;)V

    iget-object v0, p0, Ln0/j;->S:Lo0/g;

    const-string v1, "lineStyleEffect"

    invoke-virtual {p1, v1, v0}, Le1/o;->l(Ljava/lang/String;Lm0/d;)V

    iget-object v0, p0, Ln0/j;->T:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "slaveUuidList"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v1, p0, Ln0/j;->T:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/t;

    invoke-virtual {v3}, Lo0/t;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Le1/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public v(Lq0/a;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ln0/a;->v(Lq0/a;II)I

    move-result p3

    const-string v0, "WCon_ObjectShapeBase"

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

    invoke-direct {p0, p1, p2}, Ln0/j;->c(Lq0/a;I)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ObjectShapeBase newApplyBinary() fail to apply own binary. err = "

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

    const-string v1, "WCon_ObjectShapeBase"

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

    invoke-direct {p0, p1, p2}, Ln0/j;->n(Lq0/a;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ObjectShapeBase newGetBinary() fail to get own binary. err"

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

    invoke-direct {p0}, Ln0/j;->o()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Ln0/a;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v0, v1, :cond_8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectionPointList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_0
    if-ne v0, v5, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_0
    new-instance v0, Ln0/j$a;

    invoke-direct {v0}, Ln0/j$a;-><init>()V

    invoke-static {p1}, Lq0/d;->g(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Ln0/j$a;->a:Landroid/graphics/PointF;

    iget-object v1, p0, Ln0/j;->V:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v2, "connectedInfoList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_1
    if-ne v0, v5, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    new-instance v0, Ln0/j$a;

    invoke-direct {v0}, Ln0/j$a;-><init>()V

    invoke-virtual {p0, p1, v0}, Ln0/j;->G(Lorg/xmlpull/v1/XmlPullParser;Ln0/j$a;)V

    iget-object v1, p0, Ln0/j;->U:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_1

    :cond_3
    const-string v2, "lineColorEffect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lo0/f;

    invoke-direct {v0}, Lo0/f;-><init>()V

    iput-object v0, p0, Ln0/j;->R:Lo0/f;

    invoke-virtual {v0, p1}, Lo0/f;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :cond_4
    const-string v2, "lineStyleEffect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lo0/g;

    invoke-direct {v0}, Lo0/g;-><init>()V

    iput-object v0, p0, Ln0/j;->S:Lo0/g;

    invoke-virtual {v0, p1}, Lo0/g;->g(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :cond_5
    const-string v2, "slaveUuidList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln0/j;->T:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_2
    if-ne v0, v5, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    new-instance v0, Lo0/t;

    invoke-direct {v0}, Lo0/t;-><init>()V

    invoke-static {p1}, Lq0/d;->k(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo0/t;->f(Ljava/lang/String;)V

    iget-object v1, p0, Ln0/j;->T:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-super {p0, p1}, Ln0/a;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_8
    :goto_3
    return-void
.end method
