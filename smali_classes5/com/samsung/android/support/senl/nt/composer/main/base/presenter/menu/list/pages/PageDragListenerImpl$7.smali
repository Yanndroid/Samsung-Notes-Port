.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->makeAnimatorSet(IZ[Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

.field public final synthetic val$aniSet:Landroid/animation/AnimatorSet;

.field public final synthetic val$index:I

.field public final synthetic val$moving:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;ILandroid/animation/AnimatorSet;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->val$index:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->val$aniSet:Landroid/animation/AnimatorSet;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->val$moving:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->val$index:I

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->val$moving:Z

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;IZ)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;)[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->val$index:I

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->val$moving:Z

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;IZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;)[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->val$index:I

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;->val$aniSet:Landroid/animation/AnimatorSet;

    iput-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method
