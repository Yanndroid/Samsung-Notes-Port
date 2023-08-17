.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->setExpandAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

.field public final synthetic val$penView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;->val$penView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;->val$penView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;->val$penView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
