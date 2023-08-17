.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->installAddons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$6;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    const-string v0, "AddonsStubManager"

    const-string v1, "requestGUID onFail# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$6;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->d(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestGUID onSuccess# guid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AddonsStubManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$6;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->a(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->callGalaxyAppsClientAppUsingDeepLink(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$6;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;Z)V

    return-void
.end method
