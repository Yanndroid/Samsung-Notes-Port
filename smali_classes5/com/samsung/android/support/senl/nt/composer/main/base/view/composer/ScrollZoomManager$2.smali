.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init#post# view is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getZoomRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->postShowAfterInit(F)V

    return-void
.end method
