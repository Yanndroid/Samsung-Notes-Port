.class Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->access$002(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->access$002(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
