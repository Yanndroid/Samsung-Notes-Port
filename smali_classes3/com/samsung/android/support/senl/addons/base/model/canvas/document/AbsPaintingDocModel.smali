.class public abstract Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;,
        Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel<",
        "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0008\u000e\u0008&\u0018\u0000 -2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002-.B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0013\u001a\u00020\u0011H\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0016J\u0017\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016\u00a2\u0006\u0002\u0010\u001aJ\n\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016J\u0008\u0010\u001d\u001a\u00020\u0019H\u0016J\u0008\u0010\u001e\u001a\u00020\u0019H\u0016J\u0008\u0010\u001f\u001a\u00020\u0019H\u0016J\u0017\u0010 \u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010!H\u0016\u00a2\u0006\u0002\u0010\"J\u0017\u0010#\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010!H\u0016\u00a2\u0006\u0002\u0010\"J\u0008\u0010$\u001a\u00020\u0011H\u0016J\u0008\u0010%\u001a\u00020\u0011H\u0002J\u0008\u0010&\u001a\u00020\u0011H\u0002J\u0010\u0010\'\u001a\u00020\u00112\u0008\u0010(\u001a\u0004\u0018\u00010\rJ\u0010\u0010)\u001a\u00020\u00112\u0008\u0010*\u001a\u0004\u0018\u00010\u000fJ\u0017\u0010+\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010!H\u0016\u00a2\u0006\u0002\u0010\"J\u0017\u0010,\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010!H\u0016\u00a2\u0006\u0002\u0010\"R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;",
        "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;",
        "()V",
        "drawnRectOfAllObject",
        "Landroid/graphics/RectF;",
        "getDrawnRectOfAllObject",
        "()Landroid/graphics/RectF;",
        "foregroundImagePath",
        "",
        "getForegroundImagePath",
        "()Ljava/lang/String;",
        "mListener",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;",
        "mPaintingDoc",
        "Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;",
        "clearAll",
        "",
        "close",
        "discard",
        "getDocumentFilePath",
        "getHeight",
        "",
        "getObjectCount",
        "b",
        "",
        "(Z)Ljava/lang/Integer;",
        "getPaintingDoc",
        "getWidth",
        "isRedoable",
        "isUndoable",
        "isValidDoc",
        "redo",
        "",
        "()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;",
        "redoAll",
        "release",
        "releaseListeners",
        "setDocListener",
        "setDocModelListener",
        "listener",
        "setDocument",
        "paintingDoc",
        "undo",
        "undoAll",
        "Companion",
        "IDocModelListener",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->Companion:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$Companion;

    const-string v0, "AbsPaintingDocModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final releaseListeners()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->deregisterObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ObjectListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->deregisterHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryListener;)V

    :cond_1
    return-void
.end method

.method private final setDocListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->registerObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ObjectListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->registerHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->removeAllObject()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->releaseListeners()V

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closePaintingDoc - close : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error @ closePaintingDoc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    goto :goto_2

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    throw v0

    :cond_0
    :goto_2
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;

    return-void
.end method

.method public discard()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discard Painting Doc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->releaseListeners()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->discard()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error @ discarding Painting Doc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    goto :goto_2

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public getDocumentFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawnRectOfAllObject()Landroid/graphics/RectF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getDrawnRectOfAllObject()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getForegroundImagePath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getForegroundImagePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getObjectCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getObjectCount(Z)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getObjectCount(Z)Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getObjectCount(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRedoable()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->isRedoable()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can redo? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->isRedoable()Z

    move-result v0

    return v0
.end method

.method public isUndoable()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->isUndoable()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can undo? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isValidDoc()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public redo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->redo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic redo()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->redo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic redoAll()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->releaseListeners()V

    return-void
.end method

.method public final setDocModelListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel$IDocModelListener;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->setDocListener()V

    return-void
.end method

.method public final setDocument(Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->clearHistory()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->setUndoLimit(I)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set document(PaintingDoc) : size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public undo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->undo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic undo()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->undo()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->mPaintingDoc:Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic undoAll()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$HistoryUpdateInfo;

    move-result-object v0

    return-object v0
.end method
