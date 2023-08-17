.class public Lcom/samsung/android/support/senl/nt/app/converter/task/sub/ExternalToSDocXConvertTask;
.super Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;)V
    .locals 0

    invoke-direct {p0, p1, p4, p5}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;-><init>(ILjava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;)V

    invoke-interface {p2, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;->convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    return-void
.end method


# virtual methods
.method public getTargetFileSize(Ljava/lang/String;)J
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
