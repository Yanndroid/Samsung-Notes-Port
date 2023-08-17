.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/HandwritingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObjectsRect(Ljava/util/List;)Landroid/graphics/RectF;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/HandwritingUtil;->updateBoundPosition(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static updateBoundPosition(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    :cond_2
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method
