.class Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;->addZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;

.field public final synthetic val$listener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$1;->val$listener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoom(FFFFF)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$1;->val$listener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;->onZoom(FFFFF)V

    return-void
.end method
