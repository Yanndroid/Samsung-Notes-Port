.class public Lcom/samsung/android/sdk/pen/document/SpenPath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;
    }
.end annotation


# instance fields
.field private mSegmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;",
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

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addOval(FFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->type:I

    iput p1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iput p2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iput p3, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iput p4, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOval(Landroid/graphics/RectF;)V
    .locals 3

    const-string v0, "oval is null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/samsung/android/sdk/pen/document/SpenPath;->addOval(FFFF)V

    return-void
.end method

.method public arcTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->type:I

    iput p1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iput p2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iput p3, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iput p4, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    iput p5, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iput p6, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FF)V
    .locals 7

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenPath;->arcTo(FFFFFF)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public close()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->type:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenPath;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyToAndroidPath()Landroid/graphics/Path;
    .locals 9

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    invoke-virtual {v7, v1, v2, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :pswitch_3
    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget v3, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iget v4, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    iget v5, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iget v6, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :pswitch_4
    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget v3, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    invoke-virtual {v7, v1, v2, v3, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :pswitch_5
    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :pswitch_6
    iget v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v0, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cubicTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->type:I

    iput p1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iput p2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iput p3, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iput p4, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    iput p5, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iput p6, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenPath;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenPath;

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_e

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    iget-object v5, p1, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->type:I

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->type:I

    if-eq v6, v7, :cond_3

    return v1

    :cond_3
    if-eq v6, v2, :cond_a

    const/4 v7, 0x2

    if-eq v6, v7, :cond_a

    const/4 v7, 0x3

    if-eq v6, v7, :cond_8

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_4

    goto/16 :goto_1

    :cond_4
    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    iget v4, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    iget v5, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_b

    :cond_5
    return v1

    :cond_6
    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x1:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y1:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    iget v4, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    iget v5, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_b

    :cond_7
    return v1

    :cond_8
    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    iget v4, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    iget v5, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_b

    :cond_9
    return v1

    :cond_a
    iget v6, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iget v7, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_c

    iget v4, v4, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget v5, v5, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_2
    return v1

    :cond_d
    return v2

    :cond_e
    :goto_3
    return v1
.end method

.method public getSegment()[Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    return-object v0
.end method

.method public lineTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->type:I

    iput p1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iput p2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public moveTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->type:I

    iput p1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iput p2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public quadTo(FFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->type:I

    iput p1, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x:F

    iput p2, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y:F

    iput p3, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->x2:F

    iput p4, v0, Lcom/samsung/android/sdk/pen/document/SpenPath$Segment;->y2:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenPath;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
