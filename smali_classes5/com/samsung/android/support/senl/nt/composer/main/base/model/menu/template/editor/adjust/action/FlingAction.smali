.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    return-void
.end method


# virtual methods
.method public getFlingArea()Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;->getImageRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;->getCropRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public onFling(FFFF)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;->getImageRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;->getCropRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float v3, v2, p3

    add-float/2addr v3, p1

    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    sub-float/2addr v4, v2

    add-float p1, v4, p3

    :cond_0
    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float v3, v2, p3

    add-float/2addr v3, p1

    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    sub-float/2addr v4, v2

    add-float p1, v4, p3

    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v2, p4

    add-float/2addr v3, p2

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    sub-float/2addr v4, v2

    add-float p2, v4, p4

    :cond_2
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, p4

    add-float/2addr v2, p2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_3

    sub-float/2addr v1, v0

    add-float p2, v1, p4

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;->postTranslate(FF)V

    return-void
.end method
