.class Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->setNotifColor(Landroid/content/Context;ILcom/samsung/android/sdk/smp/SmpCallback$Success;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$argb:I

.field public final synthetic val$callback:Lcom/samsung/android/sdk/smp/SmpCallback$Success;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$15;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$15;->val$argb:I

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$15;->val$callback:Lcom/samsung/android/sdk/smp/SmpCallback$Success;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$15;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$15;->val$argb:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->setNotifColor(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$15;->val$callback:Lcom/samsung/android/sdk/smp/SmpCallback$Success;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/smp/SmpCallback$Success;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
