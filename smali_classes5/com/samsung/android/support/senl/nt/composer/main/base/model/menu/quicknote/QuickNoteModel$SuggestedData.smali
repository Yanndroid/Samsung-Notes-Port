.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestedData"
.end annotation


# instance fields
.field public mExcludedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mResult:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;

.field public mSuggestionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->mResult:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;->getSuggestionInfoList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->mSuggestionInfoList:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->mExcludedIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addExcludedIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->mExcludedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getExcludedIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->mExcludedIds:Ljava/util/Set;

    return-object v0
.end method

.method public getResult()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->mResult:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;

    return-object v0
.end method

.method public getSuggestionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->mSuggestionInfoList:Ljava/util/List;

    return-object v0
.end method
