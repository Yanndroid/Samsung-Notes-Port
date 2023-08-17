.class public Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler$a;->b:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;

    iput p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler$a;->b:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;->a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler$a;->a:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->b(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;I)V

    :cond_0
    return-void
.end method
