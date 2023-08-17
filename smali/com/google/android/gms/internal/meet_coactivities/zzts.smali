.class public final Lcom/google/android/gms/internal/meet_coactivities/zzts;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zztn;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zztp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzts;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zztj;Ljava/util/List;)Lcom/google/android/gms/internal/meet_coactivities/zztj;
    .locals 3

    const-string v0, "channel"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzto;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zztr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztr;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zztj;Lcom/google/android/gms/internal/meet_coactivities/zzto;Lcom/google/android/gms/internal/meet_coactivities/zztq;)V

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method
