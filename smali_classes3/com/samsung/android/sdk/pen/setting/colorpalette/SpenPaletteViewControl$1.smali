.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;II)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;IIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;IIZ)V

    return-void
.end method

.method public onPaletteSwipe(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;->onPaletteSwipe(II)V

    :cond_0
    return-void
.end method
