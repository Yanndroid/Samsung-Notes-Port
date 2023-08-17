.class public Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;
    }
.end annotation


# static fields
.field private static final COLOR_ENDER:Ljava/lang/String; = "</color>"

.field private static final COLOR_STARTER:Ljava/lang/String; = "<color>"

.field private static final CONTENT_ENDER:Ljava/lang/String; = "</content>"

.field private static final CONTENT_STARTER:Ljava/lang/String; = "<content>"

.field private static final CREATE_ENDER:Ljava/lang/String; = "</create_t>"

.field private static final CREATE_STARTER:Ljava/lang/String; = "<create_t>"

.field private static final LOCK_ENDER:Ljava/lang/String; = "</locked>"

.field private static final LOCK_STARTER:Ljava/lang/String; = "<locked>"

.field private static final MEMO_ENDER:Ljava/lang/String; = "</SMEMO>"

.field private static final MEMO_STARTER:Ljava/lang/String; = "<SMEMO>"

.field private static final MODIFY_ENDER:Ljava/lang/String; = "</modify_t>"

.field private static final MODIFY_STARTER:Ljava/lang/String; = "<modify_t>"

.field private static final TAG:Ljava/lang/String; = "TMemo1Converter"

.field private static final TITLE_ENDER:Ljava/lang/String; = "</title>"

.field private static final TITLE_STARTER:Ljava/lang/String; = "<title>"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->title:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->uuid:Ljava/lang/String;

    iput-object p2, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->content:Ljava/lang/String;

    iput-object p3, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->createdAt:Ljava/lang/String;

    iput-object p4, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->lastModifiedAt:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->createSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;-><init>()V

    iget-object p3, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->uuid:Ljava/lang/String;

    iput-object p3, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->prevUUID:Ljava/lang/String;

    iget-object p3, v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->content:Ljava/lang/String;

    iput-object p3, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->strippedContent:Ljava/lang/String;

    iput-object p4, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->lastModifiedTime:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->updateSDocDB(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;Ljava/lang/String;)V

    return-object p3
.end method

.method public static convertToSDoc(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "TMemo1Converter"

    const-string p1, "file path is null"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter;->getCoreData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;->title:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;->content:Ljava/lang/String;

    iget-object v5, v2, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;->cTime:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;->mTime:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5, v2}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter;->convert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz p2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p2, v3, v1, v2}, Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;->onProgress(IILjava/util/ArrayList;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static getCoreData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "TMemo1Converter"

    const-string p1, "file is not existed"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</SMEMO>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;

    invoke-direct {v3, v0}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;-><init>(Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$1;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter;->parseMemo(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p1
.end method

.method public static getMemoMetaDataArray(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "TMemo1Converter"

    const-string p1, "file path is null"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter;->getCoreData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;

    if-eqz v4, :cond_2

    new-instance v5, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    invoke-direct {v5}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;-><init>()V

    iget-object v6, v4, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setCategoryName(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;->content:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setContent(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setHasImage(Z)V

    invoke-virtual {v5, v0}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setImageFile(Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;)V

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setHasVoice(Z)V

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setIsFavorite(Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;->mTime:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setLastModifiedAt(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private static parseMemo(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;)V
    .locals 4

    const-string v0, "<content>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    const-string v1, "</content>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<p>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</p>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->handleNewLines(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<modify_t>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    const-string v2, "</modify_t>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<create_t>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    const-string v3, "</create_t>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object v0, p1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;->content:Ljava/lang/String;

    iput-object p0, p1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;->cTime:Ljava/lang/String;

    iput-object v1, p1, Lcom/samsung/android/support/senl/document/memoconverter/TMemo1Converter$CoreData;->mTime:Ljava/lang/String;

    return-void
.end method
