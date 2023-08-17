.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLabelChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;->onLabelChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLabelStateChanged(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;->HIDE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {p1, v1, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$900(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;ZZ)V

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener$LabelState;->HIDE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener$LabelState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;->SHOW:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$1000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->SIZE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$1000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->OPACITY:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    xor-int/2addr p1, v1

    xor-int/2addr v0, v1

    invoke-static {v2, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$900(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;ZZ)V

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener$LabelState;->SHOW:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener$LabelState;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$1000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->SIZE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$1100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$1200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;->onLabelStateChanged(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener$LabelState;Ljava/lang/String;)V

    nop

    :cond_2
    return-void
.end method
