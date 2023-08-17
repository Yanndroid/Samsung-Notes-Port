.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Landroid/widget/ViewFlipper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    move-result-object v0

    const/4 v1, -0x1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_1
    if-eq p1, v1, :cond_3

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->getCurrentPage()I

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    invoke-interface {v0, p3, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;->onButtonClick(IIZ)V

    :cond_3
    return-void

    :cond_4
    :goto_2
    const-string p1, "SpenPaletteView"

    const-string p2, "View is null."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
