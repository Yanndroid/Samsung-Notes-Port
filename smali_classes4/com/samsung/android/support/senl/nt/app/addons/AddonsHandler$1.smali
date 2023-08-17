.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;
.super Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
        "Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isNationalDisasterNet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/NationalDisasterNetStubManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->a(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/NationalDisasterNetStubManager;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->a(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$IStubPresenter;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->build()Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;

    move-result-object v0

    return-object v0
.end method
