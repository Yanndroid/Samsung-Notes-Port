.class public Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;
.super Lcom/samsung/android/support/senl/addons/base/model/save/AbsSaveModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/common/ISavableModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$Companion;,
        Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/addons/base/model/save/AbsSaveModel<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/ISavableModel;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 <2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u0003:\u0002<=B\u0017\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0002H\u0002J\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\u001d\u001a\u00020\u0002H\u0016J\u0008\u0010\u001e\u001a\u00020\u0016H\u0016J\u0008\u0010\u001f\u001a\u00020\u0016H\u0002J\u0010\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\"H\u0016J\u0008\u0010%\u001a\u00020\u0016H\u0016J\u0008\u0010&\u001a\u00020\u0016H\u0002J\u0012\u0010\'\u001a\u00020\u00162\u0008\u0010(\u001a\u0004\u0018\u00010\u000cH\u0002J\u0008\u0010)\u001a\u00020\u0016H\u0002J%\u0010)\u001a\u00020\u00162\u0016\u0010*\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00020+\"\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0002\u0010,J%\u0010-\u001a\u00020\u00162\u0016\u0010*\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00020+\"\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0002\u0010,J\u0010\u0010-\u001a\u00020\u00162\u0006\u0010.\u001a\u00020\u0002H\u0002J:\u0010/\u001a\u00020\u00162\u0008\u00100\u001a\u0004\u0018\u00010\u000c2\u0008\u00101\u001a\u0004\u0018\u00010\u000c2\u0008\u00102\u001a\u0004\u0018\u00010\u000c2\u0008\u00103\u001a\u0004\u0018\u00010\u000c2\u0008\u00104\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u00105\u001a\u00020\u00162\u0008\u00106\u001a\u0004\u0018\u00010\u0012J\u0016\u00107\u001a\u00020\u00162\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u000209J\u0006\u0010;\u001a\u00020\u0002R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/save/AbsSaveModel;",
        "",
        "Lcom/samsung/android/support/senl/addons/base/model/common/ISavableModel;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;",
        "restored",
        "(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;Z)V",
        "mBrushFacade",
        "mExecutor",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;",
        "mInputPaintingDocPath",
        "",
        "mInputThumbnailPath",
        "mInternalPath",
        "mOutputPaintingDocPath",
        "mOutputThumbnailPath",
        "mProcessListener",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;",
        "mSaveFileCallback",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;",
        "close",
        "",
        "finishSave",
        "isSaved",
        "getInputPaintingDocPath",
        "getInputThumbnailPath",
        "getOutputPaintingDocPath",
        "getOutputThumbnailPath",
        "isPaintingDocChanged",
        "joinSave",
        "onLoadFinished",
        "onLoadFromInstanceState",
        "inState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "outState",
        "quitSave",
        "removeContent",
        "removeLocalFiles",
        "path",
        "saveAsync",
        "params",
        "",
        "([Ljava/lang/Boolean;)V",
        "saveSync",
        "runThread",
        "setPathInfo",
        "inPaintingDocPath",
        "inThumbnailPath",
        "outPaintingDocPath",
        "outThumbnailPath",
        "internalPath",
        "setProcessListener",
        "listener",
        "setThumbnailMargin",
        "horizontal",
        "",
        "vertical",
        "updateDocumentWithoutSaving",
        "Companion",
        "IOnProcessListener",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mInputPaintingDocPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mInputThumbnailPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mInternalPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOutputPaintingDocPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOutputThumbnailPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mProcessListener:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mSaveFileCallback:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$Companion;

    const-string v0, "BrushSaveModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;Z)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/save/AbsSaveModel;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$mSaveFileCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$mSaveFileCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mSaveFileCallback:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->setSaveFileCallback(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;)V

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputPaintingDocPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputThumbnailPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputPaintingDocPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->setFilePath(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputPaintingDocPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->createDocument(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final synthetic access$getMBrushFacade$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;)Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    return-object p0
.end method

.method public static final synthetic access$getMInternalPath$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInternalPath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMOutputPaintingDocPath$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputPaintingDocPath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMOutputThumbnailPath$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputThumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setMProcessListener$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mProcessListener:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;

    return-void
.end method

.method private final finishSave(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/save/AbsSaveModel;->onCompleteAllProcess(Z)V

    return-void
.end method

.method private final onLoadFinished()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInternalPath:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->TAG:Ljava/lang/String;

    const-string v1, "onLoadFinished : SDoc is null!!! or other process is loaded"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->finishSave(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputPaintingDocPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputThumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->setFilePath(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputPaintingDocPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->createDocument(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mProcessListener:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;->onDocumentLoaded()V

    :cond_3
    return-void
.end method

.method private final removeContent()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->setPaintDocForegroundImage()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputThumbnailPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->removeLocalFiles(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputPaintingDocPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->removeLocalFiles(Ljava/lang/String;)V

    return-void
.end method

.method private final removeLocalFiles(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove local temp file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isDeleted "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final saveAsync()V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAsync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->isOnSaving()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->isOnSaving()Z

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, "saveDrawingAsync - finish : already saving..."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->commitStroke()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveDrawingAsync >> isChanged? = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->isChanged()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveDrawingAsync >> object count = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getObjectCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->isAvailableMemoryForNewDocument()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDrawingAsync >> Not enough storage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->isChanged()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/addons/R$string;->base_string_not_enough_space_in_device_storage_desc:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/util/BrushToastHandler;->showLong(I)V

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->finishSave(Z)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->isPaintingDocChanged()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "saveDrawingAsync >> not changed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->finishSave(Z)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/samsung/android/support/senl/addons/R$string;->brush_string_no_save:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;->showLong(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setDiscardDoc(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->removeContent()V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->finishSave(Z)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setDiscardDoc(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    invoke-static {v0, v2, v4, v1, v3}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->saveTaskExecutor$default(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;ZZILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private final saveSync(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSync, withSaveTemp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->commitStroke()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->isPaintingDocChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->isOnSaving()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->saveTaskExecutor(ZZ)V

    const-string p1, "saveDrawingSync, save current image: done"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->removeContent()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->isDiscardDoc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->discardDoc()V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/save/AbsSaveModel;->close()V

    return-void
.end method

.method public final getInputPaintingDocPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputPaintingDocPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputThumbnailPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputPaintingDocPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputPaintingDocPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputThumbnailPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public isPaintingDocChanged()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->isChanged()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPaintingDocChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public joinSave()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->joinSave()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->TAG:Ljava/lang/String;

    const-string v2, "join save, restart save on main thread"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->quitSave()V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->saveSync(Z)V

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->TAG:Ljava/lang/String;

    const-string v1, "join save, completed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFromInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "inState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brush_input_painting_doc_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputPaintingDocPath:Ljava/lang/String;

    const-string v0, "brush_input_thumbnail_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputThumbnailPath:Ljava/lang/String;

    const-string v0, "brush_output_painting_doc_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputPaintingDocPath:Ljava/lang/String;

    const-string v0, "brush_output_thumbnail_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputThumbnailPath:Ljava/lang/String;

    const-string v0, "internal_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInternalPath:Ljava/lang/String;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputPaintingDocPath:Ljava/lang/String;

    const-string v1, "brush_input_painting_doc_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputThumbnailPath:Ljava/lang/String;

    const-string v1, "brush_input_thumbnail_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputPaintingDocPath:Ljava/lang/String;

    const-string v1, "brush_output_painting_doc_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputThumbnailPath:Ljava/lang/String;

    const-string v1, "brush_output_thumbnail_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInternalPath:Ljava/lang/String;

    const-string v1, "internal_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public quitSave()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->quitSave()V

    :cond_0
    return-void
.end method

.method public varargs saveAsync([Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # [Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mProcessListener:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;->onStartSave()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->isDocLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->saveAsync()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->finishSave(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic saveAsync([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->saveAsync([Ljava/lang/Boolean;)V

    return-void
.end method

.method public varargs saveSync([Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # [Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->isDocLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->saveSync(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic saveSync([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->saveSync([Ljava/lang/Boolean;)V

    return-void
.end method

.method public setPathInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputPaintingDocPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputThumbnailPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInternalPath:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, ""

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInternalPath:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->getBrushFileExtension()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, p5}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->getFileNameByTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputPaintingDocPath:Ljava/lang/String;

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInternalPath:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->getThumbnailExtension()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->getFileNameByTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputThumbnailPath:Ljava/lang/String;

    :cond_1
    iput-object p3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputPaintingDocPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputThumbnailPath:Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setPathInfo. input doc:  + "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputPaintingDocPath:Ljava/lang/String;

    invoke-static {p3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " + , thumbnail:  + "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInputThumbnailPath:Ljava/lang/String;

    invoke-static {p4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " + , save:  + "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mInternalPath:Ljava/lang/String;

    invoke-static {p4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setPathInfo. output doc:  + "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputPaintingDocPath:Ljava/lang/String;

    invoke-static {p4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mOutputThumbnailPath:Ljava/lang/String;

    invoke-static {p3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->onLoadFinished()V

    return-void
.end method

.method public final setProcessListener(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/save/AbsSaveModel;->setOnProcessListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/ISDocSaveModel$OnProcessListener;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mProcessListener:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;

    return-void
.end method

.method public final setThumbnailMargin(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->setThumbnailMargin(II)V

    return-void
.end method

.method public final updateDocumentWithoutSaving()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->mExecutor:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->setPaintDocForegroundImage()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
