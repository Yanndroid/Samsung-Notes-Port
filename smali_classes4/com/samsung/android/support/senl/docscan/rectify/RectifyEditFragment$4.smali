.class Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->onDestroyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->b(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getDocScanData()Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->g(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->b(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->removeSavedCacheFile()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RectifyListFragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->b(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->resetVertexes()V

    :cond_1
    :goto_0
    return-void
.end method
