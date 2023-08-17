.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzeq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzeq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzeq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    move-result-object p1

    return-object p1
.end method
