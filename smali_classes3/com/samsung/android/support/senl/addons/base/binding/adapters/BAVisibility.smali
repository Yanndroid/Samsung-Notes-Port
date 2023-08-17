.class public final Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;,
        Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$SimpleAnimationListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0002\u0017\u0018B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006H\u0002J(\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J\u0016\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004J\u0016\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004J\u0016\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004J\u0016\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004J \u0010\u0015\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;",
        "",
        "()V",
        "DEBUG_LOG",
        "",
        "TAG",
        "",
        "debugLog",
        "",
        "content",
        "setViewVisibility",
        "view",
        "Landroid/view/View;",
        "visible",
        "hideVisibility",
        "",
        "withAnimation",
        "setVisibleAndGone",
        "setVisibleAndGoneWithAnimation",
        "setVisibleAndInvisible",
        "setVisibleAndInvisibleWithAnimation",
        "startVisibilityAnimation",
        "finalVisibility",
        "SimpleAnimationListener",
        "VisibilityAnimator",
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


# static fields
.field private static final DEBUG_LOG:Z = true

.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;

    const-string v0, "BAVisibility"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$debugLog(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$startVisibilityAnimation(Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->startVisibilityAnimation(Landroid/view/View;IZ)V

    return-void
.end method

.method private final debugLog(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setViewVisibility(Landroid/view/View;ZIZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/animation/Animation;->cancel()V

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$setViewVisibility$1;

    invoke-direct {v0, p1, p3, p4}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$setViewVisibility$1;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "already set target visibility - "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " / "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->startVisibilityAnimation(Landroid/view/View;IZ)V

    return-void
.end method

.method private final startVisibilityAnimation(Landroid/view/View;IZ)V
    .locals 2

    const-string v0, " / "

    if-eqz p3, :cond_0

    new-instance p3, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;-><init>(Landroid/view/View;I)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility$VisibilityAnimator;->startAnimation()V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set visibility with animation : start to "

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set visibility without animation :"

    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->debugLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final setVisibleAndGone(Landroid/view/View;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->setViewVisibility(Landroid/view/View;ZIZ)V

    return-void
.end method

.method public final setVisibleAndGoneWithAnimation(Landroid/view/View;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->setViewVisibility(Landroid/view/View;ZIZ)V

    return-void
.end method

.method public final setVisibleAndInvisible(Landroid/view/View;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->setViewVisibility(Landroid/view/View;ZIZ)V

    return-void
.end method

.method public final setVisibleAndInvisibleWithAnimation(Landroid/view/View;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAVisibility;->setViewVisibility(Landroid/view/View;ZIZ)V

    return-void
.end method
