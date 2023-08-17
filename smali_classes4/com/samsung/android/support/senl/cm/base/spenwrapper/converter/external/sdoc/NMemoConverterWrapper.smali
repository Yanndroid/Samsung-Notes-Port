.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/NMemoConverterWrapper;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;",
        ">;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NMemoConverterWrapper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConverter:Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsConverterWrapper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/NMemoConverterWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeNMemoConverter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/NMemoConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;

    return-void
.end method


# virtual methods
.method public convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;
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

    const-string v1, "NMemoConverterWrapper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/NMemoConverterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;->convertToSDocFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed converting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/NMemoConverterWrapper;->convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    move-result-object p1

    return-object p1
.end method

.method public getMemoMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/NMemoConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;->getMemoMetaData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;
    .locals 0

    new-instance p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;-><init>()V

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/AbsPathConvertParams;->setFilePath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;

    return-object p1
.end method

.method public bridge synthetic makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/NMemoConverterWrapper;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdoc/NMemoConverterWrapper;->mConverter:Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;

    return-void
.end method
