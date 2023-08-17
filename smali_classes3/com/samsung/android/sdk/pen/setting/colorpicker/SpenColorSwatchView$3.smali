.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->needUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGlobalLayout() Req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$500(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$600(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLastCenterX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$700(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorSwatchView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$500(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$800(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$500(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$600(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$700(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$500(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$602(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;I)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$702(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;I)I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSelector() in onGlobalLayout.  mLast="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$600(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$900(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$600(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$1000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;I)Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)V

    :cond_2
    return-void
.end method
