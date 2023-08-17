.class Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->saveRectifyResult()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "RectifyListFragment"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->b(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->saveRectifiedImageFromCamera()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->b(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->saveRectifiedImageFromList()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v3}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->b(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->saveRectifiedThumbnail(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->b(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getDocScanData()Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->d(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->h(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->c(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;->e(Lcom/samsung/android/support/senl/docscan/rectify/RectifyEditFragment;)V

    return-void
.end method
