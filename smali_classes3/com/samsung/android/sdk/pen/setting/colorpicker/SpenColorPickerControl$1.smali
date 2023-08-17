.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(FFFI)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorSelected() [H,S,V] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)[F

    move-result-object v0

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)[F

    move-result-object p1

    const/4 v0, 0x1

    aput p2, p1, v0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)[F

    move-result-object p1

    const/4 p2, 0x2

    aput p3, p1, p2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    move-result-object p1

    const/4 p3, 0x3

    if-eqz p1, :cond_0

    new-array p1, p3, [F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)[F

    move-result-object v2

    invoke-static {v2, v1, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;->onColorChanged(I[F)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;

    move-result-object p1

    if-eqz p1, :cond_3

    if-ne p4, p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;->onRecentColorSelected()V

    goto :goto_0

    :cond_1
    if-ne p4, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;->onColorPickerChanged(I)V

    goto :goto_0

    :cond_2
    if-ne p4, p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;->onColorSeekBarChanged()V

    :cond_3
    :goto_0
    return-void
.end method
