.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ImageTypeCopy;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectSpanConverter"
.end annotation


# instance fields
.field public mMimeType:[Ljava/lang/String;

.field public mThumbnailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ImageTypeCopy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "text/html"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->mMimeType:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->mThumbnailUri:Landroid/net/Uri;

    return-void
.end method

.method private convert(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;Landroid/text/SpannableStringBuilder;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_3

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->replaceObjectSpanChar(Landroid/text/SpannableStringBuilder;ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ImageTypeCopy;->saveAsImage(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const-string v4, " "

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result v2

    invoke-virtual {p2, v4, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    :cond_5
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/framework/provider/ClipDataContentProvider;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ImageTypeCopy;->context:Landroid/content/Context;

    invoke-direct {v2, v4, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    invoke-direct {p0, p2, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->replaceObjectSpanChar(Landroid/text/SpannableStringBuilder;ILjava/lang/CharSequence;)V

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->mThumbnailUri:Landroid/net/Uri;

    if-nez p1, :cond_6

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->mThumbnailUri:Landroid/net/Uri;

    :cond_6
    :goto_1
    return-void
.end method

.method private replaceObjectSpanChar(Landroid/text/SpannableStringBuilder;ILjava/lang/CharSequence;)V
    .locals 1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2, v0, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method


# virtual methods
.method public convert(Ljava/util/List;Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/SpannableStringBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->convert(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->mThumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ImageTypeCopy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->mThumbnailUri:Landroid/net/Uri;

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "text/html"

    aput-object p2, v0, p1

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->mMimeType:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public getMimeType()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->mMimeType:[Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ObjectSpanConverter;->mThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method
