.class public Lcom/samsung/android/support/senl/nt/model/mining/text/sdoc/SdocTextParser;
.super Lcom/samsung/android/support/senl/nt/model/mining/text/common/TextContentParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/model/mining/text/common/TextContentParser<",
        "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SdocTextParser"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/mining/text/common/TextContentParser;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public close(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close, e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdocTextParser"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/mining/text/sdoc/SdocTextParser;->close(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)V

    return-void
.end method

.method public open(Ljava/lang/String;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/mining/text/common/TextContentParser;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v2

    const/16 v3, 0x1b58

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->use(ILjava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v0, v0, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSpenSDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic open(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/mining/text/sdoc/SdocTextParser;->open(Ljava/lang/String;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getContentList()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x7530

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/mining/text/sdoc/SdocTextParser;->parse(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
