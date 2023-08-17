.class public final Lcom/google/android/gms/drive/zzn;
.super Lcom/google/android/gms/drive/ExecutionOptions;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zzat:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZIZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/drive/ExecutionOptions;-><init>(Ljava/lang/String;ZI)V

    iput-boolean p4, p0, Lcom/google/android/gms/drive/zzn;->zzat:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZIZLcom/google/android/gms/drive/zzo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/drive/zzn;-><init>(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzn;
    .locals 2
    .param p0    # Lcom/google/android/gms/drive/ExecutionOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/drive/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzp;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzm()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/drive/zzn;

    return-object p0
.end method


# virtual methods
.method public final zzp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/zzn;->zzat:Z

    return v0
.end method
