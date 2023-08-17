.class public final synthetic Lh4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

.field public final synthetic b:Z

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/b;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    iput-boolean p2, p0, Lh4/b;->b:Z

    iput-wide p3, p0, Lh4/b;->c:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lh4/b;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    iget-boolean v1, p0, Lh4/b;->b:Z

    iget-wide v2, p0, Lh4/b;->c:J

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->a(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;ZJLjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
