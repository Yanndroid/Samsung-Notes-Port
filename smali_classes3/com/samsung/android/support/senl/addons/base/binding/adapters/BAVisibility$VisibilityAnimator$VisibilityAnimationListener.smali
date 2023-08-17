.class final Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator$VisibilityAnimationListener;
.super Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$SimpleAnimationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VisibilityAnimationListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator$VisibilityAnimationListener;",
        "Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$SimpleAnimationListener;",
        "(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;)V",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/view/animation/Animation;",
        "onAnimationStart",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator$VisibilityAnimationListener;->this$0:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator$VisibilityAnimationListener;->this$0:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->access$onAnimationEnd(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator$VisibilityAnimationListener;->this$0:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->access$onAnimationStart(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;)V

    return-void
.end method
