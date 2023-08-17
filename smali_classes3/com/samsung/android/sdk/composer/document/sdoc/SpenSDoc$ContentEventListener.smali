.class public interface abstract Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ContentEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentEventListener"
.end annotation


# static fields
.field public static final CHANGED_CONTENT:I = 0x0

.field public static final CHANGED_SPAN:I = 0x3

.field public static final CHANGED_TASK:I = 0x1

.field public static final CHANGED_TEXT:I = 0x2

.field public static final TYPE_REDO:I = 0x2

.field public static final TYPE_SET:I = 0x0

.field public static final TYPE_UNDO:I = 0x1


# virtual methods
.method public abstract onContentAdded(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onContentChanged(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$UpdateInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onContentRemoved(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onThumbnailAddable(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;ZI)V
.end method
