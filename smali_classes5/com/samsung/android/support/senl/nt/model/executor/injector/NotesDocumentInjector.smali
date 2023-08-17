.class public Lcom/samsung/android/support/senl/nt/model/executor/injector/NotesDocumentInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotesDocumentInjector"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provide(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "E:",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TT;+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/injector/NotesDocumentInjector;->provide(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->getDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->copy(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v0, "provide"

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setLoadTime(JLjava/lang/String;)V

    return-object p0
.end method

.method public static provide(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "E:",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "TT;+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getWritingMode()I

    move-result v0

    const-string v1, ""

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getPDFWriterCacheFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentFileUtils;->createPdfWriterSavePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".sdocx"

    invoke-static {p0, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentFileUtils;->createSavedPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provide, savePath : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NotesDocumentInjector"

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provide, isInternalNotePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isExist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_1

    const-string v1, "provide, save path is not the doc internal storage"

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentFileUtils;->createSavedPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->savePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->loadPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string v1, "provide"

    invoke-virtual {v0, p0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setLoadTime(JLjava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/executor/injector/NotesDocumentInjector;->provideNotesMdeRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setMdeDataSource(Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;)V

    return-object v0
.end method

.method public static provideDummy(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "E:",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provideDummy, spenSDocDataSource : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentInjector"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->create(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->getDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->clone()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->caller(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->documentSubscriptionId(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/injector/NotesDocumentInjector;->provide(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->getSpenSDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V

    return-object p0
.end method

.method public static provideNotesMdeRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/data/mde/NotesMdeRepository;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/mde/NotesMdeRepository;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static restoreCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "E:",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreCache, path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotesDocumentInjector"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    const-string p0, "read parcelable cache - start"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->readParcelableFromFile(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v1, "restoreCache"

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setLoadTime(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->documentSubscriptionId(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    :cond_1
    const-string p1, "read parcelable cache - end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
