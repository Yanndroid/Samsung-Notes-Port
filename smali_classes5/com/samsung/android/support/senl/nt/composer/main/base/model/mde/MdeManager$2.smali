.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->setMemberListLiveDataObserver(Landroid/content/Context;)V
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
        "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$2;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->getLeaderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMemberListLiveDataObserver# onChanged - leaderId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->setLeaderId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->setCoeditMemberList(Ljava/util/List;)V

    return-void
.end method
