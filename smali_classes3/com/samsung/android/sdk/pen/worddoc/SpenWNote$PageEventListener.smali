.class public interface abstract Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PageEventListener"
.end annotation


# static fields
.field public static final TYPE_COMMIT:I = 0x0

.field public static final TYPE_REDO:I = 0x2

.field public static final TYPE_REMOVE:I = 0x3

.field public static final TYPE_SUBMIT:I = 0x4

.field public static final TYPE_UNDO:I = 0x1


# virtual methods
.method public abstract onPageChanged(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/changedInfo/SpenPageChangedInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onPageIndexMoved(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
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

.method public abstract onPageInserted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onPageRemoved(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;I)V"
        }
    .end annotation
.end method
