.class Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->init(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCtrlPressedLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;FI)V
    .locals 0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->getSCVScrollZoomController()Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$ZoomScrollPresenter;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$ZoomScrollPresenter;->onScroll(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;F)V

    return-void
.end method
