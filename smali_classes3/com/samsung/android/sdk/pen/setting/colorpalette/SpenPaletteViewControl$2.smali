.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnColorSelected(I[F)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xff

    invoke-static {p1, v0, v1, p2, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->access$500(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;II[FI)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->access$600(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;IZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->access$700(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->access$800(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;)V

    return-void
.end method
