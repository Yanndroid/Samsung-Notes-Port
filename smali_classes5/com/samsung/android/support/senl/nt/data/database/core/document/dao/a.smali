.class public final synthetic Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/a;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/a;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->getCategoryUuidList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
