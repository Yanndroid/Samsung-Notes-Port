.class public Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;
.super Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetImgShortCutProvider"

.field private static mPreviousEventTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;-><init>()V

    return-void
.end method

.method private getLayoutId(Landroid/content/Context;I)I
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_shortcut_portrait_phone_layout:I

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_shortcut_phone_layout:I

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_img_shortcut_layout:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->getWidgetLayoutId(Landroid/content/Context;IIII)I

    move-result p1

    return p1
.end method

.method private makeContent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeContent(Landroid/content/Context;ILjava/lang/String;ZLjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method private makeContent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/RemoteViews;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v0, p3

    move-object/from16 v11, p6

    const-string v1, "makeContent# uuid : "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeContent# start, widgetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {v9, v3, v10}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->printWidgetOptions(Landroid/content/Context;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "WidgetImgShortCutProvider"

    invoke-static {v12, v2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->getLayoutId(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v13, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v2

    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v10, v3}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveWidgetPrefFilePath(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p4

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getFilePath(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v5, v3

    if-nez v5, :cond_3

    invoke-direct {v8, v9, v10, v13, v11}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeEmptyContent(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/String;)V

    return-object v13

    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " path: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/SpenComposerSdk;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeContent# path is not exist. path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9, v10, v13, v11}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeEmptyContent(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/String;)V

    return-object v13

    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->isSaving(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSaveType()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSaving: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", saveType: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    if-nez p5, :cond_5

    if-eqz v4, :cond_5

    if-nez v6, :cond_5

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_loading_layout:I

    invoke-virtual {v13, v0, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v13

    :cond_5
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->init(Landroid/content/Context;)V

    :cond_6
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isValidFiles(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    invoke-virtual {v1, v9, v0, v10}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isCreateWidgetState(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_3

    :cond_7
    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_loading_layout:I

    const/16 v15, 0x8

    invoke-virtual {v13, v1, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :try_start_1
    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_empty_container:I

    invoke-virtual {v13, v1, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_list_view:I

    invoke-virtual {v13, v1, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_convert_text:I

    invoke-virtual {v13, v1, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v13, v7}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->setWidgetTitle(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->convertOpacity(I)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->setListAdapter(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9, v13, v10}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->setClickPendingIntent(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->existVoiceRecording(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_title_layout:I

    invoke-virtual {v13, v2, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_8
    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_voice:I

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    move v14, v15

    :goto_1
    invoke-virtual {v13, v2, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v4, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    invoke-direct {v4, v9, v10}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getPageColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->hasBackgroundImage(Ljava/lang/String;)Z

    move-result v6

    new-instance v1, Lcom/samsung/android/app/notes/widget/theme/ShortcutThemeManager;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/widget/theme/ShortcutThemeManager;-><init>()V

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/notes/widget/theme/ShortcutThemeManager;->applyThemeToWidgetFrame(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeContent# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v8, v9, v10, v13, v11}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeEmptyContent(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/String;)V

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeContent# end, widgetId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v13

    :cond_a
    :goto_3
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    invoke-virtual {v1, v9, v0, v5, v10}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeContent# wait cache loading, mAppWidgetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v13

    :catch_1
    move-exception v0

    const-string v1, "makeContent# fail to init Spen"

    invoke-static {v12, v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v8, v9, v10, v13, v11}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeEmptyContent(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/String;)V

    return-object v13
.end method

.method private makeContent(Landroid/content/Context;ILjava/lang/String;ZLjava/lang/String;)Landroid/widget/RemoteViews;
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeContent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method private makeEmptyContent(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/RemoteViews;
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->getLayoutId(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeEmptyContent(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/String;)V

    return-object v0
.end method

.method private makeEmptyContent(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeEmptyContent# caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetImgShortCutProvider"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "receive_caller_up_update"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveTrueReverseTransparency(I)V

    :cond_0
    const-string p4, "note_none"

    invoke-static {p2, p4}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveWidgetPref(ILjava/lang/String;)V

    sget p4, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_list_view:I

    const/16 v0, 0x8

    invoke-virtual {p3, p4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p4, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_title_layout:I

    invoke-virtual {p3, p4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p4, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_empty_container:I

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance p4, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    invoke-direct {p4, p1, p2}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getEmptyTransparency(I)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveTransparency(II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getEmptyWidgetAlpha()I

    move-result v0

    iput v0, p4, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTransparency:I

    :goto_0
    new-instance v0, Lcom/samsung/android/app/notes/widget/theme/ShortcutThemeManager;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/widget/theme/ShortcutThemeManager;-><init>()V

    invoke-virtual {v0, p1, p3, p4}, Lcom/samsung/android/app/notes/widget/theme/ShortcutThemeManager;->applyThemeToEmptyWidget(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V

    new-instance p4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->getThis()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p4, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "widget.PICK_MEMO_LIST"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appWidgetId"

    invoke-virtual {p4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0xc000000

    invoke-static {p1, p2, p4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    sget p4, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_container:I

    invoke-virtual {p3, p4, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->widget_shortcut_add_to_note:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->memolist_category_content_description_button:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private setClickPendingIntent(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->getThis()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "widget.OPEN_MEMO_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0xc000000

    invoke-static {p1, p3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_list_view:I

    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_container:I

    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private static setEventTime(J)V
    .locals 0

    sput-wide p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->mPreviousEventTime:J

    return-void
.end method

.method private setListAdapter(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "appWidgetId"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "note_file_path"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "note_uuid"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "widget_title"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget p1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_list_view:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    return-void
.end method

.method private setWidgetTitle(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    sget v6, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_title_layout:I

    sget v7, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_title:I

    sget v8, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_shadow_title:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->setWidgetTitle(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;ZIII)V

    return-void
.end method


# virtual methods
.method public TAG()Ljava/lang/String;
    .locals 1

    const-string v0, "WidgetImgShortCutProvider"

    return-object v0
.end method

.method public getThis()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;

    return-object v0
.end method

.method public makeConvertWidgetView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 4

    const-string v0, "WidgetImgShortCutProvider"

    const-string v1, "makeConvertWidgetView#"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->getLayoutId(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_list_view:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_title:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_empty_container:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_loading_layout:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_convert_text:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->background:I

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_short_background_white:I

    const-string v3, "setImageResource"

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getEmptyWidgetAlpha()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->convertAlpha(I)I

    move-result v2

    const-string v3, "setImageAlpha"

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->getThis()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "widget.MEMO_CONVERT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0xc000000

    invoke-static {p1, p2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_container:I

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->widget_convert_document:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->memolist_category_content_description_button:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public makeEmptyWidgetView(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeContent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public makeWidgetListView(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/RemoteViews;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeContent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppWidgetOptionsChanged# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9, v8}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->printWidgetOptions(Landroid/content/Context;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WidgetImgShortCutProvider"

    invoke-static {v2, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appWidgetMinWidth"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "appWidgetMaxWidth"

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "widgetPref"

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "widgetMaxWidth"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, -0x1

    invoke-interface {v4, v5, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "widgetMinWidth"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    sget v12, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_list_view:I

    if-ne v0, v11, :cond_0

    if-eq v3, v5, :cond_1

    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " | "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4, v8}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->isDeleteNote(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isDarkModeChange(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "note_none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "onAppWidgetOptionsChanged. updateEmptyAppWidget dark"

    invoke-direct {v6, v7, v8, v0}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeEmptyContent(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v1

    move-object/from16 v10, p2

    invoke-virtual {v6, v10, v8, v1, v0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateAppWidget(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v10, p2

    const-string v5, "onAppWidgetOptionsChanged. updateAppWidget dark"

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v4

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateAppWidgetAndNotify(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object/from16 v10, p2

    invoke-virtual {v6, v7, v4}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->isTextOnlyNote(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-ne v0, v11, :cond_5

    if-eq v3, v5, :cond_6

    :cond_5
    const-string v5, "onAppWidgetOptionsChanged. updateAppWidget "

    goto :goto_0

    :cond_6
    :goto_1
    invoke-super/range {p0 .. p4}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeleted# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetImgShortCutProvider"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->removeCacheInfo(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->deleteWidgetPref(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->getThis()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive# action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", RequestTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " PreviousEventTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->mPreviousEventTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WidgetImgShortCutProvider"

    invoke-static {v3, v2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->getThis()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->getWidgetCount(Landroid/content/Context;Ljava/lang/Class;)I

    move-result v2

    const-string v3, "9978"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertStatusLog(Ljava/lang/String;I)V

    :cond_0
    const-string v2, "widget.MEMO_PICK_DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "note_uuid"

    if-eqz v2, :cond_6

    const-string v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->getThis()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    int-to-long v4, v0

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->isCurrentProviderWidget(Landroid/content/Context;Landroid/content/ComponentName;J)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "note_file_path"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "widget_transparency"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "widget_background_color"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "widget_dark_mode"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez v3, :cond_2

    invoke-static {v0, v2}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveWidgetPref(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveWidgetPref(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-ne v4, v1, :cond_3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveWidgetPref(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x64

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveTransparency(II)V

    goto :goto_1

    :cond_3
    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveWidgetPref(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    if-eq v5, v1, :cond_4

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveWidgetBackgroundColorPref(II)V

    :cond_4
    if-eq p2, v1, :cond_5

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveDarkModePref(II)V

    :cond_5
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/HomeScreenUtils;->getWidgetAddDisplayType(Landroid/content/Context;)I

    move-result p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveWidgetDisplayDevicePref(II)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/HomeScreenUtils;->getHomeMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveWidgetHomeModePref(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->removePreviousCache(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "onReceive"

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateWidget(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string v2, "widget.MEMO_WAIT_CACHE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "widget_update_id_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_list_view:I

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateWidgetByCache(Landroid/content/Context;Landroid/content/ComponentName;Ljava/util/List;I)V

    goto/16 :goto_3

    :cond_7
    const-string v2, "widget.MEMO_UPDATE_UUID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateWidgetByUUID(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string v2, "widget.MEMO_DELETE_UUID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->removeCacheInfo(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1, p2}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->deleteWidgetByUUIDList(Landroid/content/Context;Landroid/content/ComponentName;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_9
    const-string v2, "widget.MEMO_UPDATE_ALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    const-string v2, "widget.OPEN_MEMO_LIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "614"

    if-eqz v2, :cond_b

    const-string v0, "6131"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->mPreviousEventTime:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->openMemoListFromWidget(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_3

    :cond_b
    const-string v2, "widget.PICK_MEMO_LIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "6132"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v8, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->mPreviousEventTime:J

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->pickMemoListFromWidget(Landroid/content/Context;Landroid/content/Intent;JZ)V

    goto :goto_3

    :cond_c
    const-string v2, "widget.MEMO_CONVERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-wide v0, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->mPreviousEventTime:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->convertFromWidget(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_3

    :cond_d
    const-string v2, "widget.MEMO_CONVERT_UUID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "widget_convert_uuid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateWidgetByConvertUUID(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateAllWidget(Landroid/content/Context;Landroid/content/ComponentName;)V

    :cond_f
    :goto_3
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[III)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdate# oldWidgetID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newWidgetID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetImgShortCutProvider"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v8, v10, v11, v0}, Lcom/samsung/android/app/notes/widget/util/WidgetBRHelper;->restoreWidgetInfo(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->getThis()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v13, v8, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    array-length v14, v9

    move v15, v0

    :goto_0
    if-ge v15, v14, :cond_7

    aget v6, v9, v15

    const/4 v0, 0x0

    invoke-static {v12}, Lcom/samsung/android/app/notes/widget/util/WidgetBRHelper;->isCalledBySmartSwitch(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "note_none"

    const-string v3, "receive_caller_up_update"

    if-eqz v1, :cond_3

    if-ne v10, v11, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {v7, v8, v6, v1, v3}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeContent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    invoke-static {v12, v6, v10}, Lcom/samsung/android/app/notes/widget/util/WidgetBRHelper;->restoreWidgetInfoToSharedPref(Ljava/lang/String;II)V

    invoke-static {v8, v12}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isSDoc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {v7, v8, v6, v12, v3}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeContent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    :cond_2
    :goto_1
    move v9, v6

    goto :goto_3

    :cond_3
    invoke-static {v6}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getFilePath(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v8, v5}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isSDoc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeConvertWidgetView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v7, v8, v5, v6, v3}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateNoFilePathWidget(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v7, v8, v5}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->isMakeWidgetContent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v16, 0x0

    const-string v17, "receive_caller_up_update"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move-object v3, v5

    move/from16 v5, v16

    move v9, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeContent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_3

    :cond_6
    move v9, v6

    invoke-virtual {v7, v8, v13, v5}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->deleteWidget(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9, v3}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->makeEmptyWidgetView(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_3
    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_list_view:I

    move-object/from16 v2, p2

    invoke-virtual {v7, v2, v9, v0, v1}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateAppWidgetAndNotify(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;I)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p3

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public setPreviousEventTime(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;->setEventTime(J)V

    return-void
.end method
