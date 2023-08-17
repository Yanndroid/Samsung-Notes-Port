.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;
    }
.end annotation


# virtual methods
.method public abstract addTaskInfo(ILcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V
.end method

.method public abstract appendBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
.end method

.method public abstract appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end method

.method public abstract appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;)V
.end method

.method public abstract appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V
.end method

.method public abstract appendObjects(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/util/List;)V
    .param p3    # Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenPageDoc;",
            "Landroid/graphics/RectF;",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract appendTaskObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V
.end method

.method public abstract finish()V
.end method

.method public abstract getDPI()F
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLastTaskObjectType()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;
.end method

.method public abstract getLastTaskStyle()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;
.end method

.method public abstract getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getObjectMaxHeight()I
.end method

.method public abstract getObjectMaxWidth()I
.end method

.method public abstract getOldObjectMaxWidth()F
.end method

.method public abstract getWidth()I
.end method

.method public abstract isAddedTask(I)Z
.end method

.method public abstract setPageColor(I)V
.end method
