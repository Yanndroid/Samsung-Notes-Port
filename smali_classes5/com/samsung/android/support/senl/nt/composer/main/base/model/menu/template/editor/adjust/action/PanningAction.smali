.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

.field private mBeforeDeltaX:F

.field private mBeforeDeltaY:F

.field private mDownTouchX:F

.field private mDownTouchY:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    return-void
.end method

.method private getFixedDragTransX(F)F
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;->getCropRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;->getImageRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mBeforeDeltaX:F

    sub-float v4, v2, v3

    add-float/2addr v4, p1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    sub-float/2addr v5, v2

    add-float p1, v5, v3

    :cond_0
    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v3

    add-float/2addr v2, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    sub-float/2addr v0, v1

    add-float p1, v0, v3

    :cond_1
    return p1
.end method

.method private getFixedDragTransY(F)F
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;->getCropRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;->getImageRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mBeforeDeltaY:F

    sub-float v4, v2, v3

    add-float/2addr v4, p1

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    sub-float/2addr v5, v2

    add-float p1, v5, v3

    :cond_0
    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v2, v1, v3

    add-float/2addr v2, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    sub-float/2addr v0, v1

    add-float p1, v0, v3

    :cond_1
    return p1
.end method


# virtual methods
.method public onActionDown(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mDownTouchX:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mDownTouchY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mBeforeDeltaX:F

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mBeforeDeltaY:F

    return-void
.end method

.method public onActionMove(FF)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mDownTouchX:F

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->getFixedDragTransX(F)F

    move-result p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mDownTouchY:F

    sub-float/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->getFixedDragTransY(F)F

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mActionModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mBeforeDeltaX:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mBeforeDeltaY:F

    sub-float v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;->postTranslate(FF)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mBeforeDeltaX:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->mBeforeDeltaY:F

    return-void
.end method
