.class Landroidx/core/widget/NestedScrollView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/widget/NestedScrollView;->seslSetGoToTopEnabled(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView$8;->this$0:Landroidx/core/widget/NestedScrollView;

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

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView$8;->this$0:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/widget/NestedScrollView;->access$702(Landroidx/core/widget/NestedScrollView;Z)Z

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView$8;->this$0:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/widget/NestedScrollView;->access$500(Landroidx/core/widget/NestedScrollView;I)V

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
