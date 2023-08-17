.class public Lr0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->syncNotesContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;

    move-result-object p1

    iput-object p1, p0, Lr0/d;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lr0/d;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;->updateIsDeleted(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lr0/d;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;->updateIsDirtyAndIsDeleted(Ljava/lang/String;II)V

    return-void
.end method
