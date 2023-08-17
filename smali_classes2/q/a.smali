.class public Lq/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lq/c;

.field public b:Lq/b;


# direct methods
.method public constructor <init>(Lq/c;Lq/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/a;->a:Lq/c;

    iput-object p2, p0, Lq/a;->b:Lq/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;JJJLcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Z
    .locals 6

    const-string v0, "Failed to close : "

    const-string v1, "MdeImportSingleTask$MdeImportSDoc"

    const-string v2, "addNewImportedMdeFileToDB()"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->isLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/samsung/android/support/senl/document/SDocLocker;

    iget-object v4, p0, Lq/a;->a:Lq/c;

    invoke-virtual {v4}, Lq/c;->b()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->unlock(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    :cond_0
    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;-><init>()V

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->setTime(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v3, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFirstOpendAt(J)V

    iget-object p2, p0, Lq/a;->a:Lq/c;

    invoke-virtual {p2}, Lq/c;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeSpaceId(Ljava/lang/String;)V

    iget-object p2, p0, Lq/a;->a:Lq/c;

    invoke-virtual {p2}, Lq/c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeGroupId(Ljava/lang/String;)V

    iget-object p2, p0, Lq/a;->a:Lq/c;

    invoke-virtual {p2}, Lq/c;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setMdeOwnerId(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsFavorite(I)V

    sget-object p2, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SHARED_NOTE_BOOK:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result p3

    const/4 v4, 0x1

    if-eqz p3, :cond_5

    :try_start_1
    new-instance v5, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    iget-object p3, p0, Lq/a;->a:Lq/c;

    invoke-virtual {p3}, Lq/c;->b()Landroid/content/Context;

    move-result-object p5

    const-string p7, "CONFIRMED_PASSWORD"

    new-instance p3, Lcom/samsung/android/support/senl/document/SDocLocker;

    iget-object p4, p0, Lq/a;->a:Lq/c;

    invoke-virtual {p4}, Lq/c;->b()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object p8

    const/4 p9, 0x0

    move-object p4, v5

    move-object p6, p1

    invoke-direct/range {p4 .. p9}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p2, p0, Lq/a;->a:Lq/c;

    invoke-virtual {p2}, Lq/c;->b()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p7, 0x0

    const/4 p8, 0x0

    const-string p9, "MdeImportSingleTask$MdeImportSDoc"

    move-object p4, p1

    move-object p5, v3

    move-object p6, v5

    invoke-static/range {p2 .. p9}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->save(Landroid/content/Context;ZLjava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result p2

    if-nez p2, :cond_1

    :try_start_3
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p1

    :catchall_0
    move-exception p1

    move-object p2, v5

    goto/16 :goto_8

    :catch_1
    move-exception p1

    move-object p2, v5

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v5

    goto :goto_2

    :catch_3
    move-exception p1

    move-object p2, v5

    goto :goto_3

    :catch_4
    move-exception p1

    move-object p2, v5

    goto/16 :goto_6

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    :catch_5
    move-exception p1

    :goto_1
    :try_start_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "convert, SpenSDocUnsupportedVersionExceptione : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_5
    invoke-virtual {p2, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :catch_7
    move-exception p1

    :goto_2
    :try_start_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "convert, SpenSDocInvalidPasswordException e : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_7
    invoke-virtual {p2, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_5

    :catch_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :catch_9
    move-exception p1

    :goto_3
    :try_start_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "convert, SpenSDocUnsupportedFileException e : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_9
    invoke-virtual {p2, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_5

    :catch_a
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_5
    return v2

    :catch_b
    move-exception p1

    :goto_6
    :try_start_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "convert, e : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_b
    invoke-virtual {p2, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_7

    :catch_c
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_7
    return v2

    :goto_8
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result p3

    if-nez p3, :cond_4

    :try_start_c
    invoke-virtual {p2, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_9

    :catch_d
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_9
    throw p1

    :cond_5
    :try_start_d
    invoke-virtual {p9, p1, v4, v3}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->p(Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "fail to add the note"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    return v2

    :cond_6
    return v4

    :catch_e
    move-exception p1

    new-instance p2, Ly1/b;

    sget-object p3, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_FILE_WRITE_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw p2

    :catch_f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "MdeImportSingleTask$MdeImportSDoc"

    const-string v1, "cloneSdocFileWithNewName()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lq/a;->a:Lq/c;

    invoke-virtual {v1}, Lq/c;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCopyUtils;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to cloneSdocFileWithNewName : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Z
    .locals 20

    move-object/from16 v11, p0

    const-string v12, "MdeImportSingleTask$MdeImportSDoc"

    const-string v0, "perform()"

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v11, Lq/a;->a:Lq/c;

    invoke-virtual {v0}, Lq/c;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_a

    iget-object v0, v11, Lq/a;->b:Lq/b;

    invoke-interface {v0}, Lq/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->A()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v11, Lq/a;->a:Lq/c;

    invoke-virtual {v0}, Lq/c;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    iget-object v0, v11, Lq/a;->a:Lq/c;

    invoke-virtual {v0}, Lq/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v4

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v0, v11, Lq/a;->a:Lq/c;

    invoke-virtual {v0}, Lq/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/s;->q()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "file path is null "

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v14, v8

    move-object v1, v12

    move v12, v10

    goto/16 :goto_6

    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/utils/a;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SyncException while checking canUpload. "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    const-string v6, ".sdoc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v3, ".sdocx"

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v0, :cond_8

    if-nez v6, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v0, v11, Lq/a;->a:Lq/c;

    invoke-virtual {v0}, Lq/c;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v2, v0}, Lq/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v10, v10, 0x1

    move-object v1, v12

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->setOwnerId(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->UNLOCKED_DOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->setDocumentType(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;)V

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v16

    move-wide/from16 v18, v2

    goto :goto_3

    :cond_6
    move-wide/from16 v16, v2

    move-wide/from16 v18, v16

    :goto_3
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v7

    move-wide/from16 v6, v16

    move v14, v8

    move-object v11, v9

    move-wide/from16 v8, v18

    move-object/from16 v17, v12

    move v12, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lq/a;->a(Ljava/lang/String;Ljava/lang/String;JJJLcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v8, v14, 0x1

    move v10, v12

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v12, 0x1

    move v8, v14

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "import note file ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v15, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    :goto_5
    move v14, v8

    move-object v1, v12

    move v12, v10

    const-string v0, "file error "

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move v10, v12

    move v8, v14

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, p0

    move-object v12, v1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ly1/b;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_DEVICE_STORAGE_FULL_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v2, "device storage is full!"

    invoke-direct {v0, v1, v2}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_a
    move v14, v8

    move-object v1, v12

    move v12, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "successCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , failedCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
