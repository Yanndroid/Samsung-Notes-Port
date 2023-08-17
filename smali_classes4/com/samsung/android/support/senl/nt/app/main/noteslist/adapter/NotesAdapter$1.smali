.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/ImageLoadOrderingProcessor$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHolderCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNoteSpanCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getNotesSpan()I

    move-result v0

    return v0
.end method

.method public getSDocData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayData(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->isScrolling()Z

    move-result v0

    return v0
.end method
