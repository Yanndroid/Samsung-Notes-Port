.class Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getVibrateEnabled(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Lcom/samsung/android/sdk/smp/SmpCallback$Success;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/smp/SmpCallback$Success;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$14;->val$callback:Lcom/samsung/android/sdk/smp/SmpCallback$Success;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$14;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$14;->val$callback:Lcom/samsung/android/sdk/smp/SmpCallback$Success;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$14;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getVibrateEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/smp/SmpCallback$Success;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
