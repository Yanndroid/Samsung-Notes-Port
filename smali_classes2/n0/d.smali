.class public Ln0/d;
.super Ln0/j;
.source "SourceFile"


# instance fields
.field public W:I

.field public X:Ljava/lang/String;

.field public Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a0:Landroid/graphics/RectF;

.field public b0:Landroid/graphics/Rect;

.field public c0:I

.field public d0:Z

.field public e0:F


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Ln0/j;-><init>(ILk0/b;)V

    const/4 p1, -0x1

    iput p1, p0, Ln0/d;->W:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Ln0/d;->c0:I

    return-void
.end method

.method private c(Lq0/a;I)I
    .locals 6

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v2

    add-int/lit8 v1, v1, 0x2

    const/4 v3, -0x1

    const/16 v4, 0xb

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

    const-string p2, "WCon_ObjectFormula"

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

    move-result v5

    add-int/2addr v4, v1

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v4}, Lq0/a;->b(I)B

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v1

    invoke-virtual {p0, v5}, Ln0/d;->I(I)V

    if-eqz v2, :cond_1

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2, v1}, Ln0/d;->d(Lq0/a;II)Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    return v0
.end method

.method private d(Lq0/a;II)Z
    .locals 8

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x4

    if-lez v0, :cond_1

    iget-object v2, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v3

    add-int/lit8 p2, p2, 0x2

    if-lez v3, :cond_0

    invoke-virtual {p1, p2, v3}, Lq0/a;->p(II)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr p2, v3

    iget-object v3, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lq0/a;->l(I)Lcom/samsung/android/sdk/pen/base/SpenRectD;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    iget-wide v3, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    double-to-float v3, v3

    iget-wide v4, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    double-to-float v4, v4

    iget-wide v5, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    double-to-float v5, v5

    iget-wide v6, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    double-to-float v0, v6

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Ln0/d;->a0:Landroid/graphics/RectF;

    add-int/lit8 p2, p2, 0x20

    :cond_2
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Lq0/a;->k(I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Ln0/d;->b0:Landroid/graphics/Rect;

    add-int/lit8 p2, p2, 0x10

    :cond_3
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/d;->W:I

    add-int/lit8 p2, p2, 0x4

    :cond_4
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x4

    if-lez v0, :cond_6

    iget-object v2, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_1
    if-ge v1, v0, :cond_6

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v2

    add-int/lit8 p2, p2, 0x2

    if-lez v2, :cond_5

    invoke-virtual {p1, p2, v2}, Lq0/a;->p(II)Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    iget-object v2, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_7

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/d;->c0:I

    add-int/lit8 p2, p2, 0x4

    :cond_7
    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_8

    invoke-virtual {p1, p2}, Lq0/a;->f(I)F

    move-result p1

    iput p1, p0, Ln0/d;->e0:F

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method private n(Lq0/a;I)Z
    .locals 5

    add-int/lit8 v0, p2, 0x6

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {p0}, Ln0/d;->J()I

    move-result v1

    sub-int v2, v0, p2

    new-instance v3, Lq0/c;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4}, Lq0/c;-><init>(Lq0/a;II)V

    invoke-virtual {p0, v3}, Ln0/d;->K(Lq0/c;)V

    iget v0, v3, Lq0/c;->b:I

    iget v3, v3, Lq0/c;->c:I

    sub-int/2addr v0, p2

    if-nez v3, :cond_0

    move v2, v4

    :cond_0
    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    const/16 v0, 0xb

    invoke-virtual {p1, p2, v0}, Lq0/a;->r(II)V

    const/4 v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2, v2}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v2, p2, 0x1

    const/4 v4, 0x1

    invoke-virtual {p1, p2, v4}, Lq0/a;->q(II)V

    add-int/lit8 p2, v2, 0x1

    invoke-virtual {p1, v2, v1}, Lq0/a;->q(II)V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2, v0}, Lq0/a;->q(II)V

    invoke-virtual {p1, v1, v3}, Lq0/a;->r(II)V

    return v4
.end method

.method private o()I
    .locals 5

    iget-object v0, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/16 v2, 0x13

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0xf

    :cond_1
    iget-object v0, p0, Ln0/d;->a0:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x20

    :cond_3
    iget-object v0, p0, Ln0/d;->b0:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_4

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-nez v3, :cond_4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x10

    :cond_5
    iget v0, p0, Ln0/d;->W:I

    if-ltz v0, :cond_6

    add-int/lit8 v2, v2, 0x4

    :cond_6
    iget-object v0, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    add-int/lit8 v2, v2, 0x4

    :goto_1
    if-ge v1, v0, :cond_7

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget v0, p0, Ln0/d;->c0:I

    if-eqz v0, :cond_8

    add-int/lit8 v2, v2, 0x4

    :cond_8
    iget v0, p0, Ln0/d;->e0:F

    float-to-double v0, v0

    const-wide/16 v3, 0x0

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_9

    add-int/lit8 v2, v2, 0x4

    :cond_9
    return v2
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

    invoke-virtual {p0, p1, v3}, Ln0/d;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

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

    const-string v4, "WCon_ObjectFormula"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ln0/d;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public I(I)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Ln0/d;->d0:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ln0/d;->d0:Z

    :goto_0
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
    instance-of v1, p1, Ln0/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Ln0/d;

    invoke-super {p0, p1}, Ln0/j;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_ObjectFormula"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget p1, p0, Ln0/d;->W:I

    iget v4, v1, Ln0/d;->W:I

    const-string v5, "]"

    const-string v6, " - "

    if-eq p1, v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mMediaId["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/d;->W:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/d;->W:I

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ln0/d;->X:Ljava/lang/String;

    iget-object v4, v1, Ln0/d;->X:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mMediaHash["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/d;->X:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/d;->X:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    iget-object v4, v1, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mLatexList["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/d;->Y:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    iget-object v4, v1, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mLatexResultList["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/d;->Z:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Ln0/d;->a0:Landroid/graphics/RectF;

    iget-object v4, v1, Ln0/d;->a0:Landroid/graphics/RectF;

    invoke-static {p1, v4}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mLatexResultRect["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/d;->a0:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/d;->a0:Landroid/graphics/RectF;

    goto :goto_3

    :cond_7
    iget-object p1, p0, Ln0/d;->b0:Landroid/graphics/Rect;

    iget-object v4, v1, Ln0/d;->b0:Landroid/graphics/Rect;

    invoke-static {p1, v4}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mImageNinePathRect["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/d;->b0:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/d;->b0:Landroid/graphics/Rect;

    goto :goto_3

    :cond_8
    iget p1, p0, Ln0/d;->c0:I

    iget v4, v1, Ln0/d;->c0:I

    if-eq p1, v4, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mAngleType["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/d;->c0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/d;->c0:I

    goto/16 :goto_1

    :cond_9
    iget p1, p0, Ln0/d;->e0:F

    iget v4, v1, Ln0/d;->e0:F

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mFontSize["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/d;->e0:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/d;->e0:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_a
    iget-boolean p1, p0, Ln0/d;->d0:Z

    iget-boolean v4, v1, Ln0/d;->d0:Z

    if-eq p1, v4, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mHasTrigonometryCalculation["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ln0/d;->d0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Ln0/d;->d0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    return v0
.end method

.method public J()I
    .locals 2

    iget-boolean v0, p0, Ln0/d;->d0:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final K(Lq0/c;)V
    .locals 7

    iget-object v0, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v2, p1, Lq0/c;->a:Lq0/a;

    iget v3, p1, Lq0/c;->b:I

    invoke-virtual {v2, v3, v0}, Lq0/a;->u(II)V

    iget v2, p1, Lq0/c;->b:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p1, Lq0/c;->b:I

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p1, Lq0/c;->a:Lq0/a;

    iget v5, p1, Lq0/c;->b:I

    invoke-virtual {v4, v5, v3}, Lq0/a;->r(II)V

    iget v4, p1, Lq0/c;->b:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p1, Lq0/c;->b:I

    iget-object v5, p1, Lq0/c;->a:Lq0/a;

    iget-object v6, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Lq0/a;->D(ILjava/lang/String;)V

    iget v4, p1, Lq0/c;->b:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    iput v4, p1, Lq0/c;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lq0/c;->c:I

    :cond_1
    iget-object v0, p0, Ln0/d;->a0:Landroid/graphics/RectF;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;

    invoke-direct {v3, v0}, Lcom/samsung/android/sdk/pen/base/SpenRectD;-><init>(Landroid/graphics/RectF;)V

    iget-object v0, p1, Lq0/c;->a:Lq0/a;

    iget v4, p1, Lq0/c;->b:I

    invoke-virtual {v0, v4, v3}, Lq0/a;->A(ILcom/samsung/android/sdk/pen/base/SpenRectD;)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lq0/c;->c:I

    :cond_3
    iget-object v0, p0, Ln0/d;->b0:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_4

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-nez v3, :cond_4

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p1, Lq0/c;->a:Lq0/a;

    iget v4, p1, Lq0/c;->b:I

    invoke-virtual {v3, v4, v0}, Lq0/a;->z(ILandroid/graphics/Rect;)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lq0/c;->c:I

    :cond_5
    iget v0, p0, Ln0/d;->W:I

    if-ltz v0, :cond_6

    iget-object v3, p1, Lq0/c;->a:Lq0/a;

    iget v4, p1, Lq0/c;->b:I

    invoke-virtual {v3, v4, v0}, Lq0/a;->u(II)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->c:I

    :cond_6
    iget-object v0, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v3, p1, Lq0/c;->a:Lq0/a;

    iget v4, p1, Lq0/c;->b:I

    invoke-virtual {v3, v4, v0}, Lq0/a;->u(II)V

    iget v3, p1, Lq0/c;->b:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p1, Lq0/c;->b:I

    :goto_1
    if-ge v1, v0, :cond_7

    iget-object v3, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p1, Lq0/c;->a:Lq0/a;

    iget v5, p1, Lq0/c;->b:I

    invoke-virtual {v4, v5, v3}, Lq0/a;->r(II)V

    iget v4, p1, Lq0/c;->b:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p1, Lq0/c;->b:I

    iget-object v5, p1, Lq0/c;->a:Lq0/a;

    iget-object v6, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Lq0/a;->D(ILjava/lang/String;)V

    iget v4, p1, Lq0/c;->b:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    iput v4, p1, Lq0/c;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lq0/c;->c:I

    :cond_8
    iget v0, p0, Ln0/d;->c0:I

    if-eqz v0, :cond_9

    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v3, p1, Lq0/c;->b:I

    invoke-virtual {v1, v3, v0}, Lq0/a;->u(II)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Lq0/c;->c:I

    :cond_9
    iget v0, p0, Ln0/d;->e0:F

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_a

    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p1, Lq0/c;->b:I

    invoke-virtual {v1, v2, v0}, Lq0/a;->t(IF)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Lq0/c;->c:I

    :cond_a
    return-void
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/d;->f(Le1/o;)V

    invoke-virtual {p0, p1}, Ln0/d;->g(Le1/o;)V

    return-void
.end method

.method public f(Le1/o;)V
    .locals 2

    invoke-super {p0, p1}, Ln0/j;->f(Le1/o;)V

    iget v0, p0, Ln0/d;->W:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v1, v0}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln0/d;->X:Ljava/lang/String;

    const-string v1, "mediaHash"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Ln0/d;->c0:I

    if-eqz v0, :cond_1

    const-string v1, "angleType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Ln0/d;->e0:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const-string v1, "fontSize"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    :cond_2
    iget-boolean v0, p0, Ln0/d;->d0:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v1, "hasTrigonometryCalculation"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public g(Le1/o;)V
    .locals 4

    invoke-super {p0, p1}, Ln0/j;->g(Le1/o;)V

    iget-object v0, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "latexList"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v1, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "latex"

    invoke-virtual {p1, v3, v2}, Le1/o;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ln0/d;->a0:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    const-string v1, "latexResultRect"

    invoke-virtual {p1, v1, v0}, Le1/o;->v(Ljava/lang/String;Landroid/graphics/RectF;)V

    :cond_2
    iget-object v0, p0, Ln0/d;->b0:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    const-string v1, "ninepatchRect"

    invoke-virtual {p1, v1, v0}, Le1/o;->u(Ljava/lang/String;Landroid/graphics/Rect;)V

    :cond_3
    iget-object v0, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "latexResultList"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v1, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "latexResult"

    invoke-virtual {p1, v3, v2}, Le1/o;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public v(Lq0/a;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ln0/j;->v(Lq0/a;II)I

    move-result p3

    const-string v0, "WCon_ObjectFormula"

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

    invoke-direct {p0, p1, p2}, Ln0/d;->c(Lq0/a;I)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ObjectFormula newApplyBinary() fail to apply own binary. err = "

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

    const-string v1, "WCon_ObjectFormula"

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

    invoke-direct {p0, p1, p2}, Ln0/d;->n(Lq0/a;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ObjectFormula newGetBinary() fail to get own binary. err"

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

    invoke-direct {p0}, Ln0/d;->o()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediaHash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/d;->X:Ljava/lang/String;

    iget-object p2, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {p2, p1}, Lk0/a;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/d;->W:I

    goto :goto_0

    :cond_0
    const-string v1, "angleType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/d;->c0:I

    goto :goto_0

    :cond_1
    const-string v1, "fontSize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ln0/d;->e0:F

    goto :goto_0

    :cond_2
    const-string v1, "hasTrigonometryCalculation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/d;->d0:Z

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Ln0/j;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const-string v2, "latexList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_0
    if-ne v1, v5, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Ln0/d;->Y:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v1

    goto :goto_0

    :cond_1
    const-string v2, "latexResultRect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lq0/d;->j(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Ln0/d;->a0:Landroid/graphics/RectF;

    goto :goto_2

    :cond_2
    const-string v2, "ninepatchRect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lq0/d;->h(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Ln0/d;->b0:Landroid/graphics/Rect;

    goto :goto_2

    :cond_3
    const-string v2, "latexResultList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_1
    if-ne v1, v5, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Ln0/d;->Z:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v1

    goto :goto_1

    :cond_5
    invoke-super {p0, p1}, Ln0/j;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_6
    :goto_2
    return-void
.end method
