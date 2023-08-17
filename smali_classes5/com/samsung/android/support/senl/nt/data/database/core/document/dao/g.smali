.class public final synthetic Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/g;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/g;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->deleteByUuid(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method
