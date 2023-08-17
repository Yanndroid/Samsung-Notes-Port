.class final Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VisibilityAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator$VisibilityAnimationListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0006\u0010\n\u001a\u00020\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;",
        "",
        "mView",
        "Landroid/view/View;",
        "mFinalVisibility",
        "",
        "(Landroid/view/View;I)V",
        "onAnimationEnd",
        "",
        "onAnimationStart",
        "startAnimation",
        "VisibilityAnimationListener",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mFinalVisibility:I

.field private mView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mView:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mFinalVisibility:I

    return-void
.end method

.method public static final synthetic access$onAnimationEnd(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->onAnimationEnd()V

    return-void
.end method

.method public static final synthetic access$onAnimationStart(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->onAnimationStart()V

    return-void
.end method

.method private final onAnimationEnd()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end animation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mFinalVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->access$debugLog(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private final onAnimationStart()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mFinalVisibility:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start animation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mFinalVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->access$debugLog(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final startAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mFinalVisibility:I

    const-string/jumbo v2, "{\n                Animat\u2026with_alpha)\n            }"

    if-nez v1, :cond_2

    sget v1, Lcom/samsung/android/support/senl/addons/R$anim;->base_view_show_with_alpha:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/addons/R$anim;->base_view_hide_with_alpha:I

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator$VisibilityAnimationListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator$VisibilityAnimationListener;-><init>(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->mView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
