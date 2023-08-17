.class public interface abstract Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$PaintingLayerEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PaintingLayerEventListener"
.end annotation


# static fields
.field public static final TYPE_COMMIT:I = 0x0

.field public static final TYPE_REDO:I = 0x2

.field public static final TYPE_REMOVE:I = 0x3

.field public static final TYPE_SUBMIT:I = 0x4

.field public static final TYPE_UNDO:I = 0x1


# virtual methods
.method public abstract onLayerChanged(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/changedInfo/SpenLayerChangedInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onLayerIndexMoved(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onLayerInserted(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onLayerRemoved(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method
