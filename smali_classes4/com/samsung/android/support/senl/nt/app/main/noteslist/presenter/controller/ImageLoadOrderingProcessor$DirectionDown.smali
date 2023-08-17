.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollDirection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DirectionDown"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DirectionDown"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "DirectionDown"

    return-object v0
.end method

.method public updateList()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->setCurrentLine(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->setCurrentIndex(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;->getNoteSpanCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->setNoteSpan(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->setTotalCount(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$DirectionDown;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$UpdateRunnable;->run()V

    return-void
.end method
