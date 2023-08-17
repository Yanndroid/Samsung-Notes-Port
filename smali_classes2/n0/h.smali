.class public Ln0/h;
.super Ln0/a;
.source "SourceFile"


# instance fields
.field public Q:I

.field public R:I

.field public S:F

.field public T:Landroid/graphics/Rect;

.field public U:Lcom/samsung/android/sdk/pen/base/SpenRectD;


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Ln0/a;-><init>(ILk0/b;)V

    const/4 p1, -0x1

    iput p1, p0, Ln0/h;->Q:I

    iput p1, p0, Ln0/h;->R:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ln0/h;->T:Landroid/graphics/Rect;

    new-instance p1, Lcom/samsung/android/sdk/pen/base/SpenRectD;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/base/SpenRectD;-><init>()V

    iput-object p1, p0, Ln0/h;->U:Lcom/samsung/android/sdk/pen/base/SpenRectD;

    invoke-direct {p0}, Ln0/h;->s()V

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

    const/16 v4, 0xe

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

    const-string p2, "WCon_ObjectPainting"

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

    invoke-direct {p0, p1, p2, v1}, Ln0/h;->d(Lq0/a;II)Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    return v0
.end method

.method private d(Lq0/a;II)Z
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/h;->Q:I

    add-int/lit8 p2, p2, 0x4

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/h;->R:I

    add-int/lit8 p2, p2, 0x4

    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Ln0/h;->S:F

    add-int/lit8 p2, p2, 0x4

    :cond_2
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Lq0/a;->k(I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Ln0/h;->T:Landroid/graphics/Rect;

    add-int/lit8 p2, p2, 0x10

    :cond_3
    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_4

    invoke-virtual {p1, p2}, Lq0/a;->l(I)Lcom/samsung/android/sdk/pen/base/SpenRectD;

    move-result-object p1

    iput-object p1, p0, Ln0/h;->U:Lcom/samsung/android/sdk/pen/base/SpenRectD;

    :cond_4
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

    invoke-virtual {p0, v2}, Ln0/h;->G(Lq0/c;)V

    iget v0, v2, Lq0/c;->b:I

    iget v2, v2, Lq0/c;->c:I

    sub-int/2addr v0, p2

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    const/16 v0, 0xe

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
    .locals 6

    iget v0, p0, Ln0/h;->Q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    iget v2, p0, Ln0/h;->R:I

    if-eq v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Ln0/h;->S:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    :cond_2
    iget-object v1, p0, Ln0/h;->T:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x10

    :cond_4
    iget-object v1, p0, Ln0/h;->U:Lcom/samsung/android/sdk/pen/base/SpenRectD;

    iget-wide v2, v1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, v1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, v1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v1, v1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_6

    :cond_5
    add-int/lit8 v0, v0, 0x20

    :cond_6
    return v0
.end method

.method private s()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Ln0/h;->Q:I

    iput v0, p0, Ln0/h;->R:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ln0/h;->S:F

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

    invoke-virtual {p0, p1, v3}, Ln0/h;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

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

    const-string v4, "WCon_ObjectPainting"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ln0/h;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public final G(Lq0/c;)V
    .locals 5

    iget v0, p0, Ln0/h;->Q:I

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
    iget v0, p0, Ln0/h;->R:I

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
    iget v0, p0, Ln0/h;->S:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p1, Lq0/c;->b:I

    invoke-virtual {v1, v2, v0}, Lq0/a;->t(IF)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->c:I

    :cond_2
    iget-object v0, p0, Ln0/h;->T:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p1, Lq0/c;->b:I

    invoke-virtual {v1, v2, v0}, Lq0/a;->z(ILandroid/graphics/Rect;)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lq0/c;->c:I

    :cond_4
    iget-object v0, p0, Ln0/h;->U:Lcom/samsung/android/sdk/pen/base/SpenRectD;

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_5

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_5

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_5

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p1, Lq0/c;->b:I

    invoke-virtual {v1, v2, v0}, Lq0/a;->A(ILcom/samsung/android/sdk/pen/base/SpenRectD;)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lq0/c;->c:I

    :cond_6
    return-void
.end method

.method public IsSame(Ljava/lang/Object;)Z
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ln0/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Ln0/h;

    invoke-super {p0, p1}, Ln0/a;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_ObjectPainting"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget p1, p0, Ln0/h;->Q:I

    iget v4, v1, Ln0/h;->Q:I

    const-string v5, "]"

    const-string v6, " - "

    if-eq p1, v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mAttachFileID["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/h;->Q:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/h;->Q:I

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget p1, p0, Ln0/h;->R:I

    iget v4, v1, Ln0/h;->R:I

    if-eq p1, v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mThumbnailFileID["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/h;->R:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/h;->R:I

    goto :goto_1

    :cond_4
    iget p1, p0, Ln0/h;->S:F

    iget v4, v1, Ln0/h;->S:F

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mRatio["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/h;->S:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/h;->S:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Ln0/h;->T:Landroid/graphics/Rect;

    iget-object v4, v1, Ln0/h;->T:Landroid/graphics/Rect;

    invoke-static {p1, v4}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mCropRect["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/h;->T:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/h;->T:Landroid/graphics/Rect;

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget-object p1, p0, Ln0/h;->U:Lcom/samsung/android/sdk/pen/base/SpenRectD;

    iget-wide v7, p1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    iget-object v4, v1, Ln0/h;->U:Lcom/samsung/android/sdk/pen/base/SpenRectD;

    iget-wide v9, v4, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    cmpl-double v7, v7, v9

    if-nez v7, :cond_8

    iget-wide v7, p1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    iget-wide v9, v4, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    cmpl-double v7, v7, v9

    if-nez v7, :cond_8

    iget-wide v7, p1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    iget-wide v9, v4, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    cmpl-double v7, v7, v9

    if-nez v7, :cond_8

    iget-wide v7, p1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    iget-wide v9, v4, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    cmpl-double p1, v7, v9

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    return v0

    :cond_8
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mOriginalRect["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/h;->U:Lcom/samsung/android/sdk/pen/base/SpenRectD;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/h;->U:Lcom/samsung/android/sdk/pen/base/SpenRectD;

    goto :goto_3
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/h;->f(Le1/o;)V

    invoke-virtual {p0, p1}, Ln0/h;->g(Le1/o;)V

    return-void
.end method

.method public f(Le1/o;)V
    .locals 3

    invoke-super {p0, p1}, Ln0/a;->f(Le1/o;)V

    iget v0, p0, Ln0/h;->Q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v2, v0}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "attachFile"

    invoke-virtual {p1, v2, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Ln0/h;->R:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v1, v0}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "thumbnailFile"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Ln0/h;->S:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const-string v1, "ratio"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    :cond_2
    return-void
.end method

.method public g(Le1/o;)V
    .locals 5

    invoke-super {p0, p1}, Ln0/a;->g(Le1/o;)V

    iget-object v0, p0, Ln0/h;->T:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "cropRect"

    invoke-virtual {p1, v1, v0}, Le1/o;->u(Ljava/lang/String;Landroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Ln0/h;->U:Lcom/samsung/android/sdk/pen/base/SpenRectD;

    if-eqz v0, :cond_3

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "originalRect"

    invoke-virtual {p1, v1, v0}, Le1/o;->w(Ljava/lang/String;Lcom/samsung/android/sdk/pen/base/SpenRectD;)V

    :cond_3
    return-void
.end method

.method public v(Lq0/a;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ln0/a;->v(Lq0/a;II)I

    move-result p3

    const-string v0, "WCon_ObjectPainting"

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

    invoke-direct {p0, p1, p2}, Ln0/h;->c(Lq0/a;I)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ObjectPainting newApplyBinary() fail to apply own binary. err = "

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

    const-string v1, "WCon_ObjectPainting"

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

    invoke-direct {p0, p1, p2}, Ln0/h;->n(Lq0/a;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ObjectPainting newGetBinary() fail to get own binary. err"

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

    invoke-direct {p0}, Ln0/h;->o()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attachFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {p2, p1}, Lk0/a;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/h;->Q:I

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "thumbnailFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {p2, p1}, Lk0/a;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/h;->R:I

    goto :goto_0

    :cond_1
    const-string v1, "ratio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ln0/h;->S:F

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Ln0/a;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cropRect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lq0/d;->h(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Ln0/h;->T:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const-string v1, "originalRect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lq0/d;->i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/sdk/pen/base/SpenRectD;

    move-result-object p1

    iput-object p1, p0, Ln0/h;->U:Lcom/samsung/android/sdk/pen/base/SpenRectD;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ln0/a;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    return-void
.end method
