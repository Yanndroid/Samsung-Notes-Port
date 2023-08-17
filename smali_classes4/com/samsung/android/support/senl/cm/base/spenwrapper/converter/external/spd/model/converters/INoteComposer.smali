.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/INoteComposer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end method

.method public abstract appendObjects(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract appendPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end method

.method public abstract getBackgroundColorPage()I
.end method

.method public abstract getCachePath()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getObjectList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end method

.method public abstract getPageWidth()I
.end method

.method public abstract getWNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getWidth()I
.end method

.method public abstract release()V
.end method

.method public abstract removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end method

.method public abstract setBackgroundForPage(ILjava/lang/String;I)V
.end method

.method public abstract setBodyTextFontSizeDelta()V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract transferObject(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
.end method
