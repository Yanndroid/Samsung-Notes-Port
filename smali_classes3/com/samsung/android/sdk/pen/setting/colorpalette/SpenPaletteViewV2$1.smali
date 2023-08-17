.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setPaletteInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;)Landroid/widget/ViewFlipper;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->notifyButtonClick(IZ)V

    return-void
.end method
