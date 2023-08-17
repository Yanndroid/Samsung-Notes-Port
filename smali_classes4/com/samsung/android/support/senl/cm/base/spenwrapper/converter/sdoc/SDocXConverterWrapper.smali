.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;


# static fields
.field private static final TAG:Ljava/lang/String; = "SDocXConverterWrapper"


# instance fields
.field private mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/SDocXConverter;

.field private mDocCreator:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;

.field private mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/ResourceGetter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mDocCreator:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/SDocXConverter;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/SDocXConverter;-><init>(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/SDocXConverter;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/ResourceGetter;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/ResourceGetter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/ResourceGetter;

    return-void
.end method

.method private hasOldLockedNote(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/common/util/LockFileUtils;->getLockTypeFromSdoc(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

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

.method private postProcess(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SDocXConverterWrapper"

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/common/constants/Constants$SNote;->WNOTE_LOCKED_FILE_KEY:Ljava/lang/String;

    sget v2, Lcom/samsung/android/support/senl/cm/base/common/constants/Constants$SNote;->SDOC_LOCKED_FILE_KEY:I

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getBoundFilePath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->attachFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postProcess, fail to attach a file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postProcess, fail to close Sdoc : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "SDocXConverterWrapper"

    const-string v1, "requested cancel!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public convert(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 3
    .param p3    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mDocCreator:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;->createSDoc(Ljava/lang/String;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SDocXConverterWrapper"

    const-string p2, "can\'t create s doc!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->hasOldLockedNote(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->convert(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->isLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mDocCreator:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;->unlockSdoc(Ljava/lang/String;)Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/SDocXConverter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/ResourceGetter;

    invoke-virtual {v1, v0, p3, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/SDocXConverter;->convert(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mDocCreator:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;->lockSdoc(Ljava/lang/String;)Z

    :cond_3
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->postProcess(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method public convert(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2
    .param p2    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, "SDocXConverterWrapper"

    const-string p2, "can\'t create s doc!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/SDocXConverter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/ResourceGetter;

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/SDocXConverter;->convert(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->postProcess(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/SDocXConverter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/SDocXConverter;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/SDocXConverter;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->mDocCreator:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;

    return-void
.end method
