.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->stopUpdateTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
