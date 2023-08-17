.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter<",
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/INMemoConverter$ConverterParams;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getMemoMetaData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation
.end method
