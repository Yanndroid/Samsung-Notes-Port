.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ISpenDocCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createCapturePage(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;
.end method

.method public abstract createPaintingDoc(IILjava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract createSDoc(Ljava/lang/String;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
