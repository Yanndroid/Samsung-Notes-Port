.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzdq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic zza:Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/UnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdq;->zza:Ljava/util/function/UnaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdq;->zza:Ljava/util/function/UnaryOperator;

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzx()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-interface {v0, p1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    return-object p1
.end method
