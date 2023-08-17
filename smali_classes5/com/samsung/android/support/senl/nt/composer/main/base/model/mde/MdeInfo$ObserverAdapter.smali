.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$ObserverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ObserverAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoeditMemberListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCreatorNameChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLeaderChanged()V
    .locals 0

    return-void
.end method

.method public onPermissionChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;)V
    .locals 0

    return-void
.end method
