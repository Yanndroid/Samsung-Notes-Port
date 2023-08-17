.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISNBConverter;
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISNBConverter$ConverterParams;",
        ">;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISNBConverter;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;"
    }
.end annotation


# static fields
.field public static final ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "SNBToSDocXConverterWrapper"


# instance fields
.field private mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

.field private mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

.field private mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;

.field private mSNBConverter:Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSNBConverter(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mSNBConverter:Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    return-void
.end method

.method private postProcess(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SNBToSDocXConverterWrapper"

    const-string v0, "can\'t delete spd file!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->closeSpenNoteDoc()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "SNBToSDocXConverterWrapper"

    const-string v1, "requested cancel!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    move-result-object p1

    return-object p1
.end method

.method public convert(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 4
    .param p3    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->verifySourcePath(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SNBToSDocXConverterWrapper"

    if-nez v0, :cond_0

    const-string p1, "verifySourcePath false"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mSNBConverter:Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->mPassWord:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->convertToSpdFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;

    invoke-direct {v2, p1, v0, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : is not a spd file"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->mPassWord:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->createSpenNoteDoc(Ljava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "can\'t create spd file!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/ResourceGetter;

    invoke-virtual {p2, p1, v1, p3, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->convert(Landroid/content/Context;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->postProcess(Ljava/lang/String;)V

    return-void
.end method

.method public getResultType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getStatus(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mSNBConverter:Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->isLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper;->getStatus(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public isAlreadyConverted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mSNBConverter:Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->isAlreadyConverted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISNBConverter$ConverterParams;

    move-result-object p1

    return-object p1
.end method

.method public makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISNBConverter$ConverterParams;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISNBConverter$ConverterParams;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISNBConverter$ConverterParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->setFilePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISNBConverter$ConverterParams;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->setPassword(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISNBConverter$ConverterParams;

    return-object p1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->release()V

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mNoteDocManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/SNBToSDocXConverterWrapper;->mSNBConverter:Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    return-void
.end method

.method public verifySourcePath(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/AbsSDocXConverterWrapper;->verifySourcePath(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
