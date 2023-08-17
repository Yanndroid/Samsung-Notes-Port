.class public Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;
.super Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask$a;
    }
.end annotation


# static fields
.field private static final NMEMO_WIDGET_PREF_ID_END_TAG:Ljava/lang/String; = "\">"

.field private static final NMEMO_WIDGET_PREF_ID_START_TAG:Ljava/lang/String; = "<string name=\"widgetID"

.field private static final NMEMO_WIDGET_PREF_UUID_END_TAG:Ljava/lang/String; = "</string>"

.field private static final NMEMO_WIDGET_PREF_UUID_START_TAG:Ljava/lang/String; = "\">"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNMemoPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RestoreNMemoTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->v()I

    move-result p1

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const/16 p1, 0x20

    :goto_0
    iput p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    goto :goto_1

    :cond_0
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    iput v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isSecureFolderMode()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    const-string v0, "Change sessionKey in Secure Folder Mode."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionKey:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->mNMemoPath:Ljava/lang/String;

    return-void
.end method

.method private static parseWidgetXML(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask$a;)V
    .locals 4

    const-string v0, "<string name=\"widgetID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    const-string v1, "\">"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask$a;->a:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseWidgetXML widgetID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const-string v2, "</string>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask$a;->b:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseWidgetXML widgetUuid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private restoreWidgetInfo()Z
    .locals 18

    move-object/from16 v1, p0

    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->mNMemoPath:Ljava/lang/String;

    const-string/jumbo v3, "widgetPref.xml"

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "widgetPrefXml exists."

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lz/c;

    const-string v4, "memo.db"

    const-string v5, "SDocData/NMEMO/app_attach"

    invoke-direct {v2, v4, v5}, Lz/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lz/c;->d()Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v6, "UTF8"

    invoke-direct {v0, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, "<string name=\"widgetID"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask$a;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask$a;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/a;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->parseWidgetXML(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask$a;)V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getUuid()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask$a;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v8, Ld1/d;

    const/16 v12, 0xb

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getCategoryName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getContent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getLastModifiedAt()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getUuid()Ljava/lang/String;

    move-result-object v17

    move-object v11, v8

    invoke-direct/range {v11 .. v17}, Ld1/d;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ld1/d;->j0(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ld1/d;->O(Z)V

    invoke-virtual {v8, v9}, Ld1/d;->P(Ljava/lang/Object;)V

    iget-object v6, v6, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask$a;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6}, Ld1/d;->k0(I)V

    iget-object v6, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ""

    invoke-virtual {v0, v3, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    return v7

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    :cond_3
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "widgetPrefXml not exists."

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceFilePath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0}, Lc3/n;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "memo_rename.bk"

    invoke-static {v0, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "encryptedFile"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->mNMemoPath:Ljava/lang/String;

    const-string v2, "memo.zip"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "decryptedFile"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->mNMemoPath:Ljava/lang/String;

    const-string v2, "memo.db"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "inMemoDbFile"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->deleteFile(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSDocTempFiles. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->O(Z)V

    return-void
.end method

.method public decryptAndUnzip()I
    .locals 25

    move-object/from16 v1, p0

    const-string v0, "memo.db"

    const-string v2, "memo.zip"

    iget v3, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-ne v3, v5, :cond_0

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    const-string v2, "Mask type is NMemo Update. Skip decryptAndUnzip."

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    sget-object v3, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    const-string v5, "Start decryptAndUnzip."

    invoke-static {v3, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    if-eqz v5, :cond_1

    const/16 v6, 0x8

    goto :goto_0

    :cond_1
    const/16 v6, 0x20

    :goto_0
    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceFilePath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v5

    invoke-virtual {v5}, Lc3/n;->i()Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v9, Ljava/io/File;

    const-string v10, "memo_rename.bk"

    invoke-static {v5, v10}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget v10, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSecurityLevel:I

    iget-object v11, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionKey:Ljava/lang/String;

    invoke-static {v10, v5, v11}, Lx1/d;->d(ILjava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v10, :cond_3

    :try_start_2
    const-string v0, "is null."

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x6

    invoke-virtual {v1, v0, v6}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    invoke-virtual {v1, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v10}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    return v0

    :cond_3
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v15, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->mNMemoPath:Ljava/lang/String;

    invoke-static {v15, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const/16 v8, 0x2800

    :try_start_4
    new-array v8, v8, [B

    move v9, v4

    :goto_2
    invoke-virtual {v10, v8}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-eq v15, v7, :cond_5

    invoke-virtual {v3, v8, v4, v15}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v8

    int-to-long v7, v15

    add-long/2addr v13, v7

    const/16 v7, 0x1388

    if-ne v9, v7, :cond_4

    const-wide/16 v7, 0x1

    const-wide/16 v17, 0x31

    mul-long v17, v17, v13

    :try_start_5
    div-long v17, v17, v11

    add-long v7, v17, v7

    long-to-int v7, v7

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->sendProgressRestore(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v9, v4

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v8, v3

    const/4 v7, -0x1

    goto/16 :goto_9

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, v16

    const/4 v7, -0x1

    goto :goto_2

    :cond_5
    move-object/from16 v16, v8

    :try_start_6
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->mNMemoPath:Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v8, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->mNMemoPath:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    const-string v9, "Start unzip."

    invoke-static {v8, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-boolean v9, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    const/16 v23, 0x33

    const/16 v24, 0x5a

    move-object/from16 v17, v7

    move-object/from16 v18, v2

    move/from16 v22, v9

    invoke-static/range {v17 .. v24}, Lx1/f;->b(Ljava/io/File;Ljava/io/File;ZZZZII)Ljava/util/ArrayList;

    const-string v2, "Finish unzip."

    invoke-static {v8, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v7, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->mNMemoPath:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v8

    invoke-virtual {v8}, Lc3/n;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v0, v16

    :goto_4
    :try_start_8
    invoke-virtual {v8, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v7, -0x1

    if-eq v3, v7, :cond_6

    :try_start_9
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_4

    :cond_6
    invoke-virtual {v1, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    iget-boolean v0, v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    if-eqz v0, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->restoreWidgetInfo()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :cond_7
    move v0, v4

    :goto_5
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v10}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    move v7, v4

    move v4, v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v5, v8

    move-object v8, v2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    const/4 v7, -0x1

    :goto_6
    move-object v5, v8

    move-object v8, v2

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v5, v8

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v7, -0x1

    move-object v5, v8

    goto :goto_8

    :catch_4
    move-exception v0

    const/4 v7, -0x1

    goto :goto_8

    :catchall_2
    move-exception v0

    :goto_7
    move-object v8, v3

    goto/16 :goto_b

    :catch_5
    move-exception v0

    :goto_8
    move-object v8, v3

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v10, v8

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v10, v8

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v5, v8

    move-object v10, v5

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v5, v8

    move-object v10, v5

    :goto_9
    :try_start_a
    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured. "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ENOSPC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v7, -0x4

    :cond_8
    invoke-virtual {v1, v7, v6}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-virtual {v1, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v10}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    :goto_a
    if-nez v4, :cond_9

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->sendProgressRestore(I)V

    invoke-virtual {v1, v7, v6}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V

    :cond_9
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish decryptAndUnzip. result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catchall_5
    move-exception v0

    :goto_b
    invoke-virtual {v1, v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    invoke-virtual {v1, v10}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->closeCloseable(Ljava/io/Closeable;)V

    throw v0
.end method

.method public onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->O(Z)V

    return-void
.end method

.method public prepare()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    const-string v1, "prepare."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lc3/n;->O(Z)V

    iget v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const-string v1, "Mask type is NMemo Update. Skip prepare."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->mNMemoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deleteFile mNMemoPath path. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mVersion:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceFilePath:Ljava/lang/String;

    const-string v1, "memo.bk"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceFilePath:Ljava/lang/String;

    const-string v2, "memo_rename.bk"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename file. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    const-string v1, "Failed to mkdirs databases path."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->mNMemoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    const-string v1, "Failed to mkdirs nmemoFolder path."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public sendProgressRestore(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendProgressRestore(I)V

    :cond_0
    return-void
.end method

.method public update()I
    .locals 12

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    const-string v1, "Start update."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V

    :cond_0
    return v2

    :cond_1
    :try_start_0
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0}, Lc3/n;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "memo.db"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lz/c;

    const-string v3, "SDocData/NMEMO/app_attach"

    invoke-direct {v1, v0, v3}, Lz/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lz/c;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    sget-object v3, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Category Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getCategoryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Order : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getCategoryOrder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ld1/d;

    const/16 v6, 0xb

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getCategoryName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getLastModifiedAt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getUuid()Ljava/lang/String;

    move-result-object v11

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Ld1/d;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ld1/d;->j0(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ld1/d;->O(Z)V

    invoke-virtual {v3, v1}, Ld1/d;->P(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End getMemoData. size : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception decryptAndUnzipToNMemo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    const/16 v0, 0x10

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V

    :cond_3
    :goto_1
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish update. result : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
