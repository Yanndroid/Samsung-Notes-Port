.class Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$002(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;Z)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;IFF)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)Landroid/widget/SeekBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$302(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;I)I

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    const/16 v0, 0x96

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;IFF)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$402(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$002(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;Z)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;IFF)V

    return-void
.end method
