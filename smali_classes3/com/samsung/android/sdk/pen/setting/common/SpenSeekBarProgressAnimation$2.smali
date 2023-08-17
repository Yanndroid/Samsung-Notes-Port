.class Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->setLabelAnimator()V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
