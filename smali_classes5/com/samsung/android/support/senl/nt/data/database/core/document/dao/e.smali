.class public final synthetic Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/e;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/e;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;->a(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
