.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$3;
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


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagCueAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
