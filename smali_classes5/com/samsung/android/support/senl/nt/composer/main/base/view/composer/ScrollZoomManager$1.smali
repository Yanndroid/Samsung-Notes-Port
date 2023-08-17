.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->init(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IGotoTopPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getPan()Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setPan(FF)V

    :cond_0
    return-void
.end method
