.class Lcom/samsung/android/support/senl/nt/model/collector/updater/SDocSearchDataUpdater$Executor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/collector/updater/SDocSearchDataUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Executor"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SDocSearchDataUpdater$Executor"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getUpdateList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v2, "SELECT sdoc.UUID FROM sdoc WHERE sdoc.isDeleted != 1 AND sdoc.filePath LIKE \'%.sdoc\' AND sdoc.UUID NOT IN ( SELECT Distinct stroke.sdocUUID FROM stroke) "

    invoke-direct {v1, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "UUID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
.end method

.method private preRecognizeDocument(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Z
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "preRecognizeDocument, close noteDoc failed : "

    const-string v2, "preRecognizeDocument, close sdoc failed : "

    const-string v3, "SDocSearchDataUpdater$Executor"

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CONFIRMED_PASSWORD"

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/ToolConstructor;->makeSDocLocker(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/SDocLocker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v0, v7, v8, v9, v10}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSpenSDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getContentList()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v10, v9, :cond_1

    move v9, v10

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v10, v5

    :cond_2
    :goto_0
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    check-cast v11, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getAttachedFile()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {v0, v11, v9, v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSpenNoteDoc(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v12, v5}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getSearchData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v15, v4}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->insertSDocSearchEntities(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;Ljava/lang/String;Ljava/lang/String;)V

    move v10, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v12, v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object v4, v12

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move v5, v10

    move-object v4, v12

    goto :goto_5

    :cond_4
    :try_start_4
    invoke-virtual {v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v7, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move v5, v10

    goto :goto_4

    :cond_5
    :goto_2
    :try_start_5
    const-string v0, "preRecognizeDocument, empty content base."

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v7, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return v5

    :catchall_1
    move-exception v0

    move-object v5, v0

    const/4 v4, 0x0

    goto/16 :goto_9

    :catch_4
    move-exception v0

    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v5, v0

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto/16 :goto_9

    :catch_5
    move-exception v0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_5
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preRecognizeDocument, exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_7

    :try_start_8
    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    :try_start_9
    invoke-virtual {v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_7
    move v10, v5

    :cond_9
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preRecognizeDocument, result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :catchall_3
    move-exception v0

    move-object v5, v0

    :goto_9
    if-eqz v4, :cond_a

    :try_start_a
    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_a
    if-eqz v7, :cond_b

    :try_start_b
    invoke-virtual {v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v7, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_b

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_b
    throw v5
.end method

.method private recognizeDocument(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recognizeDocument : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDocSearchDataUpdater$Executor"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentRetryRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;->deleteByUuid(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/updater/SDocSearchDataUpdater$Executor;->preRecognizeDocument(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setLastModifiedAt(J)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->UPDATE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->getValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setTriggerType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->START:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->OTHERS:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->getValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setSourceType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->DEFAULT:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setLinkWith(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;->runCollect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    :cond_0
    return-void
.end method

.method private updateRemains(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string p3, "KEY_RECOGNITION_SDOC_LIST"

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "APP_UPDATE_PREFERENCE"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/model/collector/updater/SDocSearchDataUpdater$Executor;->getUpdateList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute, uuidSet size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SDocSearchDataUpdater$Executor"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/support/senl/nt/model/collector/updater/SDocSearchDataUpdater$Executor;->recognizeDocument(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-direct {p0, v0, v2, v5}, Lcom/samsung/android/support/senl/nt/model/collector/updater/SDocSearchDataUpdater$Executor;->updateRemains(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "execute - end"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "KEY_RECOGNIZE_SDOC"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method
