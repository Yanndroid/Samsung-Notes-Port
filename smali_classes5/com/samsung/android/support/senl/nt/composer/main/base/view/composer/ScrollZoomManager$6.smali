.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->onZoom(FFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

.field public final synthetic val$panX:F

.field public final synthetic val$panY:F

.field public final synthetic val$zoomRatio:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$6;->val$panX:F

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$6;->val$panY:F

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$6;->val$zoomRatio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$6;->val$panX:F

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$6;->val$panY:F

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$6;->val$zoomRatio:F

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;FFF)V

    return-void
.end method
