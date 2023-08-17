.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/WrappingConverter;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IWrappingConverter$ConverterParams;",
        ">;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "SENL$WrappingConverter"

    const-string v1, "requested cancel!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IWrappingConverter$ConverterParams;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/WrappingConverter;->convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IWrappingConverter$ConverterParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IWrappingConverter$ConverterParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IWrappingConverter$ConverterParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public convert(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1
    .param p3    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setText(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/cm/base/common/constants/Constants$SNote;->WNOTE_LOCKED_FILE_KEY:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->attachFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/WrappingConverter;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IWrappingConverter$ConverterParams;

    move-result-object p1

    return-object p1
.end method

.method public makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IWrappingConverter$ConverterParams;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IWrappingConverter$ConverterParams;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IWrappingConverter$ConverterParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->setFilePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IWrappingConverter$ConverterParams;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->setPassword(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IWrappingConverter$ConverterParams;

    return-object p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
