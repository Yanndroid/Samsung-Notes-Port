.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObjectSpanConverterImpl"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private baseName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private count:I

.field private dropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "TaskCreationDropContent$ImageTypeCopy"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->count:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->baseName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->dropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    return-void
.end method

.method private convert(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;Landroid/text/SpannableStringBuilder;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    const-string v3, "\n"

    if-eq v1, v2, :cond_2

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_4

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getUri()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->replaceObjectSpanChar(Landroid/text/SpannableStringBuilder;ILjava/lang/CharSequence;)V

    goto/16 :goto_1

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
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->baseName:Ljava/lang/String;

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-static {v1, v2, v4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->dropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->baseName:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardCacheManager;->getClipboardFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;-><init>()V

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->count:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleImage;->saveAsImage(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result v2

    const-string v3, " "

    invoke-virtual {p2, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    :cond_6
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/framework/provider/ClipDataContentProvider;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/text/SpannableString;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->dropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    invoke-direct {p0, p2, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->replaceObjectSpanChar(Landroid/text/SpannableStringBuilder;ILjava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->TAG:Ljava/lang/String;

    const-string p2, "convertTextToDropContent# ImageContent, path is invalid"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ObjectSpanConverterImpl;->convert(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
