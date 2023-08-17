.class Lcom/samsung/android/sdk/smp/push/FcmInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/push/FcmInterface;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$pushHelper:Lcom/samsung/android/sdk/smp/push/PushHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/smp/push/PushHelper;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$1;->val$pushHelper:Lcom/samsung/android/sdk/smp/push/PushHelper;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/push/FcmInterface$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "fcm"

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$1;->val$pushHelper:Lcom/samsung/android/sdk/smp/push/PushHelper;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$1;->val$context:Landroid/content/Context;

    const-string v2, "SMP_0003"

    const-string v3, "FCM error. FCM token is empty"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/smp/push/PushHelper;->handlePushRegistrationFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$1;->val$pushHelper:Lcom/samsung/android/sdk/smp/push/PushHelper;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2, v1, p1}, Lcom/samsung/android/sdk/smp/push/PushHelper;->handlePushRegistrationSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
