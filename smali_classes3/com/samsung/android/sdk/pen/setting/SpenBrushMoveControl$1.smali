.class Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEnded(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActionStarted(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActionStarted() view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushMoveControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onColorPositionChanged(ILandroid/graphics/Rect;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onColorPositionChanged() align="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenBrushMoveControl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getAlignment()I

    move-result v1

    invoke-static {p2, v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;II)V

    return-void
.end method

.method public onDragLocationChanged(Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragLocationChanged() rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushMoveControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPenPositionChanged(ILandroid/graphics/Rect;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPenPositionChanged() align="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenBrushMoveControl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;->getAlignment()I

    move-result v1

    invoke-static {p2, v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveControl;Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveObject;II)V

    return-void
.end method
