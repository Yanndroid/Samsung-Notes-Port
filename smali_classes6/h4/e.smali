.class public final synthetic Lh4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/e;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    iput-object p2, p0, Lh4/e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lh4/e;->a:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    iget-object v1, p0, Lh4/e;->b:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->d(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
