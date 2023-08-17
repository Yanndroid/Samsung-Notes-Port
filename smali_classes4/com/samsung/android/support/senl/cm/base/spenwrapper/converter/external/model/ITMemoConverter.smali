.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ITMemoConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ITMemoConverter$ConverterParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ITMemoConverter$ConverterParams;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getMetaData(Ljava/lang/String;)Ljava/util/ArrayList;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation
.end method
