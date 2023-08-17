.class public Lcom/google/android/livesharing/LiveSharingException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/livesharing/LiveSharingException$Code;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/livesharing/LiveSharingException$Code;

.field private final zzb:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingException$Code;Ljava/util/Optional;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/android/livesharing/LiveSharingException$Code;->zza:Lcom/google/android/livesharing/LiveSharingException$Code;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/livesharing/LiveSharingException$Code;->zza:Lcom/google/android/livesharing/LiveSharingException$Code;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "%s [%s]"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/livesharing/LiveSharingException;->zza:Lcom/google/android/livesharing/LiveSharingException$Code;

    iput-object p3, p0, Lcom/google/android/livesharing/LiveSharingException;->zzb:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/livesharing/LiveSharingException;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/livesharing/LiveSharingException;

    iget-object v0, p0, Lcom/google/android/livesharing/LiveSharingException;->zza:Lcom/google/android/livesharing/LiveSharingException$Code;

    iget-object v2, p1, Lcom/google/android/livesharing/LiveSharingException;->zza:Lcom/google/android/livesharing/LiveSharingException$Code;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v1
.end method

.method public getCode()Lcom/google/android/livesharing/LiveSharingException$Code;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/livesharing/LiveSharingException;->zza:Lcom/google/android/livesharing/LiveSharingException$Code;

    return-object v0
.end method

.method public getMetadata()Ljava/util/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/android/livesharing/LiveSharingExceptionMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/livesharing/LiveSharingException;->zzb:Ljava/util/Optional;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/livesharing/LiveSharingException;->zza:Lcom/google/android/livesharing/LiveSharingException$Code;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
