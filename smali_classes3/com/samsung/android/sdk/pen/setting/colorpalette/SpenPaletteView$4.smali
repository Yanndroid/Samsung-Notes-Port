.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSlider$ActionScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->initAccessibilityForColorPallet()V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollBackward()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$600(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$600(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->moveBackward(Z)V

    return-void
.end method

.method public onScrollForward()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$600(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->access$600(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->moveForward(Z)V

    return-void
.end method
