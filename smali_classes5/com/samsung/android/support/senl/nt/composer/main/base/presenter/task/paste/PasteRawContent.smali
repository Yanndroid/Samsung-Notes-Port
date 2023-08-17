.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$Construct;
    }
.end annotation


# static fields
.field private static final MAX_COUNT_AUDIO_FILE_TO_INSERT_AT_ONE_TIME:I = 0x1

.field private static final PASTE_BLOCK_SIZE:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCachePath:Ljava/lang/String;

.field private final mClipData:Landroid/content/ClipData;

.field private final mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            ">;"
        }
    .end annotation
.end field

.field private final mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;

.field private mDownloadObjMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnableWebCard:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mLastObjectList:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private final mPastePosition:Landroid/graphics/PointF;

.field private mPdfUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlainTextFlags:Z

.field private mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private final mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

.field private mTargetPageIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskPaste#PasteRawContent"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$Construct;Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;ILandroid/graphics/PointF;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mClipData:Landroid/content/ClipData;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    iput p9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mTargetPageIndex:I

    iput-object p10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPastePosition:Landroid/graphics/PointF;

    iput-object p11, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mCachePath:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mEnableWebCard:Z

    iput-object p13, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-object p14, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;

    iput-boolean p15, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPlainTextFlags:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    return-object p0
.end method

.method private addPdf()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    const-string v1, "addPdf#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$Construct;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$Construct;->addPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPdfUriList:Ljava/util/List;

    return-object p0
.end method

.method private checkDuplicateUriPath(Ljava/util/ArrayList;Landroid/net/Uri;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            "Landroid/net/Uri;",
            ">;>;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "content://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    if-eqz v6, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    return v2
.end method

.method private convertUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createContentFromHtml(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            "Landroid/net/Uri;",
            ">;>;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPlainTextFlags:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const-class v3, Landroid/text/style/ImageSpan;

    invoke-virtual {v0, v2, p2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ImageSpan;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_7

    array-length v3, p2

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;Landroid/text/SpannableStringBuilder;)V

    invoke-static {p2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/style/ImageSpan;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-le v4, v2, :cond_2

    invoke-direct {p0, p1, v0, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->createContentText(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;II)V

    :cond_2
    const/16 v2, 0x64

    if-le v2, p3, :cond_3

    invoke-virtual {v3}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v3}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->createContentImage(Landroid/net/Uri;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->checkDuplicateUriPath(Ljava/util/ArrayList;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/16 v2, 0x200

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    :cond_4
    :goto_2
    move v2, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-ge v2, p2, :cond_6

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->createContentText(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;II)V

    :cond_6
    return p3

    :cond_7
    :goto_3
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->createContentText(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;II)V

    return p3
.end method

.method private createContentImage(Landroid/net/Uri;Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    const-string v0, "content://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "data:audio/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "/storage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".*\\.(png|jpg|bmp|gif|jpeg|wbmp|PNG|JPG|GIF|BMP|JPEG|WBMP)"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    :cond_1
    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v1, v0, :cond_3

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;

    const-string v0, ""

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private createContentList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createContentList# clipData item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPdfUriList:Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_b

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v6, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->createContentFromHtml(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->skipWebUri()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r\n"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-direct {p0, v0, v7, v2, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->createContentText(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;II)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const/16 v7, 0x64

    if-lt v4, v7, :cond_3

    const/16 v6, 0x200

    :goto_1
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const/16 v6, 0x800

    goto :goto_1

    :cond_4
    const-string v8, "audio/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isPDFReader()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    const-string v7, "handlePastePage# PDFReader mode"

    invoke-static {v6, v7}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x8

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    if-lt v5, v7, :cond_6

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->createContentVoice(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    const-string v8, "application/pdf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->isValid(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_8

    const/16 v6, 0x100

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPdfUriList:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->convertUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->createContentImage(Landroid/net/Uri;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    invoke-direct {p0, v0, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->checkDuplicateUriPath(Ljava/util/ArrayList;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_3
    return-object v0
.end method

.method private createContentText(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            "Landroid/net/Uri;",
            ">;>;",
            "Landroid/text/SpannableStringBuilder;",
            "II)V"
        }
    .end annotation

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    if-ge p3, p4, :cond_2

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_0

    if-le v2, p4, :cond_1

    :cond_0
    add-int/lit8 v2, p4, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, p3, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move p3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-gtz v2, :cond_3

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPlainTextFlags:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const-class p3, Landroid/text/style/ImageSpan;

    invoke-virtual {v0, v4, p2, p3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ImageSpan;

    array-length p3, p2

    :goto_1
    if-ge v4, p3, :cond_4

    aget-object p4, p2, v4

    invoke-virtual {v0, p4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, p4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, p4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v5, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    return-void

    :cond_5
    new-instance p3, Landroid/util/Pair;

    new-instance p4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;

    invoke-direct {p4, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    const-class v1, Landroid/text/style/URLSpan;

    invoke-virtual {p2, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    if-eqz p2, :cond_7

    array-length p3, p2

    if-eqz p3, :cond_7

    aget-object p3, p2, v4

    invoke-virtual {p3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->isValidUrl(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    new-instance p3, Landroid/text/SpannableStringBuilder;

    aget-object p2, p2, v4

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_7

    move-object v0, p3

    :cond_7
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mEnableWebCard:Z

    if-eqz p2, :cond_8

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->handleTextForWebCard(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;)V

    goto :goto_2

    :cond_8
    new-instance p2, Landroid/util/Pair;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;

    invoke-direct {p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p2, p3, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private createContentVoice(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mCachePath:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object p0
.end method

.method private downloadData()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mDownloadObjMap:Ljava/util/Map;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mDownloadObjMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v2, v1, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->getDownloadCallableList([Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_7

    iget-boolean v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mIsReleased:Z

    if-eqz v6, :cond_4

    return-void

    :cond_4
    if-nez v3, :cond_5

    aget-object v6, v2, v5

    :goto_3
    invoke-direct {p0, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->removeContentInList(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;)V

    goto :goto_5

    :cond_5
    :try_start_1
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getError()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    aget-object v6, v2, v5

    invoke-direct {p0, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->removeContentInList(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;)V

    goto :goto_5

    :cond_6
    aget-object v6, v2, v5

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v6, v2, v5

    check-cast v6, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v6

    goto :goto_4

    :catch_2
    move-exception v6

    :goto_4
    sget-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloadData# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    aget-object v6, v2, v5

    goto :goto_3

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->checkAvailableStateToAdd(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_8

    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-lt v2, v1, :cond_9

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_9
    :goto_7
    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mTargetPageIndex:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mTargetPageIndex:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->downloadData()V

    return-void
.end method

.method private getDownloadCallableList([Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mIsReleased:Z

    if-eqz v4, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mCachePath:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->isShowWebPreviewsEnabled()Z

    move-result v7

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;)V

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/FileExtensions;->getImageExtension(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "paste"

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileExtensions;->getFileNameByTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mCachePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->setPath(Ljava/lang/String;)V

    const-string v5, "gif"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;)V

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadImageTask;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadImageTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->sendPasteMessage()V

    return-void
.end method

.method private handlePasteNextContent(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_PASTE_NEXT_CONTENT# index - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->pasteContents(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mLastObjectList:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;->release()V

    :cond_3
    :goto_1
    return-void
.end method

.method private handleTextForWebCard(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            "Landroid/net/Uri;",
            ">;>;",
            "Landroid/text/SpannableStringBuilder;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->getSubTextList(Landroid/text/SpannableStringBuilder;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->getData()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$SubText;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/Pair;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/util/Pair;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;

    invoke-direct {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Text;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handleWebCard()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->showOnlyFirstWebCardPreviewDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private hasWebCard()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isValidUrl(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private makeContentListFromClipData(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->createContentList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;->applyCoeditRestrictionToContent(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0x80

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mDownloadObjMap:Ljava/util/Map;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method

.method private pasteContents(I)V
    .locals 5

    add-int/lit16 v0, p1, 0x1f4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->verifyContents(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mTargetPageIndex:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPastePosition:Landroid/graphics/PointF;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->addContents(ILjava/util/List;Landroid/graphics/PointF;Z)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mLastObjectList:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x100

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private removeContentInList(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mDownloadObjMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private sendPasteMessage()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mIsReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPdfUriList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pastePdf-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPdfUriList:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pasteCont-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->addFileLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private skipWebUri()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "terrace-image-or-link-drag-label"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    const-string v1, "skipWebUri# clip data is dnd of internet."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private verifyContents(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    const-string v2, "VerifyContents# get content is null"

    :goto_1
    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VerifyContents# Content.Image.getPath is null or not exists. "

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VerifyContents# Content.Audio.getPath is null or not exists. "

    goto :goto_2

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 p1, 0x8

    if-eq v0, p1, :cond_1

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->handleWebCard()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->addPdf()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->handlePasteNextContent(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public readyContents()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mDownloadObjMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->makeContentListFromClipData(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->hasWebCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->isFirstCheckToShowWebPreviewsPopup()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->isShowWebPreviewsSettingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->downloadData()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;->removeUnsupportedChars(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->sendPasteMessage()V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mDownloadObjMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mDownloadObjMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mDownloadObjMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mContentList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPdfUriList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mPdfUriList:Ljava/util/List;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    return-void
.end method
