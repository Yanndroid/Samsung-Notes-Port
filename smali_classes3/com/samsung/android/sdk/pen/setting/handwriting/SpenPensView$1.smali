.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->updateSelected(Landroid/view/View;ZZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

.field public final synthetic val$index:I

.field public final synthetic val$previewAnimator:Landroid/animation/ObjectAnimator;

.field public final synthetic val$selected:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;IZLandroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->val$index:I

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->val$selected:Z

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->val$previewAnimator:Landroid/animation/ObjectAnimator;

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

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->val$selected:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->val$index:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->val$previewAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView$1;->val$index:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
