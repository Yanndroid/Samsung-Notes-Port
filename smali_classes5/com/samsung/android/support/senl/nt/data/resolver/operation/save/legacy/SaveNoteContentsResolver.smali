.class public Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_HW_GRID_HEIGHT_MAX:I = 0x3f5

.field private static final THUMBNAIL_HW_GRID_RATIO:F = 0.5f

.field private static final THUMBNAIL_HW_LIST_WIDTH:I = 0x5a0


# instance fields
.field private cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

.field private final mAppContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SaveNoteContentsResolver"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private insertContents(Ljava/lang/String;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/util/ArrayList;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;-><init>(Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;-><init>()V

    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getSearchData()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getSearchData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->setSearchData(Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-gt v9, p2, :cond_a

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    if-lez v9, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-direct {v0, v3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;-><init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V

    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v3

    if-eq v3, v1, :cond_8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {p0, p1, v9, v6}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->insertContentsVoice(Ljava/lang/String;ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1, v9, v6}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->insertContentsWeb(Ljava/lang/String;ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V

    goto :goto_3

    :cond_4
    if-eqz p5, :cond_5

    move-object v3, v6

    check-cast v3, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->removeHandwritingSearchData(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;)V

    :cond_5
    invoke-direct {p0, p1, v9, v6, p4}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->insertContentsHandWriting(Ljava/lang/String;ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    goto :goto_3

    :cond_6
    if-ne v9, p2, :cond_7

    move v8, v1

    goto :goto_1

    :cond_7
    move v8, v2

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move v5, v9

    move-object v7, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->insertContentsImage(Ljava/lang/String;ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;Z)V

    goto :goto_3

    :cond_8
    if-ne v9, p2, :cond_9

    move v3, v1

    goto :goto_2

    :cond_9
    move v3, v2

    :goto_2
    invoke-direct {p0, v6, v0, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->insertContentsText(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;Z)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->insertContentsEnd()V

    return-void
.end method

.method private insertContentsEnd()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v4, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subSequence, endIndex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    invoke-interface {v3, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    invoke-interface {v3, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    return-void
.end method

.method private insertContentsHandWriting(Ljava/lang/String;ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p4

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->strokeUuid:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string v2, "insertContents, stroke already added."

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object/from16 v2, p3

    check-cast v2, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getAttachedFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string v2, "insertContents, attachedFile is empty."

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getThumbnailPathList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertContents, thumbnailPathList size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getThumbnailPathList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getThumbnailPathList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v8, v7

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_3

    move-object v9, v6

    :cond_3
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "jpg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v8, v5

    goto :goto_1

    :cond_4
    move v8, v7

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string v4, "insertContents, getThumbnailPathList is empty, retry getThumbnailPath"

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void

    :cond_7
    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->createResultBitmap(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_8

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string v2, "insertContents, handwriting resultBitmap is null."

    goto/16 :goto_0

    :cond_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/16 v10, 0x5a0

    if-le v9, v10, :cond_9

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->resizeHwListBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "_l"

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/16 v10, 0x3f5

    if-le v9, v10, :cond_a

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->resizeHwGridBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "_g"

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const/16 v9, 0x300

    invoke-static {v4, v9}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->resizeBitmapFitingToScreen(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setBackgroundColor(I)V

    if-nez v8, :cond_c

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getBackgroundColor()I

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->isImageIncluded()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v12, v6

    goto :goto_2

    :cond_b
    invoke-virtual {v0, v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setBackgroundColor(I)V

    const-string v6, "d_"

    :cond_c
    move-object v12, v6

    move v5, v7

    :goto_2
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->strokeUuid:Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    iput v2, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->strokeRatio:F

    iget-object v8, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v10, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->strokeUuid:Ljava/lang/String;

    move-object v9, v14

    move v13, v5

    invoke-static/range {v8 .. v13}, Lcom/samsung/android/support/senl/nt/data/common/legacy/ProviderUtil;->createHWThumbnailFiles(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertContents, thumbnail: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", exist: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isImageIncluded : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v5, v5, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->strokeUuid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setUuid(Ljava/lang/String;)V

    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSdocUuid(Ljava/lang/String;)V

    move/from16 v5, p2

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSrcId(I)V

    const-string v5, "content/handwriting"

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMediaData(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/ProviderUtil;->filePathParser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setFilePath(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentContentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_d
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertContents, content uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->strokeUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string v3, "insertContents"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private insertContentsImage(Ljava/lang/String;ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;Z)V
    .locals 2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "content/drawing"

    goto :goto_0

    :cond_0
    const-string v0, "content/image"

    :goto_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskStyle()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    invoke-static {p3, p4, p5}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;->getDisplayText(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;Z)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->joinDisplayContent(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object p4, p4, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->contentUuid:Ljava/lang/String;

    if-eqz p4, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string p2, "insertContents, image already added."

    :goto_1
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getThumbnailPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string p2, "insertContents, image path is empty."

    goto :goto_1

    :cond_3
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {p4, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/ProviderUtil;->decodeSampledBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-nez p4, :cond_4

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string p2, "insertContents, image bitmap is null."

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p5, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->contentUuid:Ljava/lang/String;

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->contentUuid:Ljava/lang/String;

    invoke-static {p5, p4, v1}, Lcom/samsung/android/support/senl/nt/data/common/legacy/ProviderUtil;->createThumbnailFile(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-direct {p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->contentUuid:Ljava/lang/String;

    invoke-virtual {p5, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setUuid(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSdocUuid(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSrcId(I)V

    invoke-virtual {p5, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMediaData(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/ProviderUtil;->filePathParser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setFilePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentContentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string p3, "insertContents"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private insertContentsText(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->textContent:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;->getDisplayText(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->joinDisplayContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private insertContentsVoice(Ljava/lang/String;ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 3

    check-cast p3, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->getAttachedFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string p2, "insertContents, attached file is null."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->vrUuid:Ljava/lang/String;

    if-nez v2, :cond_1

    iput-object v0, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->vrUuid:Ljava/lang/String;

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSdocUuid(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSrcId(I)V

    const-string p1, "content/voice"

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "Voice"

    :goto_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->getPlayTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/VoiceTimeDataUtils;->convertPlayTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMediaData(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->getAttachedFile()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/legacy/ProviderUtil;->filePathParser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setFilePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentContentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)V

    return-void
.end method

.method private insertContentsWeb(Ljava/lang/String;ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->contentUuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string p2, "insertContents, web already added."

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getThumbnailPath()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string p2, "insertContents, web thumbnail path is null."

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/ProviderUtil;->decodeSampledBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string p2, "insertContents, bitmap is null."

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->contentUuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->contentUuid:Ljava/lang/String;

    invoke-static {v0, p3, v1}, Lcom/samsung/android/support/senl/nt/data/common/legacy/ProviderUtil;->createThumbnailFile(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->contentUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSdocUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setSrcId(I)V

    const-string p1, "content/web"

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;->setMediaData(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentContentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string p3, "updateContents"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private removeHandwritingSearchData(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->setActionLinkData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static resizeHwGridBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3fb47ae1    # 1.41f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizeHwGridBitmap, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static resizeHwListBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x5a0

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizeHwListBitmap, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public removeContents(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentContentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->deleteBySDocUuid(Ljava/lang/String;)V

    return-void
.end method

.method public updateContents(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;ZZ)V
    .locals 7
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getContentList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;->getContentsType(Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContents, cType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFirstContentType(Ljava/lang/Integer;)V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setSecondContentType(Ljava/lang/Integer;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p1

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->insertContents(Ljava/lang/String;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/util/ArrayList;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateContents, isCreateTitleAutomatically: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->textContent:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->trimMaxIndexContentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;->makeStrippedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->trimMaxContentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setContent(Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object p3, p3, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->displayContent:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayData;->setContent(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/DisplayDataHelper;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setDisplayContent([B)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setContentSecureVersion(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->contentUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setContentUuid(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->strokeUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setStrokeUuid(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget p2, p2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->strokeRatio:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setStrokeRatio(Ljava/lang/Float;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->cInfo:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver$ContainsContentsInfo;->vrUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setVrUuid(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/SaveNoteContentsResolver;->TAG:Ljava/lang/String;

    const-string p2, "contentData is empty."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
