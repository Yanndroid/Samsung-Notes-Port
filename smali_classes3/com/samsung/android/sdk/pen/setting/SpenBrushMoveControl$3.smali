.class Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "SpenBrushMoveControl"

    const-string v0, "onAnimationCancel()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->hasMoveEffect()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$900(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->notifyActionPositionChanged(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)V

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
