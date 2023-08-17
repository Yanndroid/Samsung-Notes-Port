.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->progressSeekBar(FJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

.field public final synthetic val$duration:J

.field public final synthetic val$needRewind:Z

.field public final synthetic val$percentage:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;ZFJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->val$needRewind:Z

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->val$percentage:F

    iput-wide p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->val$needRewind:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    aput v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->val$percentage:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->val$duration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
