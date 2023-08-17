.class Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->onZoomLockChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

.field public final synthetic val$isLocked:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller$1;->this$0:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller$1;->val$isLocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller$1;->this$0:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->access$000(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;)Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller$1;->this$0:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->access$000(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;)Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller$1;->val$isLocked:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;->onZoomLockChanged(Z)V

    :cond_0
    return-void
.end method
