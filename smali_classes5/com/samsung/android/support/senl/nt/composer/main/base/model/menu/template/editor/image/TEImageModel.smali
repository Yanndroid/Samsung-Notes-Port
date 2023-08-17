.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;

.field private mFileOperationTask:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;

.field private mNewPath:Ljava/lang/String;

.field private mPageWidth:I

.field private mPpageHeight:I

.field private mResultImagePath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TEImageModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mFileOperationTask:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mResultImagePath:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mPageWidth:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mPpageHeight:I

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mNewPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applyImage(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mResultImagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mNewPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mNewPath:Ljava/lang/String;

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;

    invoke-direct {v1, p1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mFileOperationTask:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->TAG:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mFileOperationTask:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNewPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mNewPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPageHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mPpageHeight:I

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mPageWidth:I

    return v0
.end method

.method public setCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;

    return-void
.end method
