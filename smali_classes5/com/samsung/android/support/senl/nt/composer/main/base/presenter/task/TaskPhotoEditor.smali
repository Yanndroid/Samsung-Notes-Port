.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskPhotoEditor"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectImage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->handleImage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectImage;)V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic d(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->deleteFiles(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method private static deleteFiles(Landroid/content/Context;Ljava/io/File;)V
    .locals 11

    const-string v0, "_data=?"

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "deleteFiles# directory delete error"

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    aput-object v8, v10, v5

    invoke-virtual {p0, v3, v0, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    new-array v8, v9, [Ljava/lang/String;

    aput-object v10, v8, v5

    invoke-virtual {p0, v3, v0, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->TAG:Ljava/lang/String;

    const-string v8, "deleteFiles# file delete error"

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFiles# Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private handleImage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectImage;)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->getImageStorageDir(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->TAG:Ljava/lang/String;

    const-string p2, "handleImage, failed to create imageStorageDir."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_0
    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, p2, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->saveAsImage(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleImage, newPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$ResultValues;

    invoke-direct {v2, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$ResultValues;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->TAG:Ljava/lang/String;

    const-string p2, "handleImage# failed to saveAsImage"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$ResultValues;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;)V

    return-object v0
.end method

.method public getImageStorageDir(Landroid/content/Context;Z)Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_save_to_image_dir_galaxy:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_save_to_image_dir:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExternalImageStorageDir, can not create a albumName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    return-object v0
.end method
