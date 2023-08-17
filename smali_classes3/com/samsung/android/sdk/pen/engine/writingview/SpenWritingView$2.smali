.class Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->setDocument(Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->access$200(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCaptureCurrentViewBmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SpenWritingView"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;

    const v4, 0x11000011

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->captureView(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->access$300(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;)Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->setCaptureCurrentViewBmp(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
