.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    const/4 p1, 0x1

    const/4 v0, 0x2

    if-ne p3, p1, :cond_0

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)[F

    move-result-object p3

    int-to-float p2, p2

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p2, v1

    aput p2, p3, v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onProgressChanged() ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)[F

    move-result-object p3

    const/4 v1, 0x0

    aget p3, p3, v1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)[F

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)[F

    move-result-object p3

    aget p3, p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SpenColorValueSeekBar"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    move-result-object v2

    const/16 v4, 0xff

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)[F

    move-result-object p2

    aget v5, p2, v1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)[F

    move-result-object p2

    aget v6, p2, p1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)[F

    move-result-object p1

    aget v7, p1, v0

    const-string v3, "SpenColorValueSeekBar"

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->setColor(Ljava/lang/String;IFFF)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)[F

    move-result-object p2

    aget p2, p2, v0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
