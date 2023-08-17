.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;Landroid/view/View;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$OnActionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$OnActionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-interface {v1, v2, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$OnActionListener;->onButtonClick(Landroid/view/ViewGroup;Landroid/view/View;I)V

    :cond_1
    return-void
.end method
