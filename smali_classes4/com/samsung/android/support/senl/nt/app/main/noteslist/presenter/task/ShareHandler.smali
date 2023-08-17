.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;
    }
.end annotation


# static fields
.field private static final BUFFER:I = 0x2800

.field private static final TAG:Ljava/lang/String; = "ShareHandler"


# instance fields
.field private mDestPath:Ljava/lang/String;

.field private mIsCanceled:Z

.field private final mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mIsCanceled:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    return-object p0
.end method

.method private closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1

    const-string v0, "normally"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void
.end method

.method private closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSpenWNote# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShareHandler"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSpenWNote# : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "ShareHandler"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mIsCanceled:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->cancel()V

    return-void
.end method

.method public createIntentToShareText(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;->MemoList:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->createIntentToShareText(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public deleteFile(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ShareHandler"

    const-string v1, "deleteFile - delete fail"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mDestPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mDestPath:Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareUtils;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDestPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mDestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v0

    return-object v0
.end method

.method public makePDFFiles(Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    const-string v10, "ShareHandler"

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->initSpenSdk(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/SpenComposerSdk;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makePDFFiles# initSpenSdk, SpenComposerSdk.initialize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "makePDFFiles"

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v15, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v14

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    const/4 v0, 0x0

    :goto_1
    move v11, v0

    if-ge v11, v12, :cond_4

    iget-boolean v0, v7, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mIsCanceled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v6, p3

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v4

    const-string v17, "pdf"

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v9, :cond_1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;->onStartMakePdf(Ljava/lang/String;)V

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v18

    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    const/16 v17, 0x1

    move v5, v11

    move-object v11, v0

    move v6, v12

    move-object/from16 v12, p1

    move-object v2, v13

    move-object/from16 v13, v16

    move/from16 v19, v14

    move v14, v15

    move/from16 v20, v15

    move v15, v3

    move/from16 v16, v4

    :try_start_2
    invoke-direct/range {v11 .. v18}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move v5, v11

    move v6, v12

    move-object v2, v13

    move/from16 v19, v14

    move/from16 v20, v15

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makePDFFiles# new SpenWNote fail e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_2

    move-object/from16 v4, p1

    move/from16 v11, v19

    goto :goto_4

    :cond_2
    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v3, v7, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v3

    move-object/from16 v4, p1

    move/from16 v11, v19

    invoke-virtual {v3, v4, v8, v11, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makePdf(Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v9, v6, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;->onProgressMakePdf(II)V

    :cond_3
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makePDFFiles# "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v0, v5, 0x1

    move-object v13, v2

    move v12, v6

    move v14, v11

    move/from16 v15, v20

    goto/16 :goto_1

    :cond_4
    :goto_5
    move-object v2, v13

    return-object v2
.end method

.method public makeShareImageList(Landroid/content/Context;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v3}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNote(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLocked(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareCacheHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;->getContextShareDir(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v9

    const-string v11, "jpg"

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v3, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeImage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mIsCanceled:Z

    if-eqz v6, :cond_3

    const-string p1, "makeShareImageList isCanceled"

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v7, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v9

    const-string v11, "zip"

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->zip(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object v3

    iget-boolean v4, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mUseFileProvider:Z

    const-string v5, "zip"

    invoke-virtual {v3, p1, v2, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    :goto_1
    const-string v2, "makeShareImageList shareDir is invalid "

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    const/4 v0, 0x0

    const-string v2, "application/zip"

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->shareFile(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->startChooserActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method public makeShareTextList(Landroid/content/Context;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "text/plain"

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v4}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNote(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLocked(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareCacheHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;->getContextShareDir(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mIsCanceled:Z

    if-eqz v6, :cond_3

    const-string p1, "makeShareTextList isCanceled"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v7, v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v9

    const-string v11, "txt"

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeText(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object v4

    iget-boolean v5, v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mUseFileProvider:Z

    invoke-virtual {v4, p1, v2, v5, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    :goto_1
    const-string v2, "makeShareTextList shareDir is invalid"

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v1, v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->shareFile(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->startChooserActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method public setRenamedFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mDestPath:Ljava/lang/String;

    return-void
.end method

.method public shareImage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->shareImage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;I)V

    return-void
.end method

.method public shareOfficeFile(Landroid/content/Context;ILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_8

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->initSpenSdk(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v4}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNoteForExportOffice(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLocked(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareCacheHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;->getContextShareDir(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mIsCanceled:Z

    if-eqz v6, :cond_4

    const-string p1, "shareOfficeFile isCanceled"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v7, v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v9

    const-string v11, "pptx"

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v3

    if-ne p2, v0, :cond_5

    invoke-virtual {v7, p1, v4, v3, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeMsWord(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {v7, p1, v4, v3, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeMsPPT(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->closeSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object v4

    iget-boolean v5, v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mUseFileProvider:Z

    invoke-virtual {v4, p1, v3, v5, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    :goto_3
    const-string p1, "ShareHandler"

    const-string p2, "sharePowerPoint# failed to getPathForShare"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v2, v1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->shareFile(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->startChooserActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8
    return-void
.end method

.method public sharePdf(Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLocked(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareCacheHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;->getContextShareDir(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->makePDFFiles(Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$Callback;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object p3

    iget-boolean p4, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mUseFileProvider:Z

    const-string v1, "application/pdf"

    invoke-virtual {p3, p1, p2, p4, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p2, v1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->shareFile(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;

    move-result-object p4

    const/4 v0, 0x2

    invoke-virtual {p3, p1, p4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->startChooserActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    const-string p1, "ShareHandler"

    const-string p2, "sharePdf# failed to getPathForShare"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public shareSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;Z)Landroid/content/Intent;
    .locals 8
    .param p2    # Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareIntentCreationHelper;->getBaseIntentWithActionSend()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "application/sdoc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLocked(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareCacheHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;->getContextShareDir(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v6

    if-eqz p4, :cond_1

    const-string p4, "sdoc"

    goto :goto_0

    :cond_1
    const-string p4, "sdocx"

    :goto_0
    invoke-static {v4, v5, v6, v7, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareUtils;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-boolean p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mIsCanceled:Z

    if-nez p4, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object p4

    iget-boolean v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mUseFileProvider:Z

    invoke-virtual {p4, p1, p2, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v3

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object p4

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getUserId(I)I

    move-result p4

    invoke-static {p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareUtils;->attachUserIdToAuthority(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    const-string p4, "android.intent.extra.STREAM"

    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1, v0, v3, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareIntentCreationHelper;->createChooserIntentCompat(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v3

    :cond_5
    :goto_2
    const-string p1, "ShareHandler"

    const-string p2, "shareSDoc# failed to getPathForShare"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public shareSDoc(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;Z)Landroid/content/Intent;
    .locals 20
    .param p3    # Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    const-string v12, "shareSDoc# "

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->initSpenSdk(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getUserId(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareSDoc# shareDataList size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "ShareHandler"

    invoke-static {v13, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v14, 0x1

    if-ne v2, v14, :cond_0

    move-object/from16 v15, p2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-object/from16 v9, p0

    move/from16 v8, p4

    invoke-virtual {v9, v10, v0, v11, v8}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->shareSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v9, p0

    move-object/from16 v15, p2

    move/from16 v8, p4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareIntentCreationHelper;->getBaseIntentWithActionSendMultiple()Landroid/content/Intent;

    move-result-object v7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "application/sdoc"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;

    move-object v1, v2

    move-object v14, v2

    move-object/from16 v2, p0

    move/from16 v17, v3

    move-object/from16 v3, p2

    move/from16 v18, v4

    move/from16 v4, v17

    move-object v15, v5

    move-object/from16 v5, p1

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    move-object v10, v7

    move/from16 v7, p4

    move v8, v0

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;Ljava/util/List;ILandroid/content/Context;Ljava/util/ArrayList;ZILjava/util/ArrayList;)V

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v17, 0x1

    move-object/from16 v9, p0

    move/from16 v8, p4

    move-object v7, v10

    move-object v5, v15

    move/from16 v4, v18

    move-object/from16 v6, v19

    const/4 v14, 0x1

    move-object/from16 v10, p1

    move-object/from16 v15, p2

    goto :goto_0

    :cond_1
    move-object v15, v5

    move-object/from16 v19, v6

    move-object v10, v7

    const/4 v0, 0x5

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v1, v13}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v15}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareException;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareException;

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-object v2

    :cond_4
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v3, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object/from16 v1, p1

    move-object v3, v10

    invoke-static {v1, v3, v2, v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareIntentCreationHelper;->createChooserIntentCompat(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-object v2
.end method

.method public startChooserActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareHandler;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->startChooserActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method public zip(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "SHARE_IMAGE_ZIP : "

    const-string v1, "ShareHandler"

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x2800

    new-array v4, v3, [B

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v6, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v8, Ljava/util/zip/ZipEntry;

    const/16 v9, 0x2f

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    invoke-virtual {p2, v4, v5, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_1
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string p1, "SHARE_IMAGE_ZIP - end"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    throw p1
.end method
