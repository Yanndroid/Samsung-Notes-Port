.class Lcom/samsung/android/sdk/smp/push/FcmInterface$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/push/FcmInterface;->updatePushTokenIfChanged(Landroid/content/Context;)V
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

.field public final synthetic val$currentToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$3;->val$currentToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/push/FcmInterface$3;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$3;->val$currentToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$3;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/smp/push/FcmInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fcm token is changed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setPushToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/push/FcmInterface$3;->val$context:Landroid/content/Context;

    const-string v1, "fcm"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/smp/common/util/BroadcastUtil;->broadcastTokenChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
