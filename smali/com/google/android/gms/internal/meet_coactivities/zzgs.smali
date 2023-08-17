.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzgy;

.field public final synthetic zzb:Landroid/content/Context;

.field public final synthetic zzc:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgy;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgs;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgy;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgs;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgs;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgs;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgs;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgs;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgy;->zzc(Landroid/content/Context;Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
