.class public interface abstract Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ObjectListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ObjectListener"
.end annotation


# static fields
.field public static final TYPE_REDO:I = 0x2

.field public static final TYPE_SET:I = 0x0

.field public static final TYPE_UNDO:I = 0x1


# virtual methods
.method public abstract onObjectAdded(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onObjectChanged(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;I)V
.end method

.method public abstract onObjectRemoved(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation
.end method
