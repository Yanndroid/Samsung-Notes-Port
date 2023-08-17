.class Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->onPatternMatched()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;->this$1:Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDVFSEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;->this$1:Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;

    iget-object v0, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1500(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->setEnabled(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenWritingOptionView DVFS = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;->this$1:Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;

    iget-object v0, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1500(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenComposerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFrontBufferRenderingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;->this$1:Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;

    iget-object v0, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1400(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setFrontBufferRenderingEnabled(Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;->this$1:Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;

    iget-object v0, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setFrontBufferRenderingEnabledInEWP(Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenWritingOptionView FbrDrawPad = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;->this$1:Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;

    iget-object v0, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1400(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->isFbrDrawPadEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenComposerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMeasureMode(Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;->this$1:Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;

    iget-object p1, p1, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$200(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p1

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setPan(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;->this$1:Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;

    iget-object p1, p1, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$200(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setZoomScale(F)V

    return-void
.end method

.method public onPredictionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;->this$1:Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;

    iget-object v0, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1400(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setPredictionEnabled(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenWritingOptionView Prediction = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;->this$1:Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;

    iget-object v0, v0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1400(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->isPredictionEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenComposerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
