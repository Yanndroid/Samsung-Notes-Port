.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertStatus;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertStatus;"
    }
.end annotation


# virtual methods
.method public abstract convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;"
        }
    .end annotation
.end method

.method public abstract getResultType()I
.end method

.method public abstract getStatus(Ljava/lang/String;)I
.end method

.method public abstract makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract release()V
.end method
