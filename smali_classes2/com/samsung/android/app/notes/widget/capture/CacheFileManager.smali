.class public Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;,
        Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheFileManager"

.field private static mInstance:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;


# instance fields
.field private mCacheInfoList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSync:Ljava/lang/Object;

.field private final mTextOnlyNoteManager:Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mSync:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mTextOnlyNoteManager:Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->lambda$createCacheInfo$0(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private captureBitmap(Lcom/samsung/android/app/notes/widget/capture/CaptureManager;IILcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/widget/capture/CaptureManager;",
            "II",
            "Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->isListPageMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p1, v1, p3, p4}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->captureListPage(IILcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p4}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->captureSinglePage(ILcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private captureThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ZLcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;",
            "Z",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    move-object/from16 v1, p3

    move-object/from16 v6, p4

    move-object/from16 v2, p6

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "CacheFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createThumbnail# capture start "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1a

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_9

    :cond_0
    move-object/from16 v3, p7

    invoke-direct {v7, v0, v6, v15, v3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->checkCreateCache(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "CacheFileManager"

    const-string v1, "createThumbnail# already creating"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setState(I)V

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->c(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->getWidgetBroadcaster()Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;

    move-result-object v4

    const-string v8, "action_widget_setting_create_cache"

    invoke-interface {v4, v0, v15, v8}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;->sendUpdateWidgetSettingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v4, 0x0

    if-nez v2, :cond_3

    new-instance v2, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v8

    goto :goto_0

    :cond_3
    new-instance v8, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;

    invoke-direct {v8, v0, v2, v4}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V

    move-object/from16 v17, v8

    move-object v8, v2

    move-object/from16 v2, v17

    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->getPageColor()I

    move-result v9

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->getPageCount()I

    move-result v10

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->isListPageMode()Z

    move-result v12

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->isTextOnlyNote()Z

    move-result v11

    if-eqz p5, :cond_4

    const/4 v13, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v14, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v6, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setPageColor(I)V

    invoke-virtual {v6, v10}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setPageCount(I)V

    invoke-virtual {v6, v12}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setListMode(Z)V

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getBackgroundColorInverted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setBackgroundColorInvert(Z)V

    invoke-static {v6, v11}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->n(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Z)V

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->isBackgroundImage()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setBackgroundImage(Z)V

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v6, v8}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setVoiceRecording(Z)V

    const-string v8, "CacheFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createThumbnail# capture init done "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", isTextOnly : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", listMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_7

    invoke-direct {v7, v0, v6, v15, v3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isStateToStopThread(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_6
    const/4 v3, 0x3

    invoke-static {v6, v3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->m(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;I)V

    iget-object v8, v7, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mTextOnlyNoteManager:Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v14

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    move v1, v13

    move v13, v4

    const/4 v3, 0x1

    invoke-virtual/range {v8 .. v14}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->createTextOnlyNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    goto :goto_3

    :cond_7
    move v1, v13

    const/4 v3, 0x1

    :goto_3
    const/4 v8, 0x4

    invoke-static {v6, v8}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->m(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;I)V

    new-instance v9, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    invoke-direct {v9, v3}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(I)V

    invoke-direct {v7, v2, v1, v4, v9}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->captureBitmap(Lcom/samsung/android/app/notes/widget/capture/CaptureManager;IILcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setLightBitmapList(Ljava/util/List;)V

    invoke-direct {v7, v0, v6, v15, v8}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isStateToStopThread(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_8
    return-void

    :cond_9
    const/4 v8, 0x5

    invoke-static {v6, v8}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->m(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->k(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v10, 0x0

    invoke-direct {v7, v0, v9, v10}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getUpdateThemeList(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v11

    const-string v10, "CacheFileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createThumbnail# capture default Done "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0, v6, v15, v8}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isStateToStopThread(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_a
    return-void

    :cond_b
    new-instance v10, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(I)V

    invoke-direct {v7, v2, v1, v4, v10}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->captureBitmap(Lcom/samsung/android/app/notes/widget/capture/CaptureManager;IILcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setDarkBitmapList(Ljava/util/List;)V

    invoke-direct {v7, v0, v6, v15, v8}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isStateToStopThread(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->d(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->d(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_c
    return-void

    :cond_d
    const/4 v1, 0x6

    invoke-static {v6, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->m(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;I)V

    invoke-direct {v7, v0, v9, v3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getUpdateThemeList(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    const-string v3, "CacheFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "capture complete Done "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0, v6, v15, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isStateToStopThread(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->d(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->d(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_e
    return-void

    :cond_f
    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->release()V

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v10, v5

    move-object/from16 v5, p2

    move-object v12, v6

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->saveThumbnailFile(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->d(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->saveThumbnailFile(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_8

    :cond_10
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :cond_12
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_13
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->d(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->d(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :cond_15
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->d(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_16
    const/4 v1, 0x7

    invoke-static {v12, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->m(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;I)V

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->c(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->c(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;

    invoke-interface {v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;->onCacheCreated()V

    goto :goto_6

    :cond_17
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->c(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    invoke-static {v12, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->l(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/util/List;)V

    goto :goto_7

    :cond_18
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->getWidgetBroadcaster()Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;

    move-result-object v1

    const-string v2, "action_widget_setting_done_cache"

    invoke-interface {v1, v0, v15, v2}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;->sendUpdateWidgetSettingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v12, v0, v15}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->saveData(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "CacheFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbnail# capture end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    :goto_8
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->d(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_1a
    :goto_9
    move-object v10, v5

    const-string v0, "CacheFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbnail# file is not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v7, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkCreateCache(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    const/4 v2, 0x0

    if-gtz p3, :cond_0

    return v2

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->e(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)J

    move-result-wide v3

    cmp-long p3, v3, v0

    if-eqz p3, :cond_1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setDocLastModifiedTime(J)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->g(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)I

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v3, "CacheFileManager"

    if-lt p3, v0, :cond_2

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->g(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)I

    move-result p3

    const/4 v0, 0x4

    if-gt p3, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkCreateCache. start capture :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->g(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->g(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)I

    move-result p3

    const/4 v0, 0x5

    if-lt p3, v0, :cond_6

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->g(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)I

    move-result p3

    const/4 v4, 0x6

    if-gt p3, v4, :cond_6

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCreateCache. thumbnail creating :"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->g(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->g(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)I

    move-result v3

    if-ne v3, v0, :cond_3

    invoke-direct {p0, p1, p4, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getUpdateThemeList(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->g(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)I

    move-result p2

    if-ne p2, v4, :cond_4

    invoke-direct {p0, p1, p4, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getUpdateThemeList(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p3

    :cond_4
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {p1, p3}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendWaitCreateCacheFileUuid(Landroid/content/Context;Ljava/util/List;)V

    :cond_5
    return v1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkCreateCache. other state :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->g(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2
.end method

.method private createCacheInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;
    .locals 13

    move-object v9, p0

    move-object v0, p2

    move/from16 v4, p3

    move/from16 v1, p7

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CacheFileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCacheInfo# "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->init(Landroid/content/Context;)V

    move-object v3, p1

    move-object/from16 v5, p4

    invoke-direct {p0, p1, v5, v4, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getValidFilePath(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "note_none"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->initSpen(Landroid/content/Context;)V

    iget-object v6, v9, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mSync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, v9, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz v7, :cond_2

    invoke-static {v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->k(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/Set;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->getState()I

    move-result v8

    if-eqz v8, :cond_1

    const/16 v10, 0x8

    if-eq v8, v10, :cond_1

    move-object/from16 v8, p6

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->addCallback(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;)V

    const-string v0, "CacheFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCacheInfo# exist info# "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->getState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v6

    return-object v7

    :cond_1
    move-object/from16 v8, p6

    goto :goto_0

    :cond_2
    move-object/from16 v8, p6

    new-instance v7, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    invoke-direct {v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;-><init>()V

    iget-object v10, v9, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v10, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object v10, v7

    if-nez v1, :cond_3

    const-string v7, "CacheFileManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createCacheInfo# setState READY_BY_SERVICE#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    invoke-static {v10, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->m(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;I)V

    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object v6, v10

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createCacheInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ZLcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;)V

    :cond_4
    return-object v10

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_1
    const-string v0, "CacheFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCacheInfo. wrong path info. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private createCacheInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ZLcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;)V
    .locals 10

    move-object v2, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCacheInfo# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheFileManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {p5}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setState(I)V

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCacheInfo# capture state. start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p7

    invoke-virtual {p5, v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->addCallback(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;)V

    new-instance v8, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v8, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v9, Ld3/a;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p5

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Ld3/a;-><init>(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private getBackgroundColorInverted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColorInverted()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mInstance:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;-><init>()V

    sput-object v1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mInstance:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mInstance:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    return-wide p1
.end method

.method private getUpdateThemeList(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendWaitCreateCacheFileUuid(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    return-object v0
.end method

.method private getValidFilePath(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p3}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getFilePath(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "note_none"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "CacheFileManager"

    const-string p2, "filePath invalid. "

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method private initSpen(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/SpenComposerSdk;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spen init exception. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CacheFileManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private isStateToStopThread(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/lang/String;I)Z
    .locals 3

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->g(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)I

    move-result v0

    if-eq v0, p4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStateToStopThread# cur:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " expect:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "CacheFileManager"

    invoke-static {v0, p4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->c(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->getWidgetBroadcaster()Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;

    move-result-object p2

    const-string p4, "action_widget_setting_cancel_cache"

    invoke-interface {p2, p1, p3, p4}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;->sendUpdateWidgetSettingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createCacheInfo$0(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->k(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move v5, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ZLcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;)V

    return-void
.end method

.method private makeCacheInfoList(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "CacheFileManager"

    new-instance v1, Ljava/io/File;

    invoke-static {p1, p3}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getCacheDataFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz v3, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz v5, :cond_5

    invoke-static {v5}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->i(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    invoke-static {v5}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->i(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v6, 0x0

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeCacheInfoList#success# "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_4

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getBackgroundColorInverted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setBackgroundColorInvert(Z)V

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->initWidgetIdList()V

    invoke-interface {p2, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private removeCache(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isDoneState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->k(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->k(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->removeCacheFiles(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->m(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->m(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveThumbnailFile(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x6

    invoke-direct {p0, p1, p2, p4, v3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isStateToStopThread(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {p1, v3, p4, v2, p5}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->saveCaptureBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->addThumbnailPath(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public captureTextOnlyBitmap(Landroid/content/Context;Ljava/lang/String;IIZZ)Ljava/util/List;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IIZZ)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v1

    const-string v2, "WIDGET_CAPTURE_TEXT_ONLY_NOTE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->countUp(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    move-object v6, p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    iget-object v3, v0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mTextOnlyNoteManager:Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;

    move-object v4, p1

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/app/notes/widget/capture/TextOnlyNoteManager;->captureTextOnlyBitmap(Landroid/content/Context;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/lang/String;IIZZ)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->countDown(Ljava/lang/String;)V

    return-object v1
.end method

.method public createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;
    .locals 8

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createCacheInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;

    move-result-object p1

    return-object p1
.end method

.method public createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createCacheInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;

    return-void
.end method

.method public createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createCacheInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;

    return-void
.end method

.method public createThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ZLcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;",
            "Z",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const-string v1, "WIDGET_CREATE_THUMBNAIL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->countUp(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->captureThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ZLcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->countDown(Ljava/lang/String;)V

    return-void
.end method

.method public existVoiceRecording(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->j(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBackgroundColorInvert(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->b(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBitmapList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->d(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->filePath:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageColor(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->pageColor:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getPageCount(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->h(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->textPageCount:I

    iget p1, p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->pageCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->pageCount:I

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getThumbnailPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->i(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->i(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string v2, "_black.png"

    goto :goto_0

    :cond_1
    const-string v2, "_white.png"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasBackgroundImage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->a(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    const-string v0, "CacheFileManager"

    const-string v1, "init#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "CacheFileManager"

    const-string v2, "init# start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->initSpen(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->getWidgetIdList(Landroid/content/Context;)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-direct {p0, p1, v5, v4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->makeCacheInfoList(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "CacheFileManager"

    const-string v1, "init# end"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isAfterLastModifyTime(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p1

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->e(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isCreateWidgetState(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->getState()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    new-instance v2, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    invoke-direct {v2, p1, p3}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result p1

    const/4 v2, 0x6

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->getState()I

    move-result p1

    if-ne p1, v2, :cond_4

    :cond_1
    :goto_1
    move v1, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->getState()I

    move-result p1

    if-eq p1, v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->getState()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCreateWidgetState# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CacheFileManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isDoneState(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->getState()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDoneState# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CacheFileManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isListPageMode(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->listMode:Z

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isNextPage(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getThumbnailPath(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, v0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->listMode:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getCacheThumbnailFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public isTextOnlyNote(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->h(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isValidCacheFiles(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "CacheFileManager"

    if-nez v0, :cond_7

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-nez p1, :cond_2

    const-string p1, "isValidCacheFiles# cacheDataInfo is null"

    :goto_1
    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->i(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->i(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->i(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    :cond_5
    return v2

    :cond_6
    :goto_2
    const-string p1, "isValidCacheFiles# thumbnail list is null or empty"

    goto :goto_1

    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidCacheFiles# empty, list: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public isValidFiles(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "CacheFileManager"

    if-nez v0, :cond_3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-nez p1, :cond_2

    const-string p1, "isValidFiles# cacheDataInfo is null"

    :goto_1
    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object p1, p1, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidFiles# empty, list: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public removeCacheInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CacheFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeCacheInfo# start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isDoneState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CacheFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeCacheInfo# remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->removeCacheFiles(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setState(I)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->mCacheInfoList:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    const-string p1, "CacheFileManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeCacheInfo# current state is READY_BY_SERVICE"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->e(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-gez p1, :cond_3

    const-string p1, "CacheFileManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCacheInfo# state init "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->setState(I)V

    :cond_3
    :goto_0
    const-string p1, "CacheFileManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeCacheInfo# end "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public removeCacheInfo(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->init(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->removeCache(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public removeCacheInfo(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->removeCacheInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
