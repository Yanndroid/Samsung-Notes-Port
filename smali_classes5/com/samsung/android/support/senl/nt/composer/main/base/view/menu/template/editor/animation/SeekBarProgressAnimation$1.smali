.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;)Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;)Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
