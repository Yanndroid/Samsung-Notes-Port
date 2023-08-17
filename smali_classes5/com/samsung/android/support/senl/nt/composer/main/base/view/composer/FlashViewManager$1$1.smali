.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;->val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;->onDone(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;)Landroid/view/ViewTreeObserver$OnDrawListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method
