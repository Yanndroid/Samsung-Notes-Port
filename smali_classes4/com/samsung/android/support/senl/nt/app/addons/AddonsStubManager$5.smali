.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil$OnDeviceIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$IStubPresenter;)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$5;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$5;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->isAddonExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$5;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->checkAddonsUpdate()V

    :cond_0
    return-void
.end method
