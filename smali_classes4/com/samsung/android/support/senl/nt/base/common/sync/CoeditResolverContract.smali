.class public interface abstract Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;,
        Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback;
    }
.end annotation


# static fields
.field public static final READ_AUTHORITY:Ljava/lang/String; = "R"

.field public static final WRITE_AUTHORITY:Ljava/lang/String; = "W"


# virtual methods
.method public abstract getCoeditMemberManageIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
.end method

.method public abstract getCoeditNoteUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;
.end method

.method public abstract getCurrentUserOwnerId()Ljava/lang/String;
.end method

.method public abstract getLeaderId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMemberList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMemberList(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;>;)Z"
        }
    .end annotation
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

.method public abstract isStandaloneSpace(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract requestConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
.end method

.method public abstract requestDeleteCoeditNote(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestDeleteCoeditSpace(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestDisConnectSessionAsync(Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
.end method

.method public abstract requestLeaveCoeditSpace(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateWriterName(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
