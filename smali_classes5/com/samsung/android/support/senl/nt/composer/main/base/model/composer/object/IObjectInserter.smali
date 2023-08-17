.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract insertBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;FZ)Z
.end method

.method public abstract insertImage(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
.end method

.method public abstract insertObjectKeepPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;Z)V
.end method

.method public abstract insertPainting(Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;I)V
.end method

.method public abstract insertVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
.end method

.method public abstract isObjectSpan()Z
.end method

.method public abstract setHwMode(Z)V
.end method
