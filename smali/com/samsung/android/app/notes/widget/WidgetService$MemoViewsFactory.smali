.class Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/widget/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoViewsFactory"
.end annotation


# instance fields
.field private final mAppWidgetId:I

.field private final mContext:Landroid/content/Context;

.field private final mFilePath:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    const-string p1, "appWidgetId"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    const-string v0, "note_file_path"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mFilePath:Ljava/lang/String;

    const-string v0, "note_uuid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    const-string v1, "widget_title"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mTitle:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemoViewsFactory.constructor : widget id "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , uuid : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WidgetService"

    invoke-static {p2, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addPageDivider(ZZLcom/samsung/android/app/notes/widget/theme/ThemeInfo;Landroid/widget/RemoteViews;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_page_line:I

    invoke-direct {p1, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-boolean v0, p3, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget p3, p3, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTransparency:I

    const/16 v0, 0x64

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_page_stroke_dark_color:I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_page_stroke_color:I

    :goto_1
    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content:I

    invoke-virtual {p4, p3, p1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->background:I

    const-string p4, "setColorFilter"

    invoke-virtual {p1, p3, p4, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method private addTextOnlyWidget(Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;Z)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getWidgetWidth(Landroid/content/Context;I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->dipToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v5, v0

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    const/4 v7, 0x0

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->captureTextOnlyBitmap(Landroid/content/Context;Ljava/lang/String;IIZZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isListPageMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    move v9, v3

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/graphics/Bitmap;

    const-string v11, "addTextOnlyWidget"

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->addWidgetWithBitmap(Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;ZZLandroid/graphics/Bitmap;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    const-string p1, "WidgetService"

    const-string p2, "addTextOnlyWidget# textOnly fail capture"

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addWidget(Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;ZI)V
    .locals 13

    move-object v7, p0

    move/from16 v8, p3

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    iget-object v1, v7, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getBitmapList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    move/from16 v11, p4

    move v12, v10

    :goto_0
    if-ge v12, v11, :cond_5

    const/4 v0, 0x1

    if-nez v12, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isListPageMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    move v1, v10

    :goto_1
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v10

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_2

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    move v4, v0

    move-object v5, v1

    goto :goto_5

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v2

    iget-object v3, v7, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v12, v8}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getThumbnailPath(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getCacheThumbnailFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v3, v7, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isNextPage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move v0, v10

    :goto_4
    move v4, v0

    move-object v5, v2

    :goto_5
    const-string v6, "addWidget"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->addWidgetWithBitmap(Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;ZZLandroid/graphics/Bitmap;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private addWidgetContent(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_item_col_img:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->content_image:I

    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget p2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private addWidgetWithBitmap(Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;ZZLandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7

    const-string v0, "WidgetService"

    if-nez p5, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get bitmap fail :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float v1, v3

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "widget "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " low memory - load fail :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->addWidgetContent(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widgetOK "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4, p3, p2, p1}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->addPageDivider(ZZLcom/samsung/android/app/notes/widget/theme/ThemeInfo;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private createContent(Landroid/widget/RemoteViews;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WidgetService"

    if-eqz v0, :cond_0

    const-string p1, "createContent# file path is empty"

    invoke-static {v2, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createContent# file is not exist. path: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendUpdateAllWidgetBroadcast(Landroid/content/Context;)V

    return v1

    :cond_1
    new-instance v0, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getPageCount(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_2

    move v1, v3

    :cond_2
    sget v3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content:I

    invoke-virtual {p1, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getPageColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->hasBackgroundImage(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isWidgetBgDarkThemeColor(Landroid/content/Context;IZZ)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createContent#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isDarkMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", page: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isTextOnlyNote(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v0, v3}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->addTextOnlyWidget(Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v0, v3, v1}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->addWidget(Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;ZI)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getWidgetWidth(Landroid/content/Context;I)F

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->dipToPixels(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v4, v2, :cond_1

    const/high16 v4, 0x9600000

    if-le v3, v4, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v4, v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/HomeScreenUtils;->isCurrentCoverScreenMirroringDisplay(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "x"

    const-string v4, "WidgetService"

    if-nez v2, :cond_3

    if-gt v1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmapSize# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmapSize# resize "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getViewMoreRemoteView()Landroid/widget/RemoteViews;
    .locals 5

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_item_view_more_text:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getPageColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->hasBackgroundImage(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result v1

    invoke-static {v4, v2, v3, v1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isWidgetBgDarkThemeColor(Landroid/content/Context;IZZ)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->composer_main_background_dark:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_view_more_text_color_black_background:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_view_more_black_background:I

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_view_more_text_color_white_background:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_view_more_white_background:I

    :goto_2
    sget v3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->view_more:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string v1, "setBackgroundResource"

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-object v0
.end method

.method private setContentDescription(Landroid/widget/RemoteViews;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x2c

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->widget_shortcut_to_title_note:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mTitle:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->widget_shortcut_to_untitled_note:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->widget_shortcut_open_note:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private setFillIntent(Landroid/widget/RemoteViews;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLoadingView# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetService"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_item_loading:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getViewAt# start "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , uuid : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WidgetService"

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_item:I

    invoke-direct {p1, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getViewAt# fail to init Spen"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->init(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isValidFiles(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isCreateWidgetState(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->createContent(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance p1, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_empty_view:I

    invoke-direct {p1, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_empty_cover:I

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewAt# end failed to create content, WidgetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->setFillIntent(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->setContentDescription(Landroid/widget/RemoteViews;)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getPageCount(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content:I

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->getViewMoreRemoteView()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewAt# end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mFilePath:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getViewAt# wait cache loading, WidgetId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetService"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataSetChanged# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetService"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetService"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
