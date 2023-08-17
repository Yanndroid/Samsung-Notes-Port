.class Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setChildView(Landroid/view/View;ILandroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorLongClicked()V
    .locals 2

    const-string v0, "SpenBrushLayout"

    const-string v1, "onColorLongClicked()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1200(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1300(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1300(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;->onColorLongClicked()V

    :cond_0
    return-void
.end method

.method public onColorPositionChanged(IZ)V
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onColorPositionChanged() align="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " current="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getColorAlign()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenBrushLayout"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getColorAlign()I

    move-result p2

    const/4 v1, 0x0

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)I

    move-result v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setColorAlign(IIZ)Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorAlignChanged() align="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;->onColorAlignChanged(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$900(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getColorRect(Landroid/graphics/Rect;)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$900(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;->OnColorViewSizeChanged(Landroid/graphics/Rect;)V

    :cond_1
    const-string p1, "needUpdatePen"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onPenLongClicked()V
    .locals 2

    const-string v0, "SpenBrushLayout"

    const-string v1, "onPenLongClicked()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1200(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1300(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1300(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;->onPenLongClicked()V

    :cond_0
    return-void
.end method

.method public onPenPositionChanged(IZ)V
    .locals 4

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getPenAlign()I

    move-result p2

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPenPositionChanged() align="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getPenAlign()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenBrushLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)I

    move-result v3

    invoke-static {v1, p1, v3, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;IIZ)Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPenAlignChanged() align="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;->onPenAlignChanged(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$900(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getPenRect(Landroid/graphics/Rect;)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$900(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;->OnPenViewSizeChanged(Landroid/graphics/Rect;)V

    :cond_1
    const-string p1, "needUpdateColor!!"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
