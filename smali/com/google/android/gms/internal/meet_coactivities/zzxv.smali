.class final Lcom/google/android/gms/internal/meet_coactivities/zzxv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzxw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzxw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzxw;->zza(Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxw;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzxw;->zza(Ljava/lang/Object;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
