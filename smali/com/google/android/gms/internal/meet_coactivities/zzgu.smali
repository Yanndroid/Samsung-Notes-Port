.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzgu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzgy;

.field public final synthetic zzb:Landroid/content/Context;

.field public final synthetic zzc:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgy;Landroid/content/Context;Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgy;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgu;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgu;->zzc:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgu;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgu;->zzc:Ljava/util/Optional;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgy;->zzb(Landroid/content/Context;Ljava/util/Optional;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
