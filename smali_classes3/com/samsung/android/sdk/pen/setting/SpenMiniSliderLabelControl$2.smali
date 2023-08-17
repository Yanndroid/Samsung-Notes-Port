.class Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "SpenMiniSliderLabelControl"

    const-string v0, "hideLabel::onAnimationEnd()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->access$002(Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;Z)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
