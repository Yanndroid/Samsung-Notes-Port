.class Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->initControlButton(II)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeButtonClicked(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeButtonPressed() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;->MINUS:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1800(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1900(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$2000(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$800(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1700(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;IZ)V

    return-void
.end method

.method public onStartSizeButtonLongClick(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartSizeButtonLongClick() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;->MINUS:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1800(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1900(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object p1

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$2100(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;Z)V

    return-void
.end method

.method public onStopSizeButtonLongClick(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopSizeButtonLongClick() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;->MINUS:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$ButtonType;

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1800(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1900(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$2100(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$800(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1700(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;IZ)V

    return-void
.end method
