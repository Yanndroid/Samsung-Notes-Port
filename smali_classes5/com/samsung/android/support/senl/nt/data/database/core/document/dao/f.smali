.class public final synthetic Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/f;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/f;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/f;->b:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;->b(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
