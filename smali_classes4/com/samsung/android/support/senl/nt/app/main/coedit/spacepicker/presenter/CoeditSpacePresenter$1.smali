.class Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private equalsSpace(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getMemberCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getMemberCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getUnReadCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getUnReadCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getThumbnailIds()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getThumbnailIds()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initCoeditSpaceDisplayData()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->c(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;Ljava/util/List;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;->initCoeditSpaceDisplayData(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->isEquals(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCoeditSpaceDisplayData# new displayData and old displayData are same, commonDisplayList size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditSpacePresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    return v0
.end method

.method private isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    iget v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    iget v2, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/16 v2, 0x100

    if-ne v1, v2, :cond_2

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->space:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->space:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->equalsSpace(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;)Z

    move-result p1

    return p1

    :cond_2
    const/16 v2, 0x40

    if-ne v1, v2, :cond_3

    iget-wide v1, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    iget-wide p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    cmp-long p1, v1, p1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method private isEquals(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS9] CoeditLiveDataObserver# onChanged, size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditSpacePresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;->initCoeditMap(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->initCoeditSpaceDisplayData()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;

    const-string v0, "Space onChanged"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->d(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
