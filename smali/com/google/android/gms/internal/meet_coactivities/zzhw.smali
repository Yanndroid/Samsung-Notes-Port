.class public final Lcom/google/android/gms/internal/meet_coactivities/zzhw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzia;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzhv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/meet_coactivities/zzhw;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzhu;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzhw;

    move-result-object v0

    return-object v0
.end method

.method public static final zzd(Lcom/google/android/livesharing/CoDoingState;)Lcom/google/android/gms/internal/meet_coactivities/zznd;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznd;->zza()Lcom/google/android/gms/internal/meet_coactivities/zznc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/livesharing/CoDoingState;->state()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzm([B)Lcom/google/android/gms/internal/meet_coactivities/zzon;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zznc;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzon;)Lcom/google/android/gms/internal/meet_coactivities/zznc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zznd;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznd;

    invoke-static {}, Lcom/google/android/livesharing/CoDoingState;->builder()Lcom/google/android/livesharing/CoDoingState$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznd;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzr()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/livesharing/CoDoingState$Builder;->setState([B)Lcom/google/android/livesharing/CoDoingState$Builder;

    invoke-virtual {v0}, Lcom/google/android/livesharing/CoDoingState$Builder;->build()Lcom/google/android/livesharing/CoDoingState;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/livesharing/CoDoingState;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzhw;->zzd(Lcom/google/android/livesharing/CoDoingState;)Lcom/google/android/gms/internal/meet_coactivities/zznd;

    move-result-object p1

    return-object p1
.end method
