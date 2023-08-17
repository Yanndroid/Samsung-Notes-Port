.class public Lo0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/d;
.implements Lm0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/m$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo0/m$a;",
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

    iput-object v0, p0, Lo0/m;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lo0/m;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lo0/m;

    iget-object v0, p0, Lo0/m;->a:Ljava/util/ArrayList;

    iget-object p1, p1, Lo0/m;->a:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public a(Lq0/a;I)I
    .locals 7

    iget-object v0, p0, Lo0/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    new-instance v3, Lo0/m$a;

    invoke-direct {v3}, Lo0/m$a;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    iput v1, v3, Lo0/m$a;->a:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    const/4 v5, 0x5

    if-eq v1, v5, :cond_1

    const/4 v5, 0x7

    if-eq v1, v5, :cond_0

    :goto_1
    move v1, v4

    goto :goto_3

    :cond_0
    invoke-virtual {p1, v4}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v1

    add-int/lit8 v4, v4, 0x10

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v5, v5

    iput v5, v3, Lo0/m$a;->b:F

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v1, v5

    iput v1, v3, Lo0/m$a;->c:F

    invoke-virtual {p1, v4}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v1

    add-int/lit8 v4, v4, 0x10

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v5, v5

    iput v5, v3, Lo0/m$a;->d:F

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v1, v5

    iput v1, v3, Lo0/m$a;->e:F

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v1

    add-int/lit8 v4, v4, 0x10

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v5, v5

    iput v5, v3, Lo0/m$a;->b:F

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v1, v5

    iput v1, v3, Lo0/m$a;->c:F

    invoke-virtual {p1, v4}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v1

    add-int/lit8 v4, v4, 0x10

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v5, v5

    iput v5, v3, Lo0/m$a;->d:F

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v1, v5

    iput v1, v3, Lo0/m$a;->e:F

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v4}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v1

    add-int/lit8 v4, v4, 0x10

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v5, v5

    iput v5, v3, Lo0/m$a;->b:F

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v1, v5

    iput v1, v3, Lo0/m$a;->c:F

    :goto_2
    invoke-virtual {p1, v4}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v1

    add-int/lit8 v4, v4, 0x10

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v5, v5

    iput v5, v3, Lo0/m$a;->f:F

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v1, v5

    iput v1, v3, Lo0/m$a;->g:F

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v4}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v1

    add-int/lit8 v4, v4, 0x10

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v5, v5

    iput v5, v3, Lo0/m$a;->b:F

    iget-wide v5, v1, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v1, v5

    iput v1, v3, Lo0/m$a;->c:F

    goto :goto_1

    :goto_3
    iget-object v4, p0, Lo0/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    sub-int/2addr v1, p2

    return v1
.end method

.method public b(Le1/o;)V
    .locals 12

    const-string v0, "segment"

    const-string v1, "segmentList"

    :try_start_0
    invoke-virtual {p1, v1}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v2, p0, Lo0/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/m$a;

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    const-string/jumbo v4, "type"

    iget v5, v3, Lo0/m$a;->a:I

    invoke-virtual {p1, v4, v5}, Le1/o;->b(Ljava/lang/String;I)V

    iget v4, v3, Lo0/m$a;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    const-string/jumbo v6, "y"

    const-string/jumbo v7, "x"

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    const-string/jumbo v8, "y2"

    const-string/jumbo v9, "x2"

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    const-string/jumbo v10, "y1"

    const-string/jumbo v11, "x1"

    if-eq v4, v5, :cond_1

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    iget v4, v3, Lo0/m$a;->b:F

    invoke-virtual {p1, v7, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v4, v3, Lo0/m$a;->c:F

    invoke-virtual {p1, v6, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v4, v3, Lo0/m$a;->d:F

    invoke-virtual {p1, v11, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v3, v3, Lo0/m$a;->e:F

    invoke-virtual {p1, v10, v3}, Le1/o;->a(Ljava/lang/String;F)V

    goto :goto_2

    :cond_1
    iget v4, v3, Lo0/m$a;->b:F

    invoke-virtual {p1, v7, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v4, v3, Lo0/m$a;->c:F

    invoke-virtual {p1, v6, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v4, v3, Lo0/m$a;->d:F

    invoke-virtual {p1, v11, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v4, v3, Lo0/m$a;->e:F

    invoke-virtual {p1, v10, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v4, v3, Lo0/m$a;->f:F

    invoke-virtual {p1, v9, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v3, v3, Lo0/m$a;->g:F

    :goto_1
    invoke-virtual {p1, v8, v3}, Le1/o;->a(Ljava/lang/String;F)V

    goto :goto_2

    :cond_2
    iget v4, v3, Lo0/m$a;->b:F

    invoke-virtual {p1, v7, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v4, v3, Lo0/m$a;->c:F

    invoke-virtual {p1, v6, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v4, v3, Lo0/m$a;->f:F

    invoke-virtual {p1, v9, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v3, v3, Lo0/m$a;->g:F

    goto :goto_1

    :cond_3
    iget v4, v3, Lo0/m$a;->b:F

    invoke-virtual {p1, v7, v4}, Le1/o;->a(Ljava/lang/String;F)V

    iget v3, v3, Lo0/m$a;->c:F

    invoke-virtual {p1, v6, v3}, Le1/o;->a(Ljava/lang/String;F)V

    :goto_2
    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Le1/o;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composeXml : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_Path"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x146

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public c(Lq0/a;I)I
    .locals 7

    iget-object v0, p0, Lo0/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/lit8 v0, p2, 0x4

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Lcom/samsung/android/sdk/pen/base/SpenPointD;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/base/SpenPointD;-><init>()V

    iget-object v3, p0, Lo0/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/m$a;

    add-int/lit8 v5, v0, 0x1

    iget v6, v4, Lo0/m$a;->a:I

    invoke-virtual {p1, v0, v6}, Lq0/a;->q(II)V

    iget v0, v4, Lo0/m$a;->a:I

    const/4 v6, 0x1

    if-eq v0, v6, :cond_3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_3

    const/4 v6, 0x3

    if-eq v0, v6, :cond_2

    const/4 v6, 0x4

    if-eq v0, v6, :cond_1

    const/4 v6, 0x5

    if-eq v0, v6, :cond_1

    const/4 v6, 0x7

    if-eq v0, v6, :cond_0

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_0
    iget v0, v4, Lo0/m$a;->b:F

    iget v6, v4, Lo0/m$a;->c:F

    invoke-virtual {v1, v0, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v5, v2}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    add-int/lit8 v5, v5, 0x10

    iget v0, v4, Lo0/m$a;->d:F

    iget v4, v4, Lo0/m$a;->e:F

    goto :goto_3

    :cond_1
    iget v0, v4, Lo0/m$a;->b:F

    iget v6, v4, Lo0/m$a;->c:F

    invoke-virtual {v1, v0, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v5, v2}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    add-int/lit8 v5, v5, 0x10

    iget v0, v4, Lo0/m$a;->d:F

    iget v6, v4, Lo0/m$a;->e:F

    invoke-virtual {v1, v0, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v5, v2}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    goto :goto_2

    :cond_2
    iget v0, v4, Lo0/m$a;->b:F

    iget v6, v4, Lo0/m$a;->c:F

    invoke-virtual {v1, v0, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v5, v2}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    :goto_2
    add-int/lit8 v5, v5, 0x10

    iget v0, v4, Lo0/m$a;->f:F

    iget v4, v4, Lo0/m$a;->g:F

    :goto_3
    invoke-virtual {v1, v0, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v5, v2}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    goto :goto_4

    :cond_3
    iget v0, v4, Lo0/m$a;->b:F

    iget v4, v4, Lo0/m$a;->c:F

    invoke-virtual {v1, v0, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v5, v2}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    :goto_4
    add-int/lit8 v5, v5, 0x10

    goto :goto_1

    :cond_4
    sub-int/2addr v0, p2

    return v0
.end method

.method public d()I
    .locals 5

    iget-object v0, p0, Lo0/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x4

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/m$a;

    add-int/lit8 v2, v2, 0x1

    iget v3, v3, Lo0/m$a;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    if-eq v3, v1, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x30

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x20

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    :cond_3
    return v2
.end method

.method public e(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "path"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_b

    const/4 v4, 0x4

    if-eq v0, v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseXml - invalid eventType = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WCon_Path"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "segmentList"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lo0/m;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_0
    if-ne v0, v2, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_2
    new-instance v0, Lo0/m$a;

    invoke-direct {v0}, Lo0/m$a;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_a

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lo0/m$a;->a:I

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v7

    iput v7, v0, Lo0/m$a;->b:F

    goto :goto_2

    :cond_4
    const-string/jumbo v8, "y"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v7

    iput v7, v0, Lo0/m$a;->c:F

    goto :goto_2

    :cond_5
    const-string/jumbo v8, "x1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v7

    iput v7, v0, Lo0/m$a;->d:F

    goto :goto_2

    :cond_6
    const-string/jumbo v8, "y1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v7

    iput v7, v0, Lo0/m$a;->e:F

    goto :goto_2

    :cond_7
    const-string/jumbo v8, "x2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v7

    iput v7, v0, Lo0/m$a;->f:F

    goto :goto_2

    :cond_8
    const-string/jumbo v8, "y2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v7

    iput v7, v0, Lo0/m$a;->g:F

    :cond_9
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lo0/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto/16 :goto_0

    :cond_b
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method
