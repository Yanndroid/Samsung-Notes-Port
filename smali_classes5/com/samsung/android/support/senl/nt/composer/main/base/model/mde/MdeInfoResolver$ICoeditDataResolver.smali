.class interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ICoeditDataResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICoeditDataResolver"
.end annotation


# virtual methods
.method public abstract deleteCoeditNoteDataAndDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteSpace(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getCurrentUserOwnerId()Ljava/lang/String;
.end method

.method public abstract getLeaderId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMemberListLiveData(Landroid/content/Context;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSpaceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isStandAlone(Ljava/lang/String;)Z
.end method

.method public abstract leave(Ljava/lang/String;Ljava/lang/String;)V
.end method
