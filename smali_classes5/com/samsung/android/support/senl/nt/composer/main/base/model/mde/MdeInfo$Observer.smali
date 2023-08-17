.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onCoeditMemberListChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCreatorNameChanged(Ljava/lang/String;)V
.end method

.method public abstract onLeaderChanged()V
.end method

.method public abstract onPermissionChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;)V
.end method
