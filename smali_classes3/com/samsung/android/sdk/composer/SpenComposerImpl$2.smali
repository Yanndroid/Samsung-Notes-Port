.class Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFloatingViewShown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$400(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$400(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->isFloatingViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRequestCoordinateInfo(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v1, p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$100(Lcom/samsung/android/sdk/composer/SpenComposerImpl;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$200(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getZoomScale()F

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$200(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentScale()F

    move-result v1

    mul-float/2addr p2, v1

    iput p2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->zoomRatio:F

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$200(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getPan()Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget-object p2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->startPos:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v1, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {p2, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public onRequestMoveIntoScreen(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$100(Lcom/samsung/android/sdk/composer/SpenComposerImpl;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$200(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->scrollToContentRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public onRequestSelectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$300(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$300(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getSelectedObject()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$300(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$2;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$300(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_1
    return-void
.end method
