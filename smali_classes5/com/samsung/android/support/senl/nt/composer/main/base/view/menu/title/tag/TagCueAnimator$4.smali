.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;->initExcludedTagAnimatorSet(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

.field public final synthetic val$containerHEnd:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$4;->val$containerHEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;)Landroid/view/View;

    move-result-object p1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$4;->val$containerHEnd:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
