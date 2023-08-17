.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectSpanConverterImpl"
.end annotation


# instance fields
.field private cacheHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

.field private context:Landroid/content/Context;

.field private handleImage:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;

.field private handleLinkCard:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleLinkCard;

.field private handleResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

.field private handleVoice:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;

.field private handleWebCard:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleWebCard;

.field private isLocked:Z

.field private uriHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->context:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->cacheHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->cacheHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->uriHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->isLocked:Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleImage:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->uriHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleVoice:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleWebCard;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleWebCard;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleWebCard:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleWebCard;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleLinkCard;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleLinkCard;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleLinkCard:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleLinkCard;

    return-void
.end method

.method private convert(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;Landroid/text/SpannableStringBuilder;)V
    .locals 12

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    const/16 v3, 0xe

    if-eq v1, v3, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "convert# unexpected object type"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleWebCard:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleWebCard;

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleWebCard;->handleWeb(Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->replaceObjectSpanChar(Landroid/text/SpannableStringBuilder;ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->typeList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleLinkCard:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleLinkCard;

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleLinkCard;->handleLink(Lcom/samsung/android/sdk/pen/document/SpenObjectLink;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleVoice:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->contentUris:Ljava/util/ArrayList;

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    iget-boolean v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->isLocked:Z

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;->handleVoiceContent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->replaceObjectSpanChar(Landroid/text/SpannableStringBuilder;ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->typeList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->cacheHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->isLocked:Z

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;->getContextShareDir(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleImage:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->saveAsImage(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convert# ImageContent, path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->uriHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->context:Landroid/content/Context;

    iget-boolean v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mUseFileProvider:Z

    const-string v5, "image/*"

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getUserId(I)I

    move-result v11

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleImage:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    iget-object v8, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->contentUris:Ljava/util/ArrayList;

    const-string v10, ""

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->handleImageType(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->replaceObjectSpanChar(Landroid/text/SpannableStringBuilder;ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->handleResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$HandleResult;->typeList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    :cond_6
    :goto_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "convert# failed to saveAsImage"

    goto :goto_4

    :cond_7
    :goto_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "convert# failed to getPathForShare"

    :goto_4
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
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
    .locals 2
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

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareSelectedItems$ObjectSpanConverterImpl;->convert(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
