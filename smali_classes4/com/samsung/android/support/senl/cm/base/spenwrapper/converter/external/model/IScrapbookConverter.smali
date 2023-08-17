.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getMetaData(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;)Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IScrapbookConverter$ConverterParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
