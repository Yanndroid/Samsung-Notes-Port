.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;
    }
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


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;

.field private mFilePath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "FileOperationTask"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->mFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;

    return-void
.end method

.method private saveResultBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveResultBitmap, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->saveResultBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute, result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;->onEnd(Z)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;->onStarted()V

    :cond_0
    return-void
.end method
