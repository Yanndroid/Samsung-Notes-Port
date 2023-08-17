.class public final synthetic Lh4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

.field public final synthetic b:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/a;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    iput-object p2, p0, Lh4/a;->b:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    iput-object p3, p0, Lh4/a;->c:Ljava/util/List;

    iput-object p4, p0, Lh4/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lh4/a;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    iget-object v1, p0, Lh4/a;->b:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    iget-object v2, p0, Lh4/a;->c:Ljava/util/List;

    iget-object v3, p0, Lh4/a;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;->a(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
