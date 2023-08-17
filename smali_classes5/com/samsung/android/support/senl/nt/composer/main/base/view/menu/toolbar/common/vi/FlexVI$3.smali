.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->movingDown()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;

.field public final synthetic val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$3;->val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$3;->val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$3;->val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$3;->val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$3;->val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$3;->val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setBottomMargin(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;->updateDockerSize()V

    return-void
.end method
