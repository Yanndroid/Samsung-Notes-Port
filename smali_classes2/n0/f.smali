.class public Ln0/f;
.super Ln0/j;
.source "SourceFile"


# instance fields
.field public W:I

.field public X:I

.field public Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public Z:Landroid/graphics/PointF;

.field public a0:Landroid/graphics/PointF;

.field public b0:Landroid/graphics/RectF;

.field public c0:Landroid/graphics/RectF;

.field public d0:F

.field public e0:I

.field public f0:I

.field public g0:I

.field public h0:Lo0/m;


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Ln0/j;-><init>(ILk0/b;)V

    invoke-direct {p0}, Ln0/f;->s()V

    return-void
.end method

.method private c(Lq0/a;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p2}, Lq0/a;->e(I)I

    move-result v2

    add-int/lit8 v3, p2, 0x4

    invoke-virtual {v1, v3}, Lq0/a;->c(I)S

    move-result v4

    add-int/lit8 v3, v3, 0x2

    const/4 v5, -0x1

    const/16 v6, 0x8

    if-eq v4, v6, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyOwnBinary() - Invalid data type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WCon_ObjectLine"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-virtual {v1, v3}, Lq0/a;->e(I)I

    move-result v4

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v3

    invoke-virtual {v1, v7}, Lq0/a;->b(I)B

    add-int/2addr v7, v3

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v1, v7}, Lq0/a;->b(I)B

    move-result v7

    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v8

    add-int/2addr v3, v7

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v3

    iput v3, v0, Ln0/f;->W:I

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v1, v7}, Lq0/a;->b(I)B

    move-result v7

    iput v7, v0, Ln0/f;->X:I

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v3

    iget-object v9, v0, Ln0/f;->Y:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_1

    invoke-virtual {v1, v7}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v10

    add-int/lit8 v7, v7, 0x10

    iget-object v11, v0, Ln0/f;->Y:Ljava/util/ArrayList;

    new-instance v12, Landroid/graphics/PointF;

    iget-wide v13, v10, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v13, v13

    iget-wide v14, v10, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v10, v14

    invoke-direct {v12, v13, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v3

    add-int/lit8 v7, v7, 0x10

    new-instance v9, Landroid/graphics/PointF;

    iget-wide v10, v3, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v10, v10

    iget-wide v11, v3, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v3, v11

    invoke-direct {v9, v10, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v9, v0, Ln0/f;->Z:Landroid/graphics/PointF;

    invoke-virtual {v1, v7}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v3

    add-int/lit8 v7, v7, 0x10

    new-instance v9, Landroid/graphics/PointF;

    iget-wide v10, v3, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v10, v10

    iget-wide v11, v3, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v3, v11

    invoke-direct {v9, v10, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v9, v0, Ln0/f;->a0:Landroid/graphics/PointF;

    invoke-virtual {v1, v7}, Lq0/a;->l(I)Lcom/samsung/android/sdk/pen/base/SpenRectD;

    move-result-object v3

    add-int/lit8 v7, v7, 0x20

    new-instance v9, Landroid/graphics/RectF;

    iget-wide v10, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    double-to-float v10, v10

    iget-wide v11, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    double-to-float v11, v11

    iget-wide v12, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    double-to-float v12, v12

    iget-wide v13, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    double-to-float v3, v13

    invoke-direct {v9, v10, v11, v12, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, v0, Ln0/f;->b0:Landroid/graphics/RectF;

    invoke-virtual {v1, v7}, Lq0/a;->l(I)Lcom/samsung/android/sdk/pen/base/SpenRectD;

    move-result-object v3

    add-int/lit8 v7, v7, 0x20

    new-instance v9, Landroid/graphics/RectF;

    iget-wide v10, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    double-to-float v10, v10

    iget-wide v11, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    double-to-float v11, v11

    iget-wide v12, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    double-to-float v12, v12

    iget-wide v13, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    double-to-float v3, v13

    invoke-direct {v9, v10, v11, v12, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, v0, Ln0/f;->c0:Landroid/graphics/RectF;

    invoke-virtual {v1, v7}, Lq0/a;->f(I)F

    move-result v3

    iput v3, v0, Ln0/f;->d0:F

    if-eqz v4, :cond_6

    add-int v3, p2, v4

    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Lq0/a;->e(I)I

    move-result v4

    iput v4, v0, Ln0/f;->e0:I

    add-int/lit8 v3, v3, 0x4

    :cond_2
    and-int/lit8 v4, v8, 0x2

    if-eqz v4, :cond_3

    invoke-virtual {v1, v3}, Lq0/a;->e(I)I

    move-result v4

    iput v4, v0, Ln0/f;->f0:I

    add-int/lit8 v3, v3, 0x4

    :cond_3
    and-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v3}, Lq0/a;->e(I)I

    move-result v4

    iput v4, v0, Ln0/f;->g0:I

    add-int/lit8 v3, v3, 0x4

    :cond_4
    iget v4, v0, Ln0/f;->g0:I

    if-ne v4, v5, :cond_5

    iget v4, v0, Ln0/f;->e0:I

    iput v4, v0, Ln0/f;->g0:I

    :cond_5
    and-int/lit8 v4, v8, 0x8

    if-eqz v4, :cond_6

    new-instance v4, Lo0/m;

    invoke-direct {v4}, Lo0/m;-><init>()V

    iput-object v4, v0, Ln0/f;->h0:Lo0/m;

    invoke-virtual {v4, v1, v3}, Lo0/m;->a(Lq0/a;I)I

    :cond_6
    return v2
.end method

.method private n(Lq0/a;I)Z
    .locals 8

    add-int/lit8 v0, p2, 0x6

    const/16 v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Ln0/f;->W:I

    invoke-virtual {p1, v0, v3}, Lq0/a;->q(II)V

    add-int/lit8 v0, v2, 0x1

    iget v3, p0, Ln0/f;->X:I

    invoke-virtual {p1, v2, v3}, Lq0/a;->q(II)V

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ln0/f;->Y:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lq0/a;->q(II)V

    new-instance v0, Lcom/samsung/android/sdk/pen/base/SpenPointD;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/base/SpenPointD;-><init>()V

    iget-object v3, p0, Ln0/f;->Y:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v2, v0}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ln0/f;->Z:Landroid/graphics/PointF;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v2, v0}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    add-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Ln0/f;->a0:Landroid/graphics/PointF;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v2, v0}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    add-int/lit8 v2, v2, 0x10

    new-instance v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;

    iget-object v3, p0, Ln0/f;->b0:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/pen/base/SpenRectD;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, v2, v0}, Lq0/a;->A(ILcom/samsung/android/sdk/pen/base/SpenRectD;)V

    add-int/lit8 v2, v2, 0x20

    new-instance v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;

    iget-object v3, p0, Ln0/f;->c0:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/pen/base/SpenRectD;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, v2, v0}, Lq0/a;->A(ILcom/samsung/android/sdk/pen/base/SpenRectD;)V

    add-int/lit8 v2, v2, 0x20

    iget v0, p0, Ln0/f;->d0:F

    invoke-virtual {p1, v2, v0}, Lq0/a;->t(IF)V

    add-int/lit8 v2, v2, 0x4

    sub-int v0, v2, p2

    iget v3, p0, Ln0/f;->e0:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v2, v3}, Lq0/a;->u(II)V

    add-int/lit8 v2, v2, 0x4

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    iget v7, p0, Ln0/f;->f0:I

    if-eq v7, v4, :cond_2

    invoke-virtual {p1, v2, v7}, Lq0/a;->u(II)V

    add-int/lit8 v2, v2, 0x4

    or-int/lit8 v3, v3, 0x2

    :cond_2
    iget v7, p0, Ln0/f;->g0:I

    if-eq v7, v4, :cond_3

    invoke-virtual {p1, v2, v7}, Lq0/a;->u(II)V

    add-int/lit8 v2, v2, 0x4

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object v4, p0, Ln0/f;->h0:Lo0/m;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p1, v2}, Lo0/m;->c(Lq0/a;I)I

    move-result v4

    add-int/2addr v2, v4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    sub-int/2addr v2, p2

    if-nez v3, :cond_5

    move v0, v5

    :cond_5
    invoke-virtual {p1, p2, v2}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2, v1}, Lq0/a;->r(II)V

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2, v6}, Lq0/a;->q(II)V

    add-int/lit8 p2, v0, 0x1

    invoke-virtual {p1, v0, v5}, Lq0/a;->q(II)V

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2, v6}, Lq0/a;->q(II)V

    invoke-virtual {p1, v0, v3}, Lq0/a;->q(II)V

    return v6
.end method

.method private o()I
    .locals 3

    iget-object v0, p0, Ln0/f;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x10

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, 0x44

    iget v0, p0, Ln0/f;->e0:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x4

    :cond_0
    iget v0, p0, Ln0/f;->f0:I

    if-eq v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x4

    :cond_1
    iget v0, p0, Ln0/f;->g0:I

    if-eq v0, v2, :cond_2

    add-int/lit8 v1, v1, 0x4

    :cond_2
    iget-object v0, p0, Ln0/f;->h0:Lo0/m;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo0/m;->d()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method private s()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Ln0/f;->e0:I

    iput v0, p0, Ln0/f;->f0:I

    iput v0, p0, Ln0/f;->g0:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln0/f;->Y:Ljava/util/ArrayList;

    return-void
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

    invoke-virtual {p0, p1, v3}, Ln0/f;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

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

    const-string v4, "WCon_ObjectLine"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ln0/f;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/f;->f(Le1/o;)V

    invoke-virtual {p0, p1}, Ln0/f;->g(Le1/o;)V

    return-void
.end method

.method public f(Le1/o;)V
    .locals 3

    invoke-super {p0, p1}, Ln0/j;->f(Le1/o;)V

    iget v0, p0, Ln0/f;->W:I

    const-string v1, "connectorType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ln0/f;->X:I

    const-string v1, "startDirection"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ln0/f;->d0:F

    const-string v1, "originalDegree"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    iget v0, p0, Ln0/f;->g0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v2, "penName"

    invoke-virtual {p1, v2, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Ln0/f;->e0:I

    if-eq v0, v1, :cond_1

    const-string v2, "defaultPenName"

    invoke-virtual {p1, v2, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Ln0/f;->f0:I

    if-eq v0, v1, :cond_2

    const-string v1, "penStyle"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public g(Le1/o;)V
    .locals 3

    invoke-super {p0, p1}, Ln0/j;->g(Le1/o;)V

    iget-object v0, p0, Ln0/f;->Y:Ljava/util/ArrayList;

    const-string v1, "controlPointList"

    const-string v2, "controlPoint"

    invoke-virtual {p1, v1, v2, v0}, Le1/o;->r(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Ln0/f;->Z:Landroid/graphics/PointF;

    const-string v1, "beginPos"

    invoke-virtual {p1, v1, v0}, Le1/o;->t(Ljava/lang/String;Landroid/graphics/PointF;)V

    iget-object v0, p0, Ln0/f;->a0:Landroid/graphics/PointF;

    const-string v1, "endPos"

    invoke-virtual {p1, v1, v0}, Le1/o;->t(Ljava/lang/String;Landroid/graphics/PointF;)V

    iget-object v0, p0, Ln0/f;->b0:Landroid/graphics/RectF;

    const-string v1, "originalDrawnRect"

    invoke-virtual {p1, v1, v0}, Le1/o;->v(Ljava/lang/String;Landroid/graphics/RectF;)V

    iget-object v0, p0, Ln0/f;->c0:Landroid/graphics/RectF;

    const-string v1, "originalRect"

    invoke-virtual {p1, v1, v0}, Le1/o;->v(Ljava/lang/String;Landroid/graphics/RectF;)V

    iget-object v0, p0, Ln0/f;->h0:Lo0/m;

    if-eqz v0, :cond_0

    const-string v1, "path"

    invoke-virtual {p1, v1, v0}, Le1/o;->l(Ljava/lang/String;Lm0/d;)V

    :cond_0
    return-void
.end method

.method public v(Lq0/a;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ln0/j;->v(Lq0/a;II)I

    move-result p3

    const-string v0, "WCon_ObjectLine"

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

    invoke-direct {p0, p1, p2}, Ln0/f;->c(Lq0/a;I)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ObjectLine newApplyBinary() fail to apply own binary. err = "

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

    invoke-super {p0, p1, p2}, Ln0/j;->w(Lq0/a;I)I

    move-result v0

    const-string v1, "WCon_ObjectLine"

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
    invoke-super {p0}, Ln0/j;->x()I

    move-result v2

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2}, Ln0/f;->n(Lq0/a;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ObjectLine newGetBinary() fail to get own binary. err"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_1
    return v0
.end method

.method public x()I
    .locals 2

    invoke-super {p0}, Ln0/j;->x()I

    move-result v0

    invoke-direct {p0}, Ln0/f;->o()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectorType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/f;->W:I

    goto :goto_0

    :cond_0
    const-string v1, "startDirection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/f;->X:I

    goto :goto_0

    :cond_1
    const-string v1, "originalDegree"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ln0/f;->d0:F

    goto :goto_0

    :cond_2
    const-string v1, "penName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/f;->g0:I

    goto :goto_0

    :cond_3
    const-string v1, "defaultPenName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/f;->e0:I

    goto :goto_0

    :cond_4
    const-string v1, "penStyle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/f;->f0:I

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Ln0/j;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const-string v2, "controlPointList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln0/f;->Y:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_0
    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    iget-object v0, p0, Ln0/f;->Y:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->g(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v1

    goto :goto_0

    :cond_1
    const-string v1, "beginPos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lq0/d;->g(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Ln0/f;->Z:Landroid/graphics/PointF;

    goto :goto_1

    :cond_2
    const-string v1, "endPos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lq0/d;->g(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Ln0/f;->a0:Landroid/graphics/PointF;

    goto :goto_1

    :cond_3
    const-string v1, "originalDrawnRect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lq0/d;->j(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Ln0/f;->b0:Landroid/graphics/RectF;

    goto :goto_1

    :cond_4
    const-string v1, "originalRect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lq0/d;->j(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Ln0/f;->c0:Landroid/graphics/RectF;

    goto :goto_1

    :cond_5
    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lo0/m;

    invoke-direct {v0}, Lo0/m;-><init>()V

    iput-object v0, p0, Ln0/f;->h0:Lo0/m;

    invoke-virtual {v0, p1}, Lo0/m;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_6
    invoke-super {p0, p1}, Ln0/j;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_7
    :goto_1
    return-void
.end method
