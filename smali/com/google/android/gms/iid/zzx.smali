.class final synthetic Lcom/google/android/gms/iid/zzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcm:Lcom/google/android/gms/iid/zzt;

.field private final zzcn:Lcom/google/android/gms/iid/zzz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/iid/zzt;Lcom/google/android/gms/iid/zzz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/iid/zzx;->zzcm:Lcom/google/android/gms/iid/zzt;

    iput-object p2, p0, Lcom/google/android/gms/iid/zzx;->zzcn:Lcom/google/android/gms/iid/zzz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/iid/zzx;->zzcm:Lcom/google/android/gms/iid/zzt;

    iget-object v1, p0, Lcom/google/android/gms/iid/zzx;->zzcn:Lcom/google/android/gms/iid/zzz;

    iget v1, v1, Lcom/google/android/gms/iid/zzz;->zzcp:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzt;->zzg(I)V

    return-void
.end method
