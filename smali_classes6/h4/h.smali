.class public final synthetic Lh4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/h;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh4/h;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;->getFoldersInRecycleBin(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
