.class public Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$Companion;,
        Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;,
        Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$SyncSaveThread;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0011\u0008\u0016\u0018\u0000 52\u00020\u0001:\u0003567B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001f\u001a\u00020\u0011J\n\u0010 \u001a\u0004\u0018\u00010!H\u0002J\u0008\u0010\"\u001a\u00020\u0011H\u0016J\u0006\u0010#\u001a\u00020\u0011J\u0006\u0010$\u001a\u00020\u0011J\u0008\u0010%\u001a\u00020\u0011H\u0002J\u000e\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0011J\u0008\u0010)\u001a\u00020\'H\u0016J\u0008\u0010*\u001a\u00020\u0011H\u0002J\u001a\u0010+\u001a\u00020\'2\u0006\u0010,\u001a\u00020\u00112\u0008\u0008\u0002\u0010-\u001a\u00020\u0011H\u0017J\u001a\u0010.\u001a\u00020\'2\u0008\u0010/\u001a\u0004\u0018\u00010\u000b2\u0008\u00100\u001a\u0004\u0018\u00010\u000bJ\u0008\u00101\u001a\u00020\'H\u0016J\u000e\u00102\u001a\u00020\'2\u0006\u00103\u001a\u00020\u0019J\u0008\u00104\u001a\u00020\u0011H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;)V",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "mBrushFacade",
        "mDocPath",
        "",
        "getMDocPath",
        "()Ljava/lang/String;",
        "setMDocPath",
        "(Ljava/lang/String;)V",
        "mIsOnSavingProcess",
        "",
        "getMIsOnSavingProcess",
        "()Z",
        "setMIsOnSavingProcess",
        "(Z)V",
        "mJob",
        "Lkotlinx/coroutines/CompletableJob;",
        "mOnSaveFileCallback",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;",
        "mSyncThread",
        "Ljava/lang/Thread;",
        "mSynchronize",
        "",
        "mThumbPath",
        "doInBackground",
        "getDrawnRect",
        "Landroid/graphics/Rect;",
        "isOnSaving",
        "isOnSyncSaving",
        "joinSave",
        "makeThumbnail",
        "onPostExecute",
        "",
        "result",
        "quitSave",
        "save",
        "saveTaskExecutor",
        "isAsync",
        "withThread",
        "setFilePath",
        "docPath",
        "thumbPath",
        "setPaintDocForegroundImage",
        "setSaveFileCallback",
        "saveFileCallback",
        "updateSavePath",
        "Companion",
        "OnSaveFileCallback",
        "SyncSaveThread",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$Companion;
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

.field private mDocPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsOnSavingProcess:Z

.field private mJob:Lkotlinx/coroutines/CompletableJob;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOnSaveFileCallback:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSyncThread:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mSynchronize:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mThumbPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$Companion;

    const-string v0, "BrushSaveExecutor"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mSynchronize:Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mJob:Lkotlinx/coroutines/CompletableJob;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    return-void
.end method

.method public static final synthetic access$getMSynchronize$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mSynchronize:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setMSyncThread$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mSyncThread:Ljava/lang/Thread;

    return-void
.end method

.method private final getDrawnRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getDrawnRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final makeThumbnail()Z
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->getDrawnRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->captureRect(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mThumbPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveTaskExecutor saveThumbnail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mThumbPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private final save()Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mDocPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->save(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveTaskExecutor savePaintingDoc. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mDocPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic saveTaskExecutor$default(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;ZZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->saveTaskExecutor(ZZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: saveTaskExecutor"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateSavePath()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mOnSaveFileCallback:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;->getNewThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mThumbPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mOnSaveFileCallback:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;->getNewDocPath()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mDocPath:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final doInBackground()Z
    .locals 6

    const-string v0, "saveTaskExecutor end."

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    const-string v3, "saveTaskExecutor start."

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->setPaintDocForegroundImage()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->updateSavePath()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->makeThumbnail()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->save()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save exception. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    sget-object v2, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mJob:Lkotlinx/coroutines/CompletableJob;

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getMDocPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mDocPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getMIsOnSavingProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    return v0
.end method

.method public isOnSaving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    return v0
.end method

.method public final isOnSyncSaving()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->isOnSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final joinSave()Z
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    const-string v2, "join save: not saving"

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mSyncThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    const-string v1, "join save: not sync saving"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    const-string v2, "join save: not alive sync saving"

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    const-string v2, "joining save"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mSyncThread:Ljava/lang/Thread;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "join : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    return v1
.end method

.method public final onPostExecute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mOnSaveFileCallback:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;->onSaveFinished(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized quitSave()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mJob:Lkotlinx/coroutines/CompletableJob;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mSynchronize:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mSyncThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mSyncThread:Ljava/lang/Thread;

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quit sync save : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final saveTaskExecutor(Z)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->saveTaskExecutor$default(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;ZZILjava/lang/Object;)V

    return-void
.end method

.method public saveTaskExecutor(ZZ)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveTaskExecutor, isAsync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " : withThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mJob:Lkotlinx/coroutines/CompletableJob;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$saveTaskExecutor$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$saveTaskExecutor$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mSyncThread:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$SyncSaveThread;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$SyncSaveThread;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mSyncThread:Ljava/lang/Thread;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.support.senl.addons.brush.model.canvas.BrushSaveExecutor.SyncSaveThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$SyncSaveThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    move-object p2, p1

    check-cast p2, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$SyncSaveThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->run()V

    :goto_0
    return-void
.end method

.method public final setFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mDocPath:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mThumbPath:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final setMDocPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mDocPath:Ljava/lang/String;

    return-void
.end method

.method public final setMIsOnSavingProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mIsOnSavingProcess:Z

    return-void
.end method

.method public setPaintDocForegroundImage()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->captureForegroundPage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set foreground image : failed - null bitmap"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mBrushFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getPaintingDoc()Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;->setForegroundImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set foreground image : failed - exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setSaveFileCallback(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "saveFileCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor;->mOnSaveFileCallback:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;

    return-void
.end method
