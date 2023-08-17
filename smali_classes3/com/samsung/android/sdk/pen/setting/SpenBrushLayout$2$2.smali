.class Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->onColorPositionChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2$2;->this$1:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SpenBrushLayout"

    const-string v1, "run() in onColorPositionChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2$2;->this$1:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1100(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2$2;->this$1:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$900(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2$2;->this$1:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$1100(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2$2;->this$1:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getPenRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2$2;->this$1:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$900(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;->OnPenViewSizeChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
