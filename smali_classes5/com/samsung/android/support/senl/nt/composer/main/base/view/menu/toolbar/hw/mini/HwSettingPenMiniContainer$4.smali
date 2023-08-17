.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->getRotationVI()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

.field public final synthetic val$beforePoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->val$beforePoint:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->access$200(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->val$beforePoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->getTargetPositionInside()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x190

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;FFI)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;FFI)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/animation/Animation;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->runAnimationSetVI(Ljava/lang/Runnable;[Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->access$300(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;)V

    return-void
.end method
