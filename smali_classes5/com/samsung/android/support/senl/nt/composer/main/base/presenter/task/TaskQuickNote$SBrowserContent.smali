.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SBrowserContent"
.end annotation


# instance fields
.field private mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

.field private mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;-><init>(I)V

    return-void
.end method

.method private makeWebCard(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v0, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/ExtraDataHelper;->createJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->isShowWebPreviewsEnabled()Z

    move-result v0

    invoke-direct {p2, p1, v1, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;Ljava/lang/String;Z)V

    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_1
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;->d()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SBrowserContent.makeWebCard# "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    :cond_0
    return-void
.end method

.method public getContent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    return-object v0
.end method

.method public makeContent(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;

    const/4 v2, 0x1

    new-array v3, v2, [Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v4

    iget v5, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->mInputType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-direct {v0, v6, v1, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;->makeWebCard(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v3, v4

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    if-ne v5, v2, :cond_1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebClip;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebClip;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IPageScroller;

    move-result-object v13

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;)Z

    move-result v15

    move-object v7, v2

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IPageScroller;Ljava/lang/String;Z)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setStorageChecker(Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent$1;

    invoke-direct {v5, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;[Z)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->setTimeStart(J)V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;->mTaskWebClip:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)V

    :cond_1
    :goto_0
    aget-boolean v1, v3, v4

    return v1
.end method
