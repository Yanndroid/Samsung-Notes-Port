.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzdl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic zza:Lcom/google/android/livesharing/CoDoingState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/livesharing/CoDoingState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdl;->zza:Lcom/google/android/livesharing/CoDoingState;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdl;->zza:Lcom/google/android/livesharing/CoDoingState;

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznd;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhw;->zzd(Lcom/google/android/livesharing/CoDoingState;)Lcom/google/android/gms/internal/meet_coactivities/zznd;

    move-result-object p1

    return-object p1
.end method
