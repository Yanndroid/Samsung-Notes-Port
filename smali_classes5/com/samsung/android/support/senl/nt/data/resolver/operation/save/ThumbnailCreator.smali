.class public Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;
    }
.end annotation


# static fields
.field private static final MIN_THUMBNAIL_HEIGHT:F = 200.0f

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_COMPRESS_QUALITY:I = 0x5a


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ThumbnailCreator"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->hasTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private deleteAttachedImageFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mainlist"

    invoke-static {p1, p2, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->getCacheDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "image"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private hasTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundImage()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private hasTextWithObjectSpan(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->TAG:Ljava/lang/String;

    const-string p2, "hasTextWithObjectSpan# body text is null, false"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasTextWithObjectSpan# start, pageMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    const/4 v4, 0x1

    const/16 v5, 0x12c

    if-ne v0, v3, :cond_2

    :cond_1
    invoke-virtual {p1, v2, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findObjectSpan(II)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionStart(I)I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionLength(I)I

    move-result p2

    if-ltz v0, :cond_1

    add-int/2addr p2, v0

    sub-int/2addr p2, v4

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findObjectSpan(II)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v4

    :cond_4
    :goto_1
    const-string p1, "hasTextWithObjectSpan# objectSpanList isEmpty, false"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static sendForceUpdateBroadcast(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendForceUpdateBroadcast, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.notes.memolist.ACTION_FORCE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdoc_uuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "doc_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public saveThumbnail(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->TAG:Ljava/lang/String;

    const-string v1, "saveThumbnail - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "saveThumbnail# empty, index = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->measureTextToPage(I)V

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getMeasuredFitRect(I)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getDrawnRectOfAllObject()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->hasTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    move-object v0, v7

    goto :goto_0

    :cond_1
    move-object v7, v0

    move v6, v5

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->close()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveThumbnail# index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->deleteAttachedImageFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveThumbnail, deleteAttachedImageFile failed - e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_1
    invoke-direct {p0, p2, v6}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->hasTextWithObjectSpan(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z

    move-result v8

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;-><init>(Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;ILandroid/graphics/RectF;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->run()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p1, p3, v0}, Lcom/samsung/android/support/senl/nt/data/common/utils/MainListThumbnailUtils;->removePreviousThumbnailFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/data/common/utils/MainListThumbnailUtils;->removePreviousThumbnailFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveThumbnail, PageThumbnailSaver failed - e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->TAG:Ljava/lang/String;

    const-string v1, "saveThumbnail - end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_4
    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/data/common/utils/MainListThumbnailUtils;->removePreviousThumbnailFile(Landroid/content/Context;Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_5
    const-string v1, "saveThumbnail# fail - page count 0"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
