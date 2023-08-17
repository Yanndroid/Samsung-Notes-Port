.class public Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LanguageRMHelper"

.field private static mMultiDB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataBuffer:[B

.field private mWholeDataBuffers:[[B

.field private mbContentProviderAvailable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "en_US"

    const-string v2, "en_GB"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ko_KR"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ko_KR_NoHanJa"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ja_JP"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "zh_CN"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "zh_HK"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh_TW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mMultiDB:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mbContentProviderAvailable:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mDataBuffer:[B

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mWholeDataBuffers:[[B

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object p1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mbContentProviderAvailable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mbContentProviderAvailable:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    :goto_0
    return-void
.end method

.method private closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "Close ContentProviderClient"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "[closeContentProviderClient] content provider client is null!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method

.method private getAuthorityString(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getAuthorityString] package name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/sdk/handwriting/text/impl/SepUseWrapper;

    invoke-direct {v3}, Lcom/samsung/android/sdk/handwriting/text/impl/SepUseWrapper;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v1, 0x186a0

    div-int v4, v0, v1

    mul-int/2addr v1, v4

    sub-int v1, v0, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getAuthorityString] uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", userId = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", appId = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, p1, v4}, Lcom/samsung/android/sdk/handwriting/text/interfaces/SepUseInterface;->isSecureFolderUserID(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/SepUseInterface;->isSamsungKeyboardPackage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "[getAuthorityString] change authority but cannot because of permissions error!"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "[getAuthorityString] Error : package name not found! "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string p1, "com.samsung.android.sdk.handwriting.resourcemanager"

    return-object p1
.end method

.method private getContentProviderClient()Landroid/content/ContentProviderClient;
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "Get ContentProviderClient"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "[getContentProviderClient] content resolver is null!"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getAuthorityString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getContentProviderClient] Exception! - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "[getContentProviderClient] content provider client is null!"

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getResourceBuffer(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    const-string p2, "[getResourceBuffer] client is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract$Langs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v7, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mDataBuffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "resource"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "preloaded"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResourceBuffer : path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResourceBuffer : preload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const-string p1, "HWRDB"

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResourceBuffer : filePath = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.samsung.android.sdk.handwriting.resourcemanager/"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResourceBuffer : uriForFile = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_1

    const-string p2, "preload"

    goto :goto_0

    :cond_1
    const-string p2, "download"

    :goto_0
    invoke-virtual {v6, p1, p2}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResourceBuffer : bufferSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mDataBuffer:[B

    const/16 v1, 0x2000

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mDataBuffer:[B

    invoke-static {v1, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    if-eq v3, v0, :cond_3

    sget-object v1, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResourceBuffer : TotalByte = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and BufferSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is different!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mDataBuffer:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p1, v7

    move-object p2, p1

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    :cond_5
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_3
    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mDataBuffer:[B

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return-object v7

    :catch_1
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return-object v7

    :catch_2
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return-object v7
.end method

.method private getResourcePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v6

    const-string v7, ""

    if-nez v6, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    const-string p2, "[getResourcePath] client is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract$Langs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "resource"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return-object v7

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return-object v7
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mDataBuffer:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mDataBuffer:[B

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mWholeDataBuffers:[[B

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mWholeDataBuffers:[[B

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mWholeDataBuffers:[[B

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getInstalledLanguageListByQuery()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v7

    if-nez v7, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    const-string v2, "[getInstalledLanguageListByQuery] client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageManagerContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    const-string v2, "[getInstalledLanguageListByQuery] cursor is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return-object v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    const-string v2, "lang"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v7}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return-object v0
.end method

.method public getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mMultiDB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mMultiDB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getInstalledLanguageListByQuery()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResources : installedList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getIDs(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "en_US"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sget-object v4, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResources : isSupportEnUS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getResourcePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    if-eqz v3, :cond_1

    aget-object p1, v0, v2

    goto :goto_1

    :cond_1
    aget-object p1, v0, v1

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getResourcePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    goto :goto_2

    :cond_2
    new-array v4, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getResourcePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    :goto_2
    return-object v4
.end method

.method public getResourcesByBuffer(Ljava/lang/String;Ljava/lang/String;)[[B
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mWholeDataBuffers:[[B

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mMultiDB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mMultiDB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getInstalledLanguageListByQuery()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResourcesByBuffer : installedList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/LanguageID;->getIDs(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "en_US"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sget-object v4, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResourcesByBuffer : isSupportEnUS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    new-array v4, v4, [[B

    iput-object v4, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mWholeDataBuffers:[[B

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getResourceBuffer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    aput-object p1, v4, v2

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mWholeDataBuffers:[[B

    if-eqz v3, :cond_1

    aget-object v0, v0, v2

    goto :goto_1

    :cond_1
    aget-object v0, v0, v1

    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getResourceBuffer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, p1, v1

    goto :goto_2

    :cond_2
    new-array v0, v1, [[B

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mWholeDataBuffers:[[B

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->getResourceBuffer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    aput-object p1, v0, v2

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mWholeDataBuffers:[[B

    return-object p1
.end method

.method public isContentProviderAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/text/impl/LanguageRMHelper;->mbContentProviderAvailable:Z

    return v0
.end method
