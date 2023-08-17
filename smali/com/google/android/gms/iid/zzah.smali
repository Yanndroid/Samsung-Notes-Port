.class final Lcom/google/android/gms/iid/zzah;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final synthetic zzdc:Lcom/google/android/gms/iid/zzaf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/iid/zzaf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/iid/zzah;->zzdc:Lcom/google/android/gms/iid/zzaf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "InstanceID"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Received GSF callback via dynamic receiver"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/iid/zzah;->zzdc:Lcom/google/android/gms/iid/zzaf;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/iid/zzaf;->zzh(Landroid/content/Intent;)V

    return-void
.end method
