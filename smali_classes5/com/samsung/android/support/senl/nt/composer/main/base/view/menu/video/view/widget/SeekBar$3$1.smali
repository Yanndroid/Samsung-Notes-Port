.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method
