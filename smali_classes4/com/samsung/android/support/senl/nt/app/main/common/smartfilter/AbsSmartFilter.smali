.class public abstract Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mHoldingBadge:Z

.field private mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;->mHoldingBadge:Z

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getHoldingBadge()Z
.end method

.method public abstract getID()J
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;->mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;->mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/AbsSmartFilter;->mMainListRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    return-object v0
.end method

.method public abstract getNotesUUIDPreference()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPredefine()I
.end method

.method public abstract getSelection()Ljava/lang/String;
.end method

.method public abstract getSortOrder()Ljava/lang/String;
.end method

.method public abstract getTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract setHoldingBadge(Z)V
.end method

.method public abstract setNotesUUIDPreference(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
