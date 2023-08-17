.class public final Lcom/google/android/gms/drive/query/internal/zzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/drive/query/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/drive/query/internal/zzj<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private zzmm:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/drive/query/Filter;)Z
    .locals 1
    .param p0    # Lcom/google/android/gms/drive/query/Filter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzk;-><init>()V

    invoke-interface {p0, v0}, Lcom/google/android/gms/drive/query/Filter;->zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/drive/metadata/zzb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zzbj()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final synthetic zzbk()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zze(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic zzi(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzmm:Ljava/lang/Boolean;

    return-object p1
.end method
