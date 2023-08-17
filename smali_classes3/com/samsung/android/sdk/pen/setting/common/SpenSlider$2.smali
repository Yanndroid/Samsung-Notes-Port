.class Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->initSeekBar(Landroid/content/Context;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnProgressChanged() progress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " fromUser="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenSlider"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$600(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$600(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)I

    move-result v0

    mul-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$700(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->isUserEvent()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setUserEvent(Z)V

    :goto_0
    move p3, v3

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->isAutoChanged()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->updateButtonState()V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$800(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->setStartProgress(I)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1000(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Z

    move-result v4

    invoke-virtual {v2, p3, v4, v1, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->setTarget(ZZZI)Z

    move-result v2

    :cond_4
    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$800(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)I

    move-result p3

    if-eq p3, v0, :cond_5

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p3, v0, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1100(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;IZ)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$802(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;I)I

    :cond_5
    if-eq p2, p1, :cond_6

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1200(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Landroid/widget/SeekBar;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1300(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1200(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_6
    if-nez v2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$800(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1400(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1500(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V

    :cond_7
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string p1, "SpenSlider"

    const-string v0, "onStartTrackTouch()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1600(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1600(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;->onStartTrackingTouch()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1002(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string p1, "SpenSlider"

    const-string v0, "onStopTrackingTouch()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1600(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1600(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;->onStopTrackingTouch()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1002(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Z)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$800(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1700(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;IZ)V

    return-void
.end method
