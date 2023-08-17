.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I[FI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;->onColorChanged(I[F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangedListener;->onColorChanged(I[FI)V

    :cond_1
    return-void
.end method
