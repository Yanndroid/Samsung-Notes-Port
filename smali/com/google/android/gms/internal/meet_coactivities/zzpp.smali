.class public Lcom/google/android/gms/internal/meet_coactivities/zzpp;
.super Lcom/google/android/gms/internal/meet_coactivities/zznt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/meet_coactivities/zzpu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/meet_coactivities/zzpp<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/meet_coactivities/zznt<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zznt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzz()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzrl;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzrl;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzrl;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/meet_coactivities/zzrp;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzrp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzO()Lcom/google/android/gms/internal/meet_coactivities/zzrc;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzP()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/internal/meet_coactivities/zznt;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/meet_coactivities/zzpp;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzk()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)Lcom/google/android/gms/internal/meet_coactivities/zzpp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzo()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzk()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzP()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzsf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzsf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)V

    throw v1
.end method

.method public zzk()Lcom/google/android/gms/internal/meet_coactivities/zzpu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzL()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    return-object v0
.end method

.method public bridge synthetic zzl()Lcom/google/android/gms/internal/meet_coactivities/zzrc;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzk()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v0

    return-object v0
.end method

.method public final zzn()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzo()V

    :cond_0
    return-void
.end method

.method public zzo()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzz()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    return-void
.end method
