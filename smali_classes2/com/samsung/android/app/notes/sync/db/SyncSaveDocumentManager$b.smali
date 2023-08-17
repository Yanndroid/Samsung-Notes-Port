.class public Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->p(Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic c:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;[ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$b;->c:Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$b;->a:[I

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceConstants$DocumentServiceAlreadyClosedException;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$b;->a:[I

    const/4 p2, 0x0

    const/4 v0, 0x1

    aput v0, p1, p2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$b;->a:[I

    const/4 v0, 0x0

    aput v0, p1, v0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
