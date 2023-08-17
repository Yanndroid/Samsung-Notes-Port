.class public Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_EXCEPTION:I = -0x1

.field public static final ERROR_CODE_NOT_SUPPORTED:I = -0x2

.field public static final ERROR_CODE_NO_FREE_SPACE:I = -0x4

.field public static final ERROR_CODE_PROCESS_STOPPED:I = -0x5

.field public static final ERROR_CODE_WRONG_PWD:I = -0x3

.field private static final TAG:Ljava/lang/String; = "TMemo2Converter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    const-string p1, "TMemo2Converter"

    const-string v0, "TMemo2Converter()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private convertToSDoc(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;-><init>(Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$1;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->getCoreData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;)I

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "TMemo2Converter"

    const-string v0, "Fail to get the memo meta data"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x3

    if-eq p2, p1, :cond_0

    return p2

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string p2, "ERROR_CODE_WRONG_PWD"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->uuid:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->content:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->content:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->mTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->lastModifiedAt:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->cTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->createdAt:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->createSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;-><init>()V

    iget-object v3, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->content:Ljava/lang/String;

    iput-object v3, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->strippedContent:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->lastModifiedAt:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->lastModifiedTime:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getSDocUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->updateSDocDB(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, p1, v2, v1}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return p2
.end method

.method private static deleteFileItem(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->deleteFileItem(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private getCoreData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;)I
    .locals 9

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const-string v2, "TMemo2Converter"

    if-eqz p2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->deleteFileItem(Ljava/io/File;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertToSDoc : Fail unzip: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->getInstance()Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->parseXMLContent(Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->getInstance()Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->parseXMLSettings(Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->getInstance()Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->getInstance()Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->getTemplateType()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->getInstance()Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->getCreatedTime()J

    move-result-wide v3

    invoke-static {}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->getInstance()Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->getModifiedTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gtz v7, :cond_1

    const-string v3, "No created Time!!"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-wide v5, v3

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->deleteFileItem(Ljava/io/File;)V

    const-string v1, "14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</p>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->handleNewLines(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->content:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->cTime:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->mTime:Ljava/lang/String;

    return p2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "convertToSDoc : not supported template Type : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1
.end method

.method private unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x3

    :try_start_0
    new-instance v1, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v1, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1, p3}, Lnet/lingala/zip4j/core/ZipFile;->setPassword(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, p2}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "TMemo2Converter"

    const-string p3, "Exception during unzip: file is locked, corrupted or there is not enough space to extract."

    invoke-static {p2, p3, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v1, "Wrong Password"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ENOSPC"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, -0x4

    goto :goto_0

    :cond_2
    move v0, p2

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public convertToSDoc(Ljava/lang/String;)I
    .locals 11

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const-string p1, "TMemo2Converter"

    const-string v1, "snbPath is null"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->isLocked(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getLockTypeTMEMO()I

    move-result v9

    const/4 v10, 0x0

    move-object v3, p1

    move-wide v4, v6

    invoke-static/range {v2 .. v10}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->saveLockFile(Landroid/content/Context;Ljava/lang/String;JJZILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->convertToSDoc(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getMemoMetaData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;
    .locals 3

    const-string v0, "TMemo2Converter"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "getMemoMetaData() - snbPath is null"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "getMemoMetaData() - snbFile is not existed"

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;

    invoke-direct {v2, v1}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;-><init>(Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$1;)V

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->getCoreData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;)I

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Fail to get the memo meta data"

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;-><init>()V

    iget-object p2, v2, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setCategoryName(Ljava/lang/String;)V

    iget-object p2, v2, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setContent(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setHasImage(Z)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setImageFile(Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setHasVoice(Z)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setIsFavorite(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->mTime:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setLastModifiedAt(Ljava/lang/String;)V

    return-object p1
.end method

.method public isLocked(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result p1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TMemo2Converter"

    const-string v1, "Exception during isLocked(): "

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRightPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRightPassword : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMemo2Converter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isRightPassword() : Can\'t make directory( "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " )"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    new-instance v5, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v5, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v5, p2}, Lnet/lingala/zip4j/core/ZipFile;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "isRightPassword() Password is empty"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "isRightPassword() It\'s unlocked"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move v4, v3

    :goto_1
    invoke-static {v2}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->deleteFileItem(Ljava/io/File;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "Exception during unzip: file is locked, corrupted or there is not enough space to extract."

    invoke-static {v1, p2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Wrong Password"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v4, p1, 0x1

    goto :goto_1

    :goto_2
    return v4

    :goto_3
    invoke-static {v2}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->deleteFileItem(Ljava/io/File;)V

    throw p1
.end method

.method public setFinishListener(Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    return-void
.end method

.method public unlockTMEMO(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unlockTMEMO start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMemo2Converter"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    const-string v6, "unlockTMEMO : docUuid is null"

    invoke-static {v4, v6}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v6, :cond_0

    invoke-interface {v6, v5, v5, v3}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :try_start_0
    new-instance v6, Lcom/samsung/android/support/senl/document/SDoc;

    iget-object v7, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v0, v5}, Lcom/samsung/android/support/senl/document/SDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/samsung/android/support/senl/document/SDoc;->getFilePath(I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    const-string v0, "unlockTMEMO : snbPath is null"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, v5, v5, v3}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1, v13}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->isLocked(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v0, "unlockTMEMO : snbPath is unlocked"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, v5, v5, v3}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getSDocUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v7, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;

    invoke-direct {v7, v5}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;-><init>(Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$1;)V

    move-object/from16 v8, p2

    invoke-direct {v1, v13, v8, v7}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->getCoreData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;)I

    new-instance v8, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;

    invoke-direct {v8}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;-><init>()V

    iput-object v14, v8, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->uuid:Ljava/lang/String;

    iget-object v9, v7, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->title:Ljava/lang/String;

    iput-object v9, v8, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->title:Ljava/lang/String;

    iget-object v9, v7, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->content:Ljava/lang/String;

    iput-object v9, v8, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->content:Ljava/lang/String;

    iget-object v9, v7, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->mTime:Ljava/lang/String;

    iput-object v9, v8, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->lastModifiedAt:Ljava/lang/String;

    iget-object v7, v7, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter$CoreData;->cTime:Ljava/lang/String;

    iput-object v7, v8, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->createdAt:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    invoke-static {v7, v8, v5, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->createSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v15, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;

    invoke-direct {v15}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;-><init>()V

    iget-object v7, v8, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->content:Ljava/lang/String;

    iput-object v7, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->strippedContent:Ljava/lang/String;

    iget-object v7, v8, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->lastModifiedAt:Ljava/lang/String;

    iput-object v7, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->lastModifiedTime:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/samsung/android/support/senl/document/SDoc;->release(I)V

    if-nez v14, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v7

    iget-object v9, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    goto :goto_0

    :cond_5
    move-object v11, v14

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v7

    iget-object v9, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9, v11}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->isExistingNote(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_6

    move v9, v3

    goto :goto_1

    :cond_6
    move v9, v12

    :goto_1
    iget-object v7, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->category:Ljava/lang/String;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    iget-object v5, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->category:Ljava/lang/String;

    :cond_7
    if-ne v2, v12, :cond_8

    invoke-virtual {v6, v12}, Lcom/samsung/android/support/senl/document/SDoc;->setDocumentType(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v6, v3}, Lcom/samsung/android/support/senl/document/SDoc;->setDocumentType(I)V

    :goto_2
    iget-object v7, v8, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->createdAt:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    iget-object v7, v8, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->lastModifiedAt:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v6

    move-object v8, v0

    move/from16 v20, v9

    move-wide/from16 v9, v16

    move-object/from16 v17, v4

    move-object v3, v11

    move v4, v12

    move-wide/from16 v11, v18

    :try_start_1
    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/support/senl/document/SDoc;->save(Ljava/lang/String;JJ)V

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/document/SDoc;->close()V

    iget-object v6, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->createBuilderInstance()Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setDocFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCategoryUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setSaveDoc(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v0

    move/from16 v12, v20

    invoke-interface {v0, v12}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setNew(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->saveSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    iget-object v6, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v3, v2}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->setNoteLock(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->favorite:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mContext:Landroid/content/Context;

    iget-object v6, v15, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->favorite:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    move v5, v4

    :cond_9
    invoke-virtual {v0, v2, v3, v5}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->setNoteFavorite(Landroid/content/Context;Ljava/lang/String;Z)I

    :cond_a
    iget-object v0, v1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo2Converter;->mFinishListener:Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;

    if-eqz v0, :cond_b

    invoke-interface {v0, v13, v14, v4}, Lcom/samsung/android/support/senl/document/memoconverter/FinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    :goto_3
    instance-of v2, v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockTMEMO fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void

    :cond_c
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v2, "invalid password"

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
