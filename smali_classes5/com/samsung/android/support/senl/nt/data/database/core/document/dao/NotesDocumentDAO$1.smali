.class Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getAllDocumentCountEntry_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Ljava/lang/String;Z)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
        ">;",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

.field public final synthetic val$includeConvertedNote:Z

.field public final synthetic val$notesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

.field public final synthetic val$notesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;->val$notesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;->val$notesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;->val$includeConvertedNote:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;->val$notesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;->val$notesConvertedDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO$1;->val$includeConvertedNote:Z

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->d(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
