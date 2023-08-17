.class Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutViewFactory"
.end annotation


# instance fields
.field private final mAppWidgetId:I

.field private final mContext:Landroid/content/Context;

.field private final mFilePath:Ljava/lang/String;

.field private final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

    const-string p1, "appWidgetId"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    const-string v0, "note_uuid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    const-string v1, "note_file_path"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mFilePath:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutViewFactory# widget id "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , uuid : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WidgetImgShortcutService"

    invoke-static {p2, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addBitmap(Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->addWidgetContent(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private addEmptyBitmap(Landroid/widget/RemoteViews;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isDoneState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->addWidgetContent(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V

    const-string p1, "WidgetImgShortcutService"

    const-string v0, "addEmptyBitmap#"

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addWidgetContent(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V
    .locals 9

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getWidgetWidth(Landroid/content/Context;I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->dipToPixels(Landroid/content/Context;F)F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    const-string v2, "WidgetImgShortcutService"

    if-lez v1, :cond_1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, p2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addWidgetContent# size: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "addWidgetContent# createBitmap, the width or height of adjustedBitmap are <= 0"

    invoke-static {v2, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v3, 0x0

    :goto_1
    new-instance p2, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_shortcut_content:I

    invoke-direct {p2, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_img:I

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content_layout:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private createThumbnail(Landroid/widget/RemoteViews;Z)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->getBitmapList(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->addWidgetContent(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getThumbnailPath(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->addBitmap(Landroid/widget/RemoteViews;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->addEmptyBitmap(Landroid/widget/RemoteViews;)V

    :goto_0
    return-void
.end method

.method private getBitmapList(Z)Ljava/util/List;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isTextOnlyNote(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-static {v2, v4}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getWidgetWidth(Landroid/content/Context;I)F

    move-result v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->dipToPixels(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v5, v0, 0x2

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->captureTextOnlyBitmap(Landroid/content/Context;Ljava/lang/String;IIZZ)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getBitmapList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
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

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content_layout:I

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

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetImgShortcutService"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_item_loading:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getViewAt# start "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uuid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WidgetImgShortcutService"

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_shortcut_item:I

    invoke-direct {p1, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->init(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isValidFiles(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isCreateWidgetState(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content_layout:I

    invoke-virtual {p1, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    new-instance v1, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->hasBackgroundImage(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getPageColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result v1

    invoke-static {v3, v4, v2, v1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isWidgetBgDarkThemeColor(Landroid/content/Context;IZZ)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->createThumbnail(Landroid/widget/RemoteViews;Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->setFillIntent(Landroid/widget/RemoteViews;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewAt# end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mFilePath:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getViewAt# wait cache loading "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

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

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetImgShortcutService"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataSetChanged# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetImgShortcutService"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetImgShortcutService"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
