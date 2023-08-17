.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->setRotation(ILandroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

.field public final synthetic val$callerView:Landroid/view/View;

.field public final synthetic val$parentHeight:I

.field public final synthetic val$parentRect:Landroid/graphics/Rect;

.field public final synthetic val$parentView:Landroid/view/View;

.field public final synthetic val$parentWidth:I

.field public final synthetic val$surfaceType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;ILandroid/view/View;Landroid/view/View;Landroid/graphics/Rect;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$surfaceType:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentView:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$callerView:Landroid/view/View;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentRect:Landroid/graphics/Rect;

    iput p6, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentWidth:I

    iput p7, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$100(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$surfaceType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->comp_hw_floating_menu_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$callerView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$200(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ViewAnchorUtil;->updatePositionToCenter(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$300(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$400(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$surfaceType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentWidth:I

    sub-int/2addr v5, v1

    shr-int/lit8 v1, v5, 0x1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentHeight:I

    sub-int/2addr v4, v0

    shr-int/lit8 v0, v4, 0x1

    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentWidth:I

    sub-int/2addr v5, v1

    shr-int/lit8 v1, v5, 0x1

    add-int/2addr v4, v1

    int-to-float v1, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->val$parentHeight:I

    sub-int/2addr v4, v0

    shr-int/lit8 v0, v4, 0x1

    sub-int/2addr v2, v0

    :goto_0
    int-to-float v0, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$500(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setX(F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$600(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$700(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$800(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRotation# onGlobalLayout, x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$900(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$1000(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pivotX : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$1100(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPivotX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pivotY : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;->access$1200(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingHighlighterLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPivotY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppSettingHighlighterLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
