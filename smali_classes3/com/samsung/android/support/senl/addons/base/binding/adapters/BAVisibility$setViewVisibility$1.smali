.class public final Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$setViewVisibility$1;
.super Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$SimpleAnimationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->setViewVisibility(Landroid/view/View;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$setViewVisibility$1",
        "Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$SimpleAnimationListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/view/animation/Animation;",
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
.field public final synthetic $finalVisibility:I

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic $withAnimation:Z


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$setViewVisibility$1;->$view:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$setViewVisibility$1;->$finalVisibility:I

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$setViewVisibility$1;->$withAnimation:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$setViewVisibility$1;->$view:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$setViewVisibility$1;->$finalVisibility:I

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$setViewVisibility$1;->$withAnimation:Z

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->access$startVisibilityAnimation(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;Landroid/view/View;IZ)V

    return-void
.end method
