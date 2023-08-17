.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;->onButtonClick(I)V

    :cond_0
    return-void
.end method

.method public onColorSelected(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;->onColorSelected(IIZ)V

    :cond_0
    return-void
.end method

.method public onPaletteSwipe(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPaletteSwipe() position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorBaseLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getPaletteIDFromViewIdx(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;->onPaletteSwipe(II)V

    :cond_0
    return-void
.end method
