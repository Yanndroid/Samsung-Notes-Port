.class public final Lcom/google/android/gms/internal/meet_coactivities/zzmk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzmo;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "com.google.common.flogger.util.StackWalkerStackGetter"

    const-string v1, "com.google.common.flogger.util.JavaLangAccessStackGetter"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzmk;->zza:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/meet_coactivities/zzmo;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzmo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzmp;

    invoke-direct {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzmp;-><init>()V

    :goto_2
    sput-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzmk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzmo;

    return-void
.end method

.method public static zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .locals 1

    const-string p1, "target"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzmk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzmo;

    const/4 v0, 0x2

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzmo;->zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;
    .locals 1

    if-gtz p1, :cond_1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid maximum depth: 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzmk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzmo;

    const/4 v0, 0x2

    invoke-interface {p2, p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzmo;->zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
