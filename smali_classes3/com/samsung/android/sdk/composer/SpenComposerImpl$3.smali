.class Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/composer/SpenComposerImpl;->init(Landroid/content/Context;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCursorPos(IIZI)[I
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$500(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)J

    move-result-wide v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1000(JIIZI)[I

    move-result-object p1

    return-object p1
.end method

.method public getNodeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$500(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$600(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getObjectByNativeId(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$500(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$900(JI)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public isNodeInfoFocused(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$500(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1200(JI)Z

    move-result p1

    return p1
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onClick(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$500(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$500(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$800(JII)V

    :cond_0
    return-void
.end method

.method public onMove(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$700(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->setPan(FF)V

    :cond_0
    return-void
.end method

.method public onPerformContextMenuAction(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1100(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onPerformContextMenuAction(I)Z

    move-result p1

    return p1
.end method

.method public onScroll(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$3;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$700(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/deltaZoom/SpenNoteDeltaZoom;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenDeltaZoom;->scroll(FF)V

    return-void
.end method
