.class public final Lcom/google/android/gms/drive/zzp;
.super Lcom/google/android/gms/drive/ExecutionOptions$Builder;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# instance fields
.field private zzat:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/zzp;->zzat:Z

    return-void
.end method


# virtual methods
.method public final synthetic build()Lcom/google/android/gms/drive/ExecutionOptions;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzo()V

    new-instance v6, Lcom/google/android/gms/drive/zzn;

    iget-object v1, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzaq:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzar:Z

    iget v3, p0, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzas:I

    iget-boolean v4, p0, Lcom/google/android/gms/drive/zzp;->zzat:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/zzn;-><init>(Ljava/lang/String;ZIZLcom/google/android/gms/drive/zzo;)V

    return-object v6
.end method

.method public final synthetic setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public final synthetic setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public final synthetic setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method
