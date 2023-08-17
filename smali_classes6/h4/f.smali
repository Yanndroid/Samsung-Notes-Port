.class public final synthetic Lh4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/f;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    iput-object p2, p0, Lh4/f;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lh4/f;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    iget-object v1, p0, Lh4/f;->b:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->c(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;Ljava/util/Collection;)I

    move-result p1

    return p1
.end method
