.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionUp;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollDirection;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;
    }
.end annotation


# static fields
.field private static final HOLDER_SENSITIVE:I = 0x64

.field private static final LINE_SENSITIVE:I = 0x2

.field private static final LONG_WAIT_DURATION:I = 0x1f4

.field private static final SCROLL_SENSITIVE:I = 0x50

.field private static final SHORT_WAIT_DURATION:I = 0x3c

.field private static final SPAN_SENSITIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImageLoadOrderingProcessor"

.field private static final WAIT_DURATION:I = 0x96


# instance fields
.field private mDuration:I

.field private final mHandler:Landroid/os/Handler;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollDirection:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollDirection;

.field private final mScrollListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;

.field private final mSkippedUuidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateDirectionDownRunnable:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

.field private final mUpdateDirectionUpRunnable:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

.field private final mUpdateListRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mSkippedUuidMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mDuration:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mUpdateListRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mUpdateDirectionDownRunnable:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mUpdateDirectionUpRunnable:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mScrollListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->updateDirection(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollDirection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mScrollDirection:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollDirection;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mScrollListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mUpdateDirectionDownRunnable:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mUpdateDirectionUpRunnable:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mDuration:I

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->setThumbnail(Landroid/view/View;)V

    return-void
.end method

.method private isNeedsLongWaiting()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mScrollListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;->getHolderCount()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private setThumbnail(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mScrollListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;->getSDocData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mSkippedUuidMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mSkippedUuidMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ImageLoadOrderingProcessor"

    const-string v2, "setThumbnail"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->decorateThumbnail(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateDirection(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionUp;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionUp;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/b;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/a;)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mScrollDirection:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollDirection;

    :goto_1
    return-void
.end method


# virtual methods
.method public loadOrderingProcessor()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->loadOrderingProcessorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getViewMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->isGridViewMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mUpdateListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mUpdateListRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public loadOrderingProcessorEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onListScrolled(I)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getViewMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->isGridViewMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    mul-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->isNeedsLongWaiting()Z

    move-result v1

    const/16 v2, 0x3c

    const/4 v3, 0x2

    const/16 v4, 0x50

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mScrollListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;->getNoteSpanCount()I

    move-result v1

    const/16 v5, 0x1f4

    if-le v1, v3, :cond_2

    iput v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mDuration:I

    goto :goto_2

    :cond_2
    if-ge v0, v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_1

    :cond_4
    if-ge v0, v4, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x96

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mDuration:I

    :goto_2
    if-nez p1, :cond_6

    return-void

    :cond_6
    if-lez p1, :cond_7

    const/4 v3, 0x3

    :cond_7
    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->updateDirection(I)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged# newState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoadOrderingProcessor"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getViewMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->isGridViewMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mUpdateListRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mUpdateListRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public skippedDecorateThumbnail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->mSkippedUuidMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
