.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SpenColorPickerView"

    const-string v0, "resource is released."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    new-array v1, v0, [F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->access$500(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;->getHSV([F)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setCurrentColor([F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->access$600(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->access$700(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->access$700(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;->onTouchUp()V

    :cond_1
    return-void
.end method
