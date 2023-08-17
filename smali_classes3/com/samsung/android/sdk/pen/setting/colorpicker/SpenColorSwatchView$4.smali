.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->initSwatchViewOutline()V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$1100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$800(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$1100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$800(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;I)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGlobalLayout() initSwatchViewOutline (w,h) = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorSwatchView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$1200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$1200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$1300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)V

    :cond_4
    :goto_0
    return-void
.end method
