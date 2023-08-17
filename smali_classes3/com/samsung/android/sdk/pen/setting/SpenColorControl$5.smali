.class Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenColorControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I[F)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ColorPicker onColorChanged() color="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, p2, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SpenColorControl"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1100(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->getUiInfo(I)I

    move-result v1

    invoke-static {p1, p2, v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1200(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;[FIZZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1300(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)I

    move-result p1

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$402(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Z)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->PICKER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;->onVisibilityChangeBefore(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)V

    :cond_1
    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorPicker onModeChanged() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1402(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1500(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$ColorPickerModeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1500(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$ColorPickerModeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$ColorPickerModeChangedListener;->onViewModeChanged(I)V

    :cond_0
    return-void
.end method
