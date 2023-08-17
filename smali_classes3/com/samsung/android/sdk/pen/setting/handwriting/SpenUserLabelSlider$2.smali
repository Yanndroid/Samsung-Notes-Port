.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;->HIDE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$500(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;->onButtonClick()V

    :cond_0
    return-void
.end method

.method public onStartButtonLongClick()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;->SHOW:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$700(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;->onStartButtonLongClick()V

    :cond_0
    return-void
.end method

.method public onStopButtonLongClick()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;->HIDE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$800(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;->onStopButtonLongClick()V

    :cond_0
    return-void
.end method
