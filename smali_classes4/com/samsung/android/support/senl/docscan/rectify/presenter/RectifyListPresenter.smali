.class public Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask;,
        Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RectifyListPresenter"


# instance fields
.field private final mContract:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;

.field private mCurrentPosition:I

.field private final mRectifiedImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

.field private final mThumbnailImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateRectifyImageTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mRectifiedImageMap:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mThumbnailImageMap:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mThumbnailImageMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mUpdateRectifyImageTaskMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->replaceRectifiedImageData(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getIndexFromSavePath(Ljava/lang/String;)I
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getScanDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private getScanDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->getScanDataCount()I

    move-result v0

    return v0
.end method

.method private isScanDataEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->isScanDataEmpty()Z

    move-result v0

    return v0
.end method

.method private removeBitmapFromDataSet(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private removeScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->removeScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    return-void
.end method

.method private replaceRectifiedImageData(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mRectifiedImageMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mRectifiedImageMap:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;->notifyPageUpdated(I)V

    return-void
.end method

.method private setScanData(ILcom/samsung/android/support/senl/docscan/model/DocScanData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->setScanData(ILcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    return-void
.end method

.method private updateThumbnailImage(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mThumbnailImageMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mThumbnailImageMap:Ljava/util/Map;

    invoke-static {p2}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->getBitmapImageFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;->notifyThumbnailUpdated(I)V

    return-void
.end method


# virtual methods
.method public clearRectifiedImage(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getDocScanData(I)Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mUpdateRectifyImageTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mUpdateRectifyImageTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mRectifiedImageMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->removeBitmapFromDataSet(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mCurrentPosition:I

    return v0
.end method

.method public getDocScanData(I)Lcom/samsung/android/support/senl/docscan/model/DocScanData;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getScanDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getRectifiedImage(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getDocScanData(I)Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mRectifiedImageMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getScanDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/docscan/model/DocScanData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->getScanDataList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailImage(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getDocScanData(I)Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mThumbnailImageMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getThumbnailPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public loadThumbnailImage()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getScanDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask;

    new-instance v2, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$2;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask$PostRunnable;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_1
    return-void
.end method

.method public removeDocScanData(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getDocScanData(I)Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mRectifiedImageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->removeBitmapFromDataSet(Ljava/util/Map;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mThumbnailImageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->removeBitmapFromDataSet(Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->removeScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getEditingPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->isScanDataEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;->finishFragment()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;->notifyPageRemoved()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;->notifyThumbnailRemoved(I)V

    :goto_0
    return-void
.end method

.method public setCurrentPosition(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->setCurrentPosition(IZZ)V

    return-void
.end method

.method public setCurrentPosition(IZZ)V
    .locals 1

    if-ltz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getScanDataCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mCurrentPosition:I

    if-nez p3, :cond_1

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mCurrentPosition:I

    iget-object p3, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;

    invoke-interface {p3, p1, v0, p2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;->notifyCurrentPositionChanged(IIZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setScanDataModel(Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    return-void
.end method

.method public updateDocScanData(Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getIndexFromSavePath(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDocScanData# can not find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RectifyListPresenter"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->setScanData(ILcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->updateRectifiedImage(IZ)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getThumbnailPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->updateThumbnailImage(ILjava/lang/String;)V

    return-void
.end method

.method public updateRectifiedImage(IZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getScanDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getPathToSave()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mUpdateRectifyImageTaskMap:Ljava/util/Map;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mUpdateRectifyImageTaskMap:Ljava/util/Map;

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mUpdateRectifyImageTaskMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask;

    const/4 v2, 0x4

    new-instance v3, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$1;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;ILjava/lang/String;)V

    invoke-direct {p2, v2, v3}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask;-><init>(ILcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask$PostRunnable;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->mUpdateRectifyImageTaskMap:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->getBitmapImageFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->replaceRectifiedImageData(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
