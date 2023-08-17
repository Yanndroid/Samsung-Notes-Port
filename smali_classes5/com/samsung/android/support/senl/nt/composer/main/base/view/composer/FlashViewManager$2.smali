.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->removeCaptureView(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

.field public final synthetic val$actionAfterEndAnimation:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$2;->val$actionAfterEndAnimation:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$2;->val$actionAfterEndAnimation:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
