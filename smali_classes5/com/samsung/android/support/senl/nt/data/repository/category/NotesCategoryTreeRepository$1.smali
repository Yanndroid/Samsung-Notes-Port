.class Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->makeAllDocumentCategoryTree_LiveData(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
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
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
        ">;",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository$1;->this$0:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository$1;->apply(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object p1

    return-object p1
.end method
