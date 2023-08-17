.class Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$2;
.super Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;->addNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;

.field public final synthetic val$listener:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$2;->val$listener:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollLockChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$2;->val$listener:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;->onScrollLockChanged(Z)V

    return-void
.end method

.method public onZoomLockChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$2;->val$listener:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;->onScrollLockChanged(Z)V

    return-void
.end method
