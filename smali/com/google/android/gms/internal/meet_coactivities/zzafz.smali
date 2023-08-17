.class final Lcom/google/android/gms/internal/meet_coactivities/zzafz;
.super Lcom/google/android/gms/internal/meet_coactivities/zzvg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvg;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzvf;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Resolution is pending"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
