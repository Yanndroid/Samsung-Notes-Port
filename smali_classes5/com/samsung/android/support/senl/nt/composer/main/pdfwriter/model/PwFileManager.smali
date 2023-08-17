.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;
    }
.end annotation


# static fields
.field public static final KEY_FILE_NAME_BY_MYFILES:Ljava/lang/String; = "key_filename"

.field private static final MAX_CACHE_COUNT:I = 0x5

.field private static final MEDIA_AUTHORITY:Ljava/lang/String; = "0@media"

.field private static final TAG:Ljava/lang/String;

.field public static final URI_FILE_PROVIDER_MYFILES:Ljava/lang/String; = "content://com.sec.android.app.myfiles.FileProvider/"

.field public static final URI_ONEDRIVE:Ljava/lang/String; = "/cache/tempDownload/ONE_DRIVE_"


# instance fields
.field private mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PwFileManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private deleteCacheFile(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;Ljava/io/File;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private fillInfo(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2

    :try_start_0
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    const-string p3, "fillInfo# cursor is null"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    const/4 p2, 0x0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    const/4 v0, -0x1

    if-le p3, v0, :cond_3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->isSaveAs()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p4, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p4, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setPath(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_6

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p2
.end method

.method private getFileInfoAfterSEP115(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x1afa4

    if-ge v2, v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0@media"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "_display_name"

    const-string v4, ""

    if-eqz v2, :cond_8

    const-string v2, "_data"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p2

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2

    :try_start_1
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    const-string v0, "MEDIA_AUTHORITY : cursor is null"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :cond_2
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;-><init>()V

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    if-ltz p2, :cond_4

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    move-object p2, v4

    :goto_1
    if-nez v2, :cond_5

    move-object v2, v4

    :cond_5
    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setName(Ljava/lang/String;)V

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    move-object v4, p2

    :goto_2
    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setPath(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setSaveAs(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_7

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw p2

    :cond_8
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.sec.android.app.myfiles.FileProvider"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/cache/tempDownload/ONE_DRIVE_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "_path"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_a

    :try_start_4
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    const-string v0, "MY_FILES_PROVIDER : cursor is null"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v1

    :catchall_2
    move-exception p2

    goto :goto_5

    :cond_a
    :try_start_5
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;-><init>()V

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_b

    move-object p2, v4

    :cond_b
    invoke-virtual {v2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setName(Ljava/lang/String;)V

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    move-object v4, v1

    :goto_4
    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setPath(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setSaveAs(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object v1, v2

    goto :goto_7

    :goto_5
    if-eqz p1, :cond_d

    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_6
    throw p2

    :cond_e
    :goto_7
    return-object v1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileInfoAfterSEP115# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchFieldError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getFileInfoFromContentProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;
    .locals 6

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "content://com.evernote"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p3, "filename"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_0
    const-string v3, "content://downloads/my_downloads/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ".pdf"

    if-eqz v3, :cond_1

    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setName(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const-string v3, "content://com.microsoft.office.onenote.provider/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-string v3, "content://com.sec.android.app.ocr4.PDFContentProvider/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setSaveAs(Z)V

    const/16 p3, 0x36

    invoke-virtual {v1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setPath(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    const-string v3, "media/external/file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "media/external_primary/file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const-string v3, "content://message/file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "_display_name"

    if-eqz v3, :cond_5

    :try_start_2
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setSaveAs(Z)V

    goto :goto_4

    :cond_5
    const-string v3, "/cache/tempDownload/ONE_DRIVE_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    const-string v3, "content://com.sec.android.app.myfiles.FileProvider/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setSaveAs(Z)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setPath(Ljava/lang/String;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt p3, v3, :cond_a

    const-string p3, "content://com.sec.android.app.myfiles.FileProvider/external"

    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    const-string v1, "external"

    const-string v3, "storage"

    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_8
    const-string p3, "content://com.metago.astro.filecontent/file"

    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setSaveAs(Z)V

    const/16 p3, 0x2b

    invoke-virtual {v1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_9
    :goto_3
    const-string p3, "_data"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_a
    :goto_4
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->fillInfo(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileInfoFromContentProvider# "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-object v0
.end method

.method private getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x32

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private sortDescByTime(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private trimDummy(Ljava/io/File;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->extractFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/repository/pdfwriter/PDFWriterRepositoryFactory;->createPDFWriterRepository()Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;->trimDummy(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public deleteCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->deleteCacheInfo(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->deleteCacheFile(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public deleteCacheInfo(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/repository/pdfwriter/PDFWriterRepositoryFactory;->createPDFWriterRepository()Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public deleteUnexpectedFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$4;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v3, p1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".dat"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    const-string p2, "deleteUnexpectedFile# dat"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    aget-object p1, p1, v2

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteUnexpectedFile# delete savedFile"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->deleteCacheFile(Ljava/io/File;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDeleteTargetList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->sortDescByTime(Ljava/util/List;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getPDFWriterCacheFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getPdfFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->getFileInfoAfterSEP115(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;-><init>()V

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setPath(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setSaveAs(Z)V

    goto :goto_2

    :cond_3
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->getFileInfoFromContentProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->setNameFromPathWhenEmptyName(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)V

    return-object v0
.end method

.method public getSavePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->getDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValidCacheFiles(Landroid/content/Context;Z)Ljava/util/List;
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->getDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->trimDummy(Ljava/io/File;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->extractFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/repository/pdfwriter/PDFWriterRepositoryFactory;->createPDFWriterRepository()Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isOpen(Ljava/lang/String;Landroidx/fragment/app/Fragment;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, v4, v5, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->deleteCacheFile(Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getValidCacheFiles# uuid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", filePath: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", modifiedTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;

    invoke-direct {v7, v5, v6, v4}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public setNameFromPathWhenEmptyName(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPdfFileInfo# error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
