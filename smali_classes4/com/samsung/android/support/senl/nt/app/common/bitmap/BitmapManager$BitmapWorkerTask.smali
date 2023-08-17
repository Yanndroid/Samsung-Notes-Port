.class Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private final mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancelled:Z

.field private mIsEntryImproveActive:Z

.field private mIsSdoc:Z

.field private mViewMode:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mFilePath:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mViewMode:I

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mIsEntryImproveActive:Z

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mIsSdoc:Z

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->setViewSizeRatio(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->isTaskCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->getHolder()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mIsEntryImproveActive:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->getHolder()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mViewMode:I

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mIsSdoc:Z

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager;->getBitmap(Landroid/widget/ImageView;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHolder()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public isTaskCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mIsCancelled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mIsCancelled:Z

    return-void
.end method

.method public onCancelled(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mIsCancelled:Z

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->isTaskCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->getHolder()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->getHolder()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager;->a(Landroid/widget/ImageView;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->getHolder()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager;->recycleBitmap(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->getHolder()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mIsEntryImproveActive:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/BitmapInfoObject;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/BitmapInfoObject;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->add(Lcom/samsung/android/support/senl/nt/base/common/BitmapInfoObject;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mIsCancelled:Z

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/bitmap/BitmapManager$BitmapWorkerTask;->mFilePath:Ljava/lang/String;

    return-void
.end method
