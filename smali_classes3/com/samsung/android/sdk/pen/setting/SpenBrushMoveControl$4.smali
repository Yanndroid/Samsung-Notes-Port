.class Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->onLongClick(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;)Z
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

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

    const-string p1, "SpenBrushMoveControl"

    const-string v0, "onAnimationEnd() =============="

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$1000(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)V

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
