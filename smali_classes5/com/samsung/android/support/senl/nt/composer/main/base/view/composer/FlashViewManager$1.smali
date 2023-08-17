.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->showCaptureView(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public isCalled:Z

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;->val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;->isCalled:Z

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;->isCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;->isCalled:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
