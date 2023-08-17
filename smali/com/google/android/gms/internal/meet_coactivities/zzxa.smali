.class public final Lcom/google/android/gms/internal/meet_coactivities/zzxa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

.field private final zze:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

.field private final zzf:Z

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzwy;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzwx;Lcom/google/android/gms/internal/meet_coactivities/zzwx;Ljava/lang/Object;ZZZLcom/google/android/gms/internal/meet_coactivities/zzwz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 p6, 0x2

    invoke-direct {p5, p6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzg:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const-string p5, "type"

    invoke-static {p1, p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    const-string p1, "fullMethodName"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzb:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 p5, 0x2f

    invoke-virtual {p1, p5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 p5, -0x1

    if-ne p1, p5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    invoke-virtual {p2, p5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzc:Ljava/lang/String;

    const-string p1, "requestMarshaller"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    const-string p1, "responseMarshaller"

    invoke-static {p4, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzf:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zzwx;Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    new-instance p0, Lcom/google/android/gms/internal/meet_coactivities/zzww;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzww;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzwv;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    return-object p0
.end method

.method public static zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "fullServiceName"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzb:Ljava/lang/String;

    const-string v2, "fullMethodName"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "idempotent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "safe"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzf:Z

    const-string v2, "sampledToLocalTracing"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    const-string v2, "requestMarshaller"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    const-string v2, "responseMarshaller"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "schemaDescriptor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzwy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    return-object v0
.end method

.method public final zzc(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwx;->zza(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwx;->zzb(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzc:Ljava/lang/String;

    return-object v0
.end method
