.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SaveNoteResolverContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/d;


# static fields
.field private static final SYNC_SDOC_SAVE_STRATEGY:I = 0x1808

.field private static final TAG:Ljava/lang/String; = "SaveNoteResolverContractImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private close(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close, document : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveNoteResolverContractImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close, e : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getSaveStrategy(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x21808

    goto :goto_0

    :cond_0
    const/16 p1, 0x1808

    :goto_0
    return p1
.end method

.method private open(Landroid/content/Context;Lb0/e;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveNoteResolverContractImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {p2}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CONFIRMED_PASSWORD"

    new-instance p2, Lcom/samsung/android/support/senl/document/SDocLocker;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "open, e : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private save(Landroid/content/Context;Lb0/e;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)V
    .locals 8
    .param p3    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->removeEmptyContentHandwriting()V

    invoke-virtual {p2}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance p2, Lcom/samsung/android/support/senl/document/SDocLocker;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getCreatedTime()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getModifiedTime()J

    move-result-wide v6

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->save(Ljava/lang/String;[Ljava/lang/String;ZJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "save, e : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SaveNoteResolverContractImpl"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "saveUnsavedDoc"

    invoke-static {p3, p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public saveDoc(Landroid/content/Context;Lb0/e;)Z
    .locals 11

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SaveNoteResolverContractImpl;->open(Landroid/content/Context;Lb0/e;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-result-object v9

    const/4 v0, 0x0

    if-nez v9, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isRemoveActionLinkData()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSpenModel()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v10, v0

    invoke-virtual {p2}, Lb0/e;->a()Z

    move-result v1

    invoke-virtual {p2}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v3

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->o()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v10}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SaveNoteResolverContractImpl;->getSaveStrategy(Z)I

    move-result v7

    const-string v8, "SaveNoteResolverContractImpl"

    move-object v0, p1

    move-object v4, v9

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->save(Landroid/content/Context;ZLjava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;ZILjava/lang/String;)Z

    move-result v0

    if-eqz v10, :cond_2

    invoke-direct {p0, p1, p2, v9}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SaveNoteResolverContractImpl;->save(Landroid/content/Context;Lb0/e;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-direct {p0, v9}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SaveNoteResolverContractImpl;->close(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    invoke-virtual {p2}, Lb0/e;->a()Z

    move-result v2

    invoke-virtual {p2}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, p2, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;-><init>(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/util/List;)V

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;->setStrategy(I)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;->run()V

    return v0

    :catchall_0
    move-exception p1

    invoke-direct {p0, v9}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SaveNoteResolverContractImpl;->close(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)V

    throw p1
.end method
