.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/SPDConverterWrapper;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;",
        ">;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SPDConverterWrapper"


# instance fields
.field private mConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSPDConverter(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/SPDConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/SPDConverterWrapper;->convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .locals 5
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convert filePath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPDConverterWrapper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/SPDConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->convertToSDocFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;-><init>(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed converting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLastModifiedTime(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/SPDConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/SPDConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->isLocked(Ljava/lang/String;)Z

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/SPDConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->isAlreadyConverted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/SPDConverterWrapper;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;

    move-result-object p1

    return-object p1
.end method

.method public makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->setFilePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->setPassword(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISPDConverter$ConverterParams;

    return-object p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/SPDConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    return-void
.end method
